<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\Exceptions\PostTooLargeException;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\File;
use App\Models\Member\InfoPersonal;
use App\Models\Member\InfoAcademic;
use App\Models\Member\InfoCompany;
use App\Models\Member\InfoStudent;
use App\Models\Member\InfoDocument;
use App\Models\Member\InfoOther;
use App\Models\Master\MastQualification;
use App\Models\Master\MemberType;
use App\Models\Payment\PaymentDetails;
use App\Models\User;
use App\Helpers\Helper;
use App\Mail\MemberApproved;
use Illuminate\Support\Facades\Mail;
use ZipArchive;

class MemberController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($id)
    {
        $data = User::where('member_type_id', $id)->where('status', 1)->get();
        $memberType = MemberType::where('id', $id)->first()->name;
        return view('layouts.pages.member.index',compact('data', 'memberType'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $memberType = MemberType::where('is_delete', 0)->where('status', 1)->get();
        $qualification = MastQualification::where('is_delete', 0)->where('status', 1)->get();
        return view('frontend.pages.register_form', compact('memberType','qualification'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        DB::beginTransaction();
        try {
            //----Validation Check 
            $validator = Validator::make($request->all(), [
                'name' => 'required',
                'email' => 'required|unique:users,email|max:255',
                'password' => 'required|confirmed|min:8',
                'profile_photo_path' => 'required|mimes:jpg,png,jpeg,gif,svg|image',

                'trade_licence' => 'max:10240',
                'tin_certificate' => 'max:10240',
                'nid_photo_copy' => 'max:10240',
                'passport_photo' => 'max:10240',
                'edu_certificate' => 'required|max:10240',
                'experience_certificate' => 'max:10240',
                'stu_id_copy' => 'max:10240',
                'recoment_letter' => 'max:10240',
            ], [
                'profile_photo_path.required' => 'The Profile photo field is required.',
                'profile_photo_path.mimes' => 'The :attribute must be a valid image file.',
                'contact_number.required' => 'The Contact Number field is required.',
                'mast_qualification_id.required' => 'The Qualification field is required.',
                'trade_licence.max' => 'Trade licence must not be greater than 10MB.',
                'tin_certificate.max' => 'Tin certificate must not be greater than 10MB.',
                'nid_photo_copy.max' => 'NID photo must not be greater than 10MB.',
                'passport_photo.max' => 'Passport photo must not be greater than 10MB.',
                'edu_certificate.required' => 'The EDU. Certificate field is required.',
                'edu_certificate.max' => 'EDU. certificate must not be greater than 10MB.',
                'experience_certificate.max' => 'Experience certificate must not be greater than 10MB.',
                'stu_id_copy.max' => 'STU. id must not be greater than 10MB.',
                'recoment_letter.max' => 'Recoment letter must not be greater than 10MB.',
                
                'company_name.required_if' => 'The company name field is required',
                'designation.required_if' => 'The designation field is required',
                'student_institute.required_if' => 'The student institute field is required',
            ]);
            
            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }
            

            /*__________________/ USER CREATE \_________________*/
            if($request->hasFile('profile_photo_path')) {
                //get filename with extension
                $filenamewithextension = $request->file('profile_photo_path')->getClientOriginalName();
                //get filename without extension
                $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);
        
                //get file extension
                $extension = $request->file('profile_photo_path')->getClientOriginalExtension();
                //filename to store
                $filenametostore = $filename.'_'.time().'.'.$extension;
        
                //Upload File
                $request->file('profile_photo_path')->move('public/images/profile/', $filenametostore); //--Upload Location
                // $request->file('profile_image')->storeAs('public/profile_images', $filenametostore);
        
                //Resize image here
                $thumbnailpath = public_path('images/profile/'.$filenametostore); //--Get File Location
                // $thumbnailpath = public_path('storage/images/profile/'.$filenametostore);
                
                $data = Image::make($thumbnailpath)->resize(1200, 850, function($constraint) {
                    $constraint->aspectRatio();
                }); 
                $data->save($thumbnailpath);


                /*_____________________ MEMBER ID GENERATE ___________________*/
                $user = User::create([
                    'name' => $request->name,
                    'email' => $request->email,
                    'password' => bcrypt($request->password),
                    'member_code' => $memberCode,
                    'profile_photo_path' => $filenametostore,
                    'member_type_id' => $request->member_type_id,
                    'status' => 0,
                    'is_admin' => 0,
                ]);
            }


            /*__________________/ InfoPersonal \_________________*/
            $infoPersonal =new InfoPersonal([
                'memebrName'=> $request->contact_number,
                'memebrDesignation'=> $request->contact_number,
                'memebrNID'=> $request->contact_number,
                'memebrDOB'=> $request->contact_number,
                'memebrMotherName'=> $request->contact_number,
                'memebrLifePartner'=> $request->contact_number,
                'memebrGender'=> $request->contact_number,
                'memebrBloodGroup'=> $request->contact_number,
                'memberPhoneNo'=> $request->contact_number,
                'memberEmail'=> $request->contact_number,

                'qualificationCertificate'=> $request->contact_number,

                'fileNomineePhoto'=> $request->contact_number,
                'fileNomineeSignature'=> $request->contact_number,
                'fileApplicantSignature'=> $request->contact_number,
                
                'nomineeName'=> $request->contact_number,
                'nomineeNID'=> $request->contact_number,
                'nomineeFather'=> $request->contact_number,
                'nomineeMother'=> $request->contact_number,
                'nomineeRelation'=> $request->contact_number,
                'nomineeDesignation'=> $request->contact_number,
                
                'bankBranceName'=> $request->contact_number,
                'modePayment'=> $request->contact_number,
                'totalAmount'=> $request->contact_number,
                'paymentDate'=> $request->contact_number,
                'moneyReceiptNo'=> $request->contact_number,
                
                'kOneCompanyName'=> $request->contact_number,
                'kOneMemberName'=> $request->contact_number,
                'kOneMembershipNo'=> $request->contact_number,

                'kTwoCompanyName'=> $request->contact_number,
                'kTwoMemberName'=> $request->contact_number,
                'kTwoMembershipNo'=> $request->contact_number,
                
                'description'=> $request->contact_number,
                'status'=> 1,
                'member_id'=> $user->id,
            ]);
            $infoPersonal->save();
            
            
            /*______________________/ InfoCompany \___________________*/
            if($request->company_name || $request->designation || $request->company_email || $request->company_phone){
                $infoCompany =new InfoCompany([
                    'companyName'=> $request->contact_number,
                    'addressOrganization'=> $request->contact_number,
                    'typeOwnership'=> $request->contact_number,
                    'typeBusiness'=> $request->contact_number,
        
                    'tradeLicenseNo'=> $request->contact_number,
                    'tradeLicenseDate'=> $request->contact_number,
                    'eTinNo'=> $request->contact_number,
                    'eTinDate'=> $request->contact_number,
                    'vatRegistrationNo'=> $request->contact_number,
                    'vatRegistrationDate'=> $request->contact_number,
                    'ircCertificateNo'=> $request->contact_number,
                    'ircCertificateDate'=> $request->contact_number,
                    'rjscIncorporationNo'=> $request->contact_number,
                    'rjscIncorporationDate'=> $request->contact_number,
                    
                    'poultryDairyFisheries'=> $request->contact_number,
                    'tradingBrandOthers'=> $request->contact_number,
        
                    'contactCompanyName'=> $request->contact_number,
                    'contactCompanyAddress'=> $request->contact_number,
                    'contactCompanyNumber'=> $request->contact_number,
                    'contactCompanyEmail'=> $request->contact_number,

                    'status' => 1,
                    'member_id' => $user->id,
                ]);
                $infoCompany->save();
            }
            /*______________________/ InfoOther \___________________*/
            $infoOther = new InfoOther([
                'status' => 1,
                'member_id' => $user->id,
            ]);
            $infoOther->save();
            /*______________________/ InfoDocument \___________________*/
            $userId = $user->id;
            function uploadFile($request, $fieldName, $subfolder, $userId) {
                if ($request->hasFile($fieldName)) {
                    $uploadedFile = $request->file($fieldName);
                    $extension = $uploadedFile->getClientOriginalExtension();
                    $filenameToStore = strtoupper($fieldName) . '_' . time() . '.' . $extension;

                    $folderPath = public_path("document/member/{$userId}/{$subfolder}");
                    if (!File::exists($folderPath)) {
                        File::makeDirectory($folderPath, 0777, true);
                    }
                    $uploadedFile->move($folderPath, $filenameToStore);

                    return "document/member/{$userId}/{$subfolder}/{$filenameToStore}";
                }
                return null;
            }
            $infoDocument = new InfoDocument([
                'fileTrade'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileTaxCertificate'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileImportCertificate'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileVatRegistration'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileMemberNID'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileApplicantPhoto'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileNomineeNID'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileNomineePhoto'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileVisitingCard'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileIncorporationCertificate'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'filePartnershipDeed'=> uploadFile($request, 'trade_licence', 'trade', $userId),
                'fileIndentingLicense'=> uploadFile($request, 'trade_licence', 'trade', $userId),

                'status' => 1,
                'member_id' => $userId,
            ]);
            $infoDocument->save();

            // Log in the created user
            // Auth::login($user);
            // Send email verification
            // $user->sendEmailVerificationNotification();
            
            // Commit the transaction if everything is successful
            DB::commit();

            // Return message
            return response()->json(['user' => $user], 200);
        } catch (PostTooLargeException $e) {
            DB::rollback();
            \Log::error('Cash transaction error: ' . $e->getMessage());
            return response()->json([
                'error' => 'File size exceeds the limit',
                'message' => 'The uploaded file size exceeds the allowed limit.',
            ], 422);
        }
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {

    }
    public function renew()
    {
        return view('frontend.pages.renew_form');
    }
    /*__________________________________________________________________________________ */
    /*__________________________________________________________________________________ */
    public function approveIndex(){
        $data = User::where('is_admin', 1)->where('status', 0)->get();

        $record = User::where('is_admin', 1)->whereIn('status', [1,2])->get();
        return view('layouts.pages.member.approve', compact('data','record'));
    }
    public function approveUpdate($id){
        $user = User::findorfail($id);
        $user->status = 1;
        $user->approve_by = Auth::user()->id;
        $user->save();
        $user->assignRole('Member');
        
        $mailData =[
            'title' => 'Now Your Are Member Of IDAB',
            'body' => 'This Is body',
        ];
        Mail::to($user->email)->send(new MemberApproved($mailData));

        $notification=array('messege'=>'Approve successfully!','alert-type'=>'success');
        return redirect()->back()->with($notification);
    }
    public function approveCancel($id){
        $approve = User::findorfail($id);
        $approve->status = 2;
        $approve->approve_by = Auth::user()->id;
        $approve->save();
        $notification=array('messege'=>'Cancel approve successfully!','alert-type'=>'success');
        return redirect()->back()->with($notification);
    }
    public function approvePadding()
    {
        return view('waiting');
    }
    /**___________________________________________________________________________________
     * DOWNLOAD DOCUMENT
     * ___________________________________________________________________________________
     */

    function downloadZipFile($userId) {
        // Define the path where the user's documents are stored
        $documentPath = public_path("document/member/{$userId}");

        // Check if the folder exists
        if (File::exists($documentPath)) {
            // Create a unique zip file name
            $zipFileName = "user_documents_{$userId}.zip";

            // Initialize a new ZipArchive
            $zip = new ZipArchive();

            // Open the zip file for writing
            if ($zip->open($zipFileName, ZipArchive::CREATE) === TRUE) {
                // Add all files in the user's document folder to the zip archive
                $files = new \RecursiveIteratorIterator(new \RecursiveDirectoryIterator($documentPath));
                foreach ($files as $file) {
                    if (!$file->isDir()) {
                        $filePath = $file->getRealPath();
                        $relativePath = substr($filePath, strlen($documentPath) + 1);
                        $zip->addFile($filePath, $relativePath);
                    }
                }

                // Close the zip file
                $zip->close();

                // Set headers to force the download of the zip file
                header('Content-Type: application/zip');
                header('Content-Disposition: attachment; filename="' . $zipFileName . '"');
                header('Content-Length: ' . filesize($zipFileName));

                // Output the zip file
                readfile($zipFileName);

                // Delete the zip file after download (optional)
                unlink($zipFileName);

                exit;
            }
        }

        // Handle the case where no documents were found for the user
        return "No documents found for user {$userId}";
    }

    /*--------------------------------------------------------------------------------
    --------------------------------  SINGLE   ---------------------------------------
    --------------------------------------------------------------------------------*/

    public function downloadTradeLicence($id)
    {
        try {
            $data = InfoDocument::findOrFail($id);
            $filePath = public_path($data->trade_licence);
            
            if (!File::exists($filePath)) {
                return Response::download($filePath);
            }else {
                return abort(404, 'File not found.');
            }
        } catch (\Exception $e) {
            return abort(500, 'An error occurred.');
        }
    }
    public function downloadTinCertificate($id)
    {
        try {
            $data = InfoDocument::findOrFail($id);
            $filePath = public_path($data->tin_certificate);
            
            if (file_exists($filePath)) {
                return Response::download($filePath);
            } else {
                return abort(404, 'File not found.');
            }
        } catch (\Exception $e) {
            return abort(500, 'An error occurred.');
        }
    }
    public function downloadNidPhotoCopy($id)
    {
        try {
            $data = InfoDocument::findOrFail($id);
            $filePath = public_path($data->nid_photo_copy);
            
            if (file_exists($filePath)) {
                return Response::download($filePath);
            } else {
                return abort(404, 'File not found.');
            }
        } catch (\Exception $e) {
            return abort(500, 'An error occurred.');
        }
    }
    public function downloadPassportPhoto($id)
    {
        try {
            $data = InfoDocument::findOrFail($id);
            $filePath = public_path($data->passport_photo);
            
            if (file_exists($filePath)) {
                return Response::download($filePath);
            } else {
                return abort(404, 'File not found.');
            }
        } catch (\Exception $e) {
            return abort(500, 'An error occurred.');
        }
    }
    public function downloadEduCertificate($id)
    {
        try {
            $data = InfoDocument::findOrFail($id);
            $filePath = public_path($data->edu_certificate);
            
            if (file_exists($filePath)) {
                return Response::download($filePath);
            } else {
                return abort(404, 'File not found.');
            }
        } catch (\Exception $e) {
            return abort(500, 'An error occurred.');
        }
    }
    public function downloadExperienceCertificate($id)
    {
        try {
            $data = InfoDocument::findOrFail($id);
            $filePath = public_path($data->experience_certificate);
            
            if (file_exists($filePath)) {
                return Response::download($filePath);
            } else {
                return abort(404, 'File not found.');
            }
        } catch (\Exception $e) {
            return abort(500, 'An error occurred.');
        }
    }
    public function downloadStuIdCopy($id)
    {
        try {
            $data = InfoDocument::findOrFail($id);
            $filePath = public_path($data->stu_id_copy);
            
            if (file_exists($filePath)) {
                return response()->download($filePath);
            } else {
                return abort(404, 'File not found.');
            }
        } catch (\Exception $e) {
            return abort(500, 'An error occurred.');
        }
    }

    public function downloadRecomentLetter($id)
    {
        try {
            $data = InfoDocument::findOrFail($id);
            $filePath = public_path($data->recoment_letter);
            
            if (file_exists($filePath)) {
                return Response::download($filePath);
            } else {
                return abort(404, 'File not found.');
            }
        } catch (\Exception $e) {
            return abort(500, 'An error occurred.');
        }
    }
    
}
