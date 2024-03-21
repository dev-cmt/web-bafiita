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

class PastCommitteeController extends Controller
{

    public function index() {
        $data = PastCommittee::whereIn('status', [0, 1])->get();

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
        $data->is_delete = 1;
        $data->save();
        
        // Return message
        return response()->json($data);
    }

    /**-----------------------------------------------------------------------------
     * MEMBER INDEX
     * -----------------------------------------------------------------------------
     */
    public function memberIndex($id)
    {
        $data = PastCommitteeDetails::whereIn('status', [0, 1])->get();

        return view('layouts.pages.past-committee.member-index', compact('data', 'id'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function storeMember(Request $request)
    {
        $validated=$request -> validate([
            'title'=> 'required',
            'date'=> 'required',
        ]);

        if ($request->hasFile("cover")) {
            //get filename with extension
            $filenamewithextension = $request->file('cover')->getClientOriginalName();
            //get filename without extension
            $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);
            //get file extension
            $extension = $request->file('cover')->getClientOriginalExtension();
            //filename to store
            $filenametostore = $filename.'_'.time().'.'.$extension;
            //Upload File
            $request->file('cover')->move('public/images/gallery/', $filenametostore); //--Upload Location
            // $request->file('profile_image')->storeAs('public/gallery', $filenametostore);
            //Resize image here
            $thumbnailpath = public_path('images/gallery/'.$filenametostore); //--Get File Location
            // $thumbnailpath = public_path('storage/images/gallery/'.$filenametostore);
            $img = Image::make($thumbnailpath)->resize(1200, 850, function($constraint) {
                $constraint->aspectRatio();
            }); 
            $img->save($thumbnailpath);

            //---Data Save
            $post =new Gallery([
                "title" => $request->title,
                "description" => $request->description,
                "date" => $request->date,
                "cover" => $filenametostore,
                "drive_url" => $request->drive_url,
                "public" => $request->public,
                "status" => 1,
                "user_id" => Auth::user()->id,
            ]);
           $post->save();
        }

        if ($request->hasFile("images")) {
            $files = $request->file("images");
            foreach ($files as $file) {
                // Get filename with extension
                $filenamewithextension = $file->getClientOriginalName();
                // Get filename without extension
                $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);
                // Get file extension
                $extension = $file->getClientOriginalExtension();
                // Filename to store
                $filenametostore = $filename . '_' . time() . '.' . $extension;
                // Upload File
                $file->move('public/images/gallery/img/', $filenametostore); // Upload Location
                // Resize image here
                $thumbnailpath = public_path('images/gallery/img/' . $filenametostore); // Get File Location
                $img = Image::make($thumbnailpath)->resize(1200, 850, function ($constraint) {
                    $constraint->aspectRatio();
                });
                $img->save($thumbnailpath);
        
                // Save Data
                $galleryImage = new GalleryImages();
                $galleryImage->gallery_id = $post->id; // Assuming $post is defined and has the ID property set
                $galleryImage->image = $filenametostore; // Save the filename in the 'image' field of the GalleryImages model
                $galleryImage->save();
            }
        }

        $notification=array('messege'=>'Gallery save successfully!','alert-type'=>'success');
        return redirect()->route('gallery.index')->with($notification);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Gallery $gallery)
    {
        return view('layouts.pages.gallery.show')->with('posts', $gallery);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function editMember($id)
    {
       $posts=Gallery::findOrFail($id);
        return view('layouts.pages.gallery.edit')->with('posts',$posts);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id){
        $post=Gallery::findOrFail($id);

        if ($request->hasFile("cover")) {
            if (File::exists("public/images/gallery/".$post->cover)) {
                File::delete("public/images/gallery/".$post->cover);
            }
            //get filename with extension
            $filenamewithextension = $request->file('cover')->getClientOriginalName();
            //get filename without extension
            $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);
            //get file extension
            $extension = $request->file('cover')->getClientOriginalExtension();
            //filename to store
            $filenametostore = $filename.'_'.time().'.'.$extension;
            //Upload File
            $request->file('cover')->move('public/images/gallery/', $filenametostore); //--Upload Location
            // $request->file('profile_image')->storeAs('public/gallery', $filenametostore);
            //Resize image here
            $thumbnailpath = public_path('images/gallery/'.$filenametostore); //--Get File Location
            // $thumbnailpath = public_path('storage/images/gallery/'.$filenametostore);
            $img = Image::make($thumbnailpath)->resize(1200, 850, function($constraint) {
                $constraint->aspectRatio();
            }); 
            $img->save($thumbnailpath);

            //---Data Save
            $post->update([
                "title" =>$request->title,
                "description"=>$request->description,
                "date"=>$request->date,
                "cover"=> $filenametostore,
                "drive_url"=>$request->drive_url,
                "public"=>$request->public,
                "user_id"=>Auth::user()->id,
            ]);
        }


        if ($request->hasFile("images")) {
            $files = $request->file("images");
            foreach ($files as $file) {
                // Get filename with extension
                $filenamewithextension = $file->getClientOriginalName();
                // Get filename without extension
                $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);
                // Get file extension
                $extension = $file->getClientOriginalExtension();
                // Filename to store
                $filenametostore = $filename . '_' . time() . '.' . $extension;
                // Upload File
                $file->move('public/images/gallery/img/', $filenametostore); // Upload Location
                // Resize image here
                $thumbnailpath = public_path('images/gallery/img/' . $filenametostore); // Get File Location
                $img = Image::make($thumbnailpath)->resize(1200, 850, function ($constraint) {
                    $constraint->aspectRatio();
                });
                $img->save($thumbnailpath);
        
                // Save Data
                $galleryImage = new GalleryImages();
                $galleryImage->gallery_id = $post->id; // Assuming $post is defined and has the ID property set
                $galleryImage->image = $filenametostore; // Save the filename in the 'image' field of the GalleryImages model
                $galleryImage->save();
            }
        }

        $notification=array('messege'=>'Gallery update successfully!','alert-type'=>'success');
        return redirect()->route('gallery.index')->with($notification);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy($id){
        $post=Gallery::findOrFail($id);

        if (File::exists("public/images/gallery/".$post->cover)) {
            File::delete("public/images/gallery/".$post->cover);
        }
        $images=GalleryImages::where("gallery_id",$post->id)->get();
        foreach($images as $image){
            if (File::exists("public/images/gallery/img/".$image->image)) {
                File::delete("public/images/gallery/img/".$image->image);
            }
        }
        $post->delete();
        return back();
    }
}
