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
            // //----Validation Check 
            // $validator = Validator::make($request->all(), [
            //     'name' => 'required',
            //     'email' => 'required|unique:users,email|max:255',
            //     'password' => 'required|confirmed|min:8',
            //     'profile_photo_path' => 'required|mimes:jpg,png,jpeg,gif,svg|image',

            //     'edu_certificate' => 'required|max:10240',
            // ], [
            //     'profile_photo_path.required' => 'The Profile photo field is required.',
            //     'profile_photo_path.mimes' => 'The :attribute must be a valid image file.',
                
            //     'trade_licence.max' => 'Trade licence must not be greater than 10MB.',
            //     'edu_certificate.required' => 'The EDU. Certificate field is required.',

            // ]);
            
            // if ($validator->fails()) {
            //     return response()->json(['errors' => $validator->errors()], 422);
            // }

            // /*__________________/ USER CREATE \_________________*/
            // $user = null; 
            // if ($request->hasFile('profile_photo_path')) {
            //     // get filename with extension
            //     $filenamewithextension = $request->file('profile_photo_path')->getClientOriginalName();
            //     // get filename without extension
            //     $filename = pathinfo($filenamewithextension, PATHINFO_FILENAME);

            //     // get file extension
            //     $extension = $request->file('profile_photo_path')->getClientOriginalExtension();
            //     // filename to store
            //     $filenametostore = $filename . '_' . time() . '.' . $extension;

            //     // Upload File
            //     $request->file('profile_photo_path')->move('public/images/profile/', $filenametostore); //--Upload Location

            //     // Resize image here
            //     $thumbnailpath = public_path('images/profile/' . $filenametostore); //--Get File Location
            //     $data = Image::make($thumbnailpath)->resize(1200, 850, function ($constraint) {
            //         $constraint->aspectRatio();
            //     });
            //     $data->save($thumbnailpath);

            //     /*_____________________ MEMBER ID GENERATE ___________________*/
            //     $memberCode = "generate_member_code_here";
            //     $user = User::create([
            //         'name' => $request->memebrName,
            //         'email' => $request->email,
            //         'password' => bcrypt($request->password),
            //         'member_code' => $memberCode,
            //         'profile_photo_path' => $filenametostore,
            //         'member_type_id' => 1,
            //         'status' => 0,
            //         'is_admin' => 0,
            //     ]);
            // }

            $userId = 1;
            /*__________________/ InfoPersonal \_________________*/
            $infoPersonal =new InfoPersonal([
                'memebrName'=> $request->memebrName,
                'memebrDesignation'=> $request->memebrDesignation,
                'memebrNID'=> $request->memebrNID,
                'memebrDOB'=> $request->memebrDOB,
                'memebrMotherName'=> $request->memebrMotherName,
                'memebrLifePartner'=> $request->memebrLifePartner,
                'memebrGender'=> $request->memebrGender,
                'memebrBloodGroup'=> $request->memebrBloodGroup,
                'memberPhoneNo'=> $request->memberPhoneNo,
                'memberEmail'=> $request->memberEmail,

                'qualificationName'=> $request->qualificationName,
                
                'nomineeName'=> $request->nomineeName,
                'nomineeNID'=> $request->nomineeNID,
                'nomineeFather'=> $request->nomineeFather,
                'nomineeMother'=> $request->nomineeMother,
                'nomineeRelation'=> $request->nomineeRelation,
                'nomineeDesignation'=> $request->nomineeDesignation,
                
                'bankBranceName'=> $request->bankBranceName,
                'modePayment'=> $request->modePayment,
                'totalAmount'=> $request->totalAmount,
                'paymentDate'=> $request->paymentDate,
                'moneyReceiptNo'=> $request->moneyReceiptNo,
                
                'kOneCompanyName'=> $request->kOneCompanyName,
                'kOneMemberName'=> $request->kOneMemberName,
                'kOneMembershipNo'=> $request->kOneMembershipNo,

                'kTwoCompanyName'=> $request->kTwoCompanyName,
                'kTwoMemberName'=> $request->kTwoMemberName,
                'kTwoMembershipNo'=> $request->kTwoMembershipNo,
                
                'description'=> $request->description,
                'status'=> 1,
                'member_id'=> $userId,
            ]);
            $infoPersonal->save();
            
            /*______________________/ InfoCompany \___________________*/
            $infoCompany =new InfoCompany([
                'companyName'=> $request->companyName,
                'addressOrganization'=> $request->addressOrganization,
                'typeOwnership'=> $request->typeOwnership,
                'typeBusiness'=> $request->typeBusiness,
    
                'tradeLicenseNo'=> $request->tradeLicenseNo,
                'tradeLicenseDate'=> $request->tradeLicenseDate,
                'eTinNo'=> $request->eTinNo,
                'eTinDate'=> $request->eTinDate,
                'vatRegistrationNo'=> $request->vatRegistrationNo,
                'vatRegistrationDate'=> $request->vatRegistrationDate,
                'ircCertificateNo'=> $request->ircCertificateNo,
                'ircCertificateDate'=> $request->ircCertificateDate,
                'rjscIncorporationNo'=> $request->rjscIncorporationNo,
                'rjscIncorporationDate'=> $request->rjscIncorporationDate,
                
                'poultryDairyFisheries'=> $request->poultryDairyFisheries,
                'tradingBrandOthers'=> $request->tradingBrandOthers,
    
                'contactCompanyName'=> $request->contactCompanyName,
                'contactCompanyAddress'=> $request->contactCompanyAddress,
                'contactCompanyNumber'=> $request->contactCompanyNumber,
                'contactCompanyEmail'=> $request->contactCompanyEmail,

                'status' => 1,
                'member_id' => $userId,
            ]);
            $infoCompany->save();
            
            /*______________________/ InfoOther \___________________*/
            $infoOther = new InfoOther([
                'status' => 1,
                'member_id' => $userId,
            ]);
            $infoOther->save();

            /*______________________/ InfoDocument \___________________*/
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
                'fileNomineePhoto'=> uploadFile($request, 'fileNomineePhoto', 'NomineePhoto', $userId),
                'fileNomineeSignature'=> uploadFile($request, 'fileNomineeSignature', 'NomineeSignature', $userId),
                'fileApplicantSignature'=> uploadFile($request, 'fileApplicantSignature', 'ApplicantSignature', $userId),

                'fileEducationCertificate'=> uploadFile($request, 'fileEducationCertificate', 'EducationCertificate', $userId),
                'fileTradeLicense'=> uploadFile($request, 'fileTradeLicense', 'TradeLicense', $userId),
                'fileTaxCertificate'=> uploadFile($request, 'fileTaxCertificate', 'TaxCertificate', $userId),
                'fileImportCertificate'=> uploadFile($request, 'fileImportCertificate', 'ImportCertificate', $userId),
                'fileVatRegistration'=> uploadFile($request, 'fileVatRegistration', 'VatRegistration', $userId),
                'fileMemberNID'=> uploadFile($request, 'fileMemberNID', 'MemberNID', $userId),
                'fileApplicantPhoto'=> uploadFile($request, 'fileApplicantPhoto', 'ApplicantPhoto', $userId),
                'fileNomineeNID'=> uploadFile($request, 'fileNomineeNID', 'NomineeNID', $userId),
                'fileVisitingCard'=> uploadFile($request, 'fileVisitingCard', 'VisitingCard', $userId),
                'fileIncorporationCertificate'=> uploadFile($request, 'fileIncorporationCertificate', 'IncorporationCertificate', $userId),
                'filePartnershipDeed'=> uploadFile($request, 'filePartnershipDeed', 'PartnershipDeed', $userId),
                'fileIndentingLicense'=> uploadFile($request, 'fileIndentingLicense', 'IndentingLicense', $userId),

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
            // return response()->json(['user' => $user], 200);
            return response()->json('success', 200);
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
