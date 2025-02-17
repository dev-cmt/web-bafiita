<?php

namespace App\Http\Controllers\Admin;


use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\Admin\PastCommittee;
use App\Models\Admin\PastCommitteeDetails;
use App\Models\User;
use Carbon\Carbon;

class PastCommitteeController extends Controller
{

    public function index() {
        $data = PastCommittee::orderBy('index', 'desc')->whereIn('status', [0, 1])->get();

        return view('layouts.pages.past-committee.index', compact('data'));
    }
    public function store(Request $request)
    {
        //----Validation Check 
        $validator = Validator::make($request->all(), [
            'title' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        //----Data Save
        if(isset($request->id)){
            $data = PastCommittee::findOrFail($request->id);
        }else{
            $data = new PastCommittee();
        }
        $data->title = $request->title;
        $data->duration = $request->duration;
        $data->description = $request->description;
        $data->status = $request->status;
        $data->index = $request->index ?? 0;
        $data->user_id = Auth::user()->id;
        $data->save();
        
        // Return message
        return response()->json($data);
    }
    public function edit(Request $request)
    {
        $data = PastCommittee::find($request->id);

        // Return message
        return response()->json($data);
    }
    public function delete(Request $request)
    {
        $data = PastCommittee::findOrFail($request->id);
        $data->delete();
        
        // Return message
        return response()->json($data);
    }

    /**-----------------------------------------------------------------------------
     * MEMBER INDEX
     * -----------------------------------------------------------------------------
     */
    public function pastMemberIndex($id)
    {
        $item = PastCommittee::find($id);
        $data = PastCommitteeDetails::orderBy('index')->get();
        return view('layouts.pages.past-committee.member-index', compact('data', 'item'));
    }

    public function pastMemberStore(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'image' => $request->id ? 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048' : 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);
        // Return validation errors if any
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        // Check if updating or creating
        $data = $request->id ? PastCommitteeDetails::find($request->id) : new PastCommitteeDetails();

        if (!$data) {
            return response()->json(['error' => 'Record not found'], 404);
        }
        if ($request->hasFile('image')) {
            // Generate unique filename
            $filename = pathinfo($request->file('image')->getClientOriginalName(), PATHINFO_FILENAME);
            $extension = $request->file('image')->getClientOriginalExtension();
            $filenametostore = $filename . '_' . time() . '.' . $extension;
    
            // Define the upload path
            $folderName = 'images/profile/past-committee'; // Folder name
            $destinationPath = public_path("{$folderName}");
    
            // Ensure the directory exists
            if (!File::exists($destinationPath)) {
                File::makeDirectory($destinationPath, 0777, true, true);
            }
    
            // Move the uploaded file
            $request->file('image')->move($destinationPath, $filenametostore);
    
            // Resize Image
            $thumbnailpath = public_path("{$folderName}/" . $filenametostore);
            $img = Image::make($thumbnailpath)->resize(1200, 850, function ($constraint) {
                $constraint->aspectRatio();
            });
            $img->save($thumbnailpath);
    
            // Delete old image if updating
            if ($request->id && $data->image_path) {
                $oldImage = public_path("{$folderName}/" . $data->image_path);
                if (File::exists($oldImage)) {
                    File::delete($oldImage);
                }
            }
    
            // Assign new image path (relative path including folder name)
            $data->image_path = "{$folderName}/" . $filenametostore; // Save the folder name along with the filename
        }
        // Assign form values
        $data->name = $request->name;
        $data->designation = $request->designation;
        $data->represent = $request->represent;
        $data->represent_url = $request->rep_url;
        $data->description = $request->description;
        $data->index = $request->index;
        $data->past_committee_id = $request->past_committee_id;
        $data->save();
        return response()->json($data);
    }
    public function pastMemberEdit(Request $request)
    {
       $data= PastCommitteeDetails::findOrFail($request->id);
       return response()->json($data);
    }
    public function pastMemberDelete(Request $request) {
        $data = PastCommitteeDetails::findOrFail($request->id);
        if (File::exists(public_path($data->image_path))) {
            File::delete(public_path($data->image_path));
        }
        $data->delete();
        return response()->json(['success' => true, 'message' => 'Member deleted successfully']);
    }

    public function renewSettingIndex()
    {
        $data = PastCommittee::orderBy('index', 'desc')->where('status', 1)->get();
        $members = User::where('status', 3)->where('is_admin', 0)->get();
        return view('layouts.pages.past-committee.renew-setting', compact('data', 'members'));
    }

    public function renewSettingStore(Request $request)
    {
        // Custom validation messages
        $validated = $request->validate([
            'past_committee_id' => 'required',
        ], [
            'past_committee_id.required' => 'The past committee field is required. If you reset current members to shift renew member.',
        ]);

        // Get all users with status 1 and is_admin 0
        $getUser = User::where('status', 1)->where('is_admin', 0)->get();

        foreach ($getUser as $key => $user) {
            // Update user status
            $user->status = 3;

            // Set the departure date to the first day of June in the current year
            $user->departure_date = Carbon::now()->startOfYear()->addMonths(5); // June 1st of the current year
            $user->save();

            // Ensure the past-committee directory exists
            $folderName = 'images/profile/past-committee';
            $destinationPath = public_path($folderName);

            // Check if the directory exists, if not, create it
            if (!File::exists($destinationPath)) {
                File::makeDirectory($destinationPath, 0777, true); // Create directory with proper permissions
            }

            // Define the old image and new image paths
            $oldImagePath = public_path('images/profile/' . $user->profile_photo_path);
            $newImagePath = $destinationPath . '/' . basename($user->profile_photo_path);

            // Check if the file exists and copy it
            if (File::exists($oldImagePath)) {
                // Copy the profile image to the new directory
                File::copy($oldImagePath, $newImagePath); // Use File::copy() to copy the file to the new path
            }

            // Create new PastCommitteeDetails entry
            $data = new PastCommitteeDetails();
            $data->name = $user->name;
            $data->designation = $user->infoPersonal->memebrDesignation;
            $data->represent = $user->infoCompany->companyName;
            $data->represent_url = '#';
            $data->image_path = $folderName . basename($user->profile_photo_path);
            $data->description = $user->description;
            $data->past_committee_id = $request->past_committee_id;
            $data->member_id = $user->id;
            $data->index = $key;
            $data->save();
        }

        // Redirect back with success message
        return back()->with('success', 'Current member has been reset successfully');
    }






    
}
