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
use App\Models\Member\InfoCompany;
use App\Models\Member\InfoDocument;
use App\Models\Member\InfoBank;
use App\Models\Member\InfoOther;
use App\Models\Master\MastQualification;
use App\Models\Master\MemberType;
use App\Models\Payment\Transaction;
use App\Models\Payment\PaymentDetails;
use App\Models\User;
use App\Helpers\Helper;
use App\Mail\MemberApproved;

use Illuminate\Support\Facades\Mail;
use Maatwebsite\Excel\Facades\Excel;
use App\Exports\BarcodeExport;
use App\Exports\ItemExport;
use PDF;
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
                'member_type_id' => 'required',
                'memebrName' => 'required',
                'memberEmail' => 'required|unique:users,email|max:255',

                //'fileCompanyLogo' => 'required|mimes:jpg,png,jpeg,gif,svg|image|max:10240',
                'fileApplicantPhoto' => 'required|mimes:jpg,png,jpeg,gif,svg|image|max:10240',
            ], [
                'member_type_id.required' => 'The Member Type is required.',
                //'fileCompanyLogo.required' => 'কোম্পানী প্রতীক আবশ্যক',
                'fileApplicantPhoto.required' => 'আবেদনকারীর পাসপোর্ট সাইজের ছবি আবশ্যক!',
                //'fileEducationCertificate.required' => 'The Education Certificate field is required.',
                // 'fileEducationCertificate.mimes' => 'The :attribute must be a valid image file.',
                // 'fileTradeLicense.max' => 'Trade licence must not be greater than 10MB.',

            ]);
            
            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }
            /* ____________________ MEMBER ID GENERATE ___________________*/
            $user = User::create([
                'name' => $request->memebrName,
                'email' => $request->memberEmail,
                'password' => bcrypt('12345678'),
                'member_code' => $request->member_code,
                'profile_photo_path' => 'blank.jpg',
                'email_verified_at' => '2024-01-01',
                'member_type_id' => $request->member_type_id,
                'status' => 0, // Defualt => 0 || Approve Final=> 1 || Cancel => 2 || Approve Two => 3 || Approve One => 4 || Renew => 5 || Renew Approve => 6
                'is_admin' => 0,
            ]);

            $userId = $user->id;
            /*__________________/ InfoPersonal \_________________*/
            $infoPersonal =new InfoPersonal([
                'memebrName'=> $request->memebrName,
                'memebrDesignation'=> $request->memebrDesignation,
                'memebrNID'=> $request->memebrNID,
                'memebrDOB'=> $request->memebrDOB,
                'memebrFatherName'=> $request->memebrFatherName,
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

                'fileCompanyLogo'=> uploadFile($request, 'fileCompanyLogo', 'CompanyLogo', $userId),
                'fileEducationCertificate'=> uploadFile($request, 'fileEducationCertificate', 'EducationCertificate', $userId),
                'fileTradeLicense'=> uploadFile($request, 'fileTradeLicense', 'TradeLicense', $userId),
                'fileTaxCertificate'=> uploadFile($request, 'fileTaxCertificate', 'TaxCertificate', $userId),
                'fileImportCertificate'=> uploadFile($request, 'fileImportCertificate', 'ImportCertificate', $userId),
                'fileVatRegistration'=> uploadFile($request, 'fileVatRegistration', 'VatRegistration', $userId),
                'fileMemberNID'=> uploadFile($request, 'fileMemberNID', 'MemberNID', $userId),
                'fileApplicantPhoto'=> uploadFile($request, 'fileApplicantPhoto', 'ApplicantPhoto', $userId),
                'fileNomineeNID'=> uploadFile($request, 'fileNomineeNID', 'NomineeNID', $userId),
                'fileVisitingCard'=> uploadFile($request, 'fileVisitingCard', 'VisitingCard', $userId),
                'fileArticlesCopy'=> uploadFile($request, 'fileArticlesCopy', 'fileArticlesCopy', $userId),
                'fileIncorporationCertificate'=> uploadFile($request, 'fileIncorporationCertificate', 'IncorporationCertificate', $userId),
                'filePartnershipDeed'=> uploadFile($request, 'filePartnershipDeed', 'PartnershipDeed', $userId),
                'fileIndentingLicense'=> uploadFile($request, 'fileIndentingLicense', 'IndentingLicense', $userId),

                'status' => 1,
                'member_id' => $userId,
            ]);
            $infoDocument->save();

            // Copy the file and update user photo path
            $userPhoto = User::find($userId);

            if (!empty($infoDocument->fileApplicantPhoto)) {
                $sourcePath = public_path($infoDocument->fileApplicantPhoto); // Get source file path

                // Check if the source file exists and is readable
                if (file_exists($sourcePath) && is_readable($sourcePath)) {
                    $fileExtension = pathinfo($sourcePath, PATHINFO_EXTENSION); // Get file extension

                    // Sanitize the file name to remove invalid characters
                    $sanitizedUserName = preg_replace('/[^A-Za-z0-9_\-]/', '_', strtolower(trim($userPhoto->name)));
                    $profilePhotoPath = 'images/profile/' . $userPhoto->id . '_' . $sanitizedUserName . '.' . $fileExtension;

                    $destinationPath = public_path($profilePhotoPath);

                    // Ensure the directory exists
                    if (!is_dir(dirname($destinationPath))) {
                        mkdir(dirname($destinationPath), 0755, true);
                    }

                    // Copy the file to the destination directory
                    if (@copy($sourcePath, $destinationPath)) {
                        // Update the user's profile photo path in the database
                        $userPhoto->profile_photo_path = $profilePhotoPath;
                        $userPhoto->save();
                    } else {
                        Log::error("Failed to copy file from $sourcePath to $destinationPath");
                    }
                } else {
                    Log::error("Source file does not exist or is not readable: $sourcePath");
                }
            }

            /*______________________/ Transaction Bank \___________________*/
            $infoBank = new InfoBank([
                'bankBranceName'=> $request->bankBranceName,
                'modePayment'=> $request->modePayment,
                'totalAmount'=> $request->totalAmount,
                'paymentDate'=> $request->paymentDate,
                'moneyReceiptNo'=> $request->moneyReceiptNo,
                'slip'=> uploadFile($request, 'fileSlip', 'bank-info', $userId),

                'status' => 0,
                'member_id' => $userId,
            ]);
            $infoBank->save();

            $transaction = new Transaction();
            $transaction->amount = $request->totalAmount;
            $transaction->transaction_type = 1; // 'Deposit => 1', 'Withdraw => 2', 'Purchase => 3'
            $transaction->transaction_id = null; // Payment gateway's transaction ID
            $transaction->payment_method_id = 1; //1 => Bank
            $transaction->status = 1;
            $transaction->user_id = $userId;
            $transaction->save();

            $paymentDetails = new PaymentDetails();
            $paymentDetails->payment_date = now()->format('Y-m-d');
            $paymentDetails->paid_amount = $request->totalAmount;
            $paymentDetails->payment_number = null; // (bKash number, Rocket number, Card last 4 digits)
            $paymentDetails->transaction_number = null; // (payment gateway's transaction number) Like: 5sesCfe
            $paymentDetails->transaction_id = $transaction->id;
            $paymentDetails->payment_reason_id = 1; // Register => 1, Event => 2, Annual Fees =>3
            $paymentDetails->ref_reason_id = null; // Register->null, Event->id
            $paymentDetails->transfer_number = $request->moneyReceiptNo;
            $paymentDetails->slip = $infoBank->slip;
            $paymentDetails->message = null;
            $paymentDetails->payment_method_id = 2; //1 => bKash || 2 => Bank
            $paymentDetails->status = 1;
            $paymentDetails->member_id = $userId;
            $paymentDetails->save();


            // Log in the created user
            // Auth::login($user);
            // Send email verification
            // $user->sendEmailVerificationNotification();


            // Commit the transaction if everything is successful
            DB::commit();

            // Return message
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
    /**--------------------------------------------------------------------
     * RENEW MEMBER
     * --------------------------------------------------------------------
     */
    public function renew()
    {
        return view('frontend.pages.renew_form');
    }
    public function findMember(Request $request)
    {
        $request->validate([
            'member_code' => 'required|string'
        ]);

        $member = User::where('member_code', $request->member_code)->first();

        if ($member) {
            return response()->json([
                'success' => true,
                'id' => $member->id,
                'member_code' => $member->member_code,
                'name' => $member->name,
                'email' => $member->email,
                'member_type' => $member->memberType->name,
                'join_date' => $member->join_date,
                'profile_photo_path' => $member->profile_photo_path,
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => "Member not found!"
            ]);
        }
    }
    public function renewStore(Request $request)
    {
        $userId = $request->member_id;
        
        // Validate the request
        $request->validate([
            'bankBranceName' => 'required|string|max:255',
            'totalAmount' => 'required|numeric|min:1',
            'paymentDate' => 'required|date',
            'fileSlip' => 'nullable|file|mimes:jpg,jpeg,png,pdf|max:2048',
            'fileTradeLicense' => 'nullable|file|mimes:jpg,jpeg,png,pdf|max:2048',
            'fileTaxCertificate' => 'nullable|file|mimes:jpg,jpeg,png,pdf|max:2048',
        ]);

        // Function to remove old file before uploading new one
        function uploadFile($request, $fieldName, $subfolder, $userId, $oldFilePath = null) {
            if ($request->hasFile($fieldName)) {
                // Remove old file if it exists
                if ($oldFilePath && File::exists(public_path($oldFilePath))) {
                    File::delete(public_path($oldFilePath));
                }

                // Upload new file
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
            return $oldFilePath;
        }

        // Get existing file paths
        $existingInfoDocument = InfoDocument::where('member_id', $userId)->first();
        $existingSlip = $existingInfoDocument->fileSlip ?? null;
        $existingTradeLicense = $existingInfoDocument->fileTradeLicense ?? null;
        $existingTaxCertificate = $existingInfoDocument->fileTaxCertificate ?? null;

        // Upload new files & delete old ones
        $slipPath = uploadFile($request, 'fileSlip', 'bank-info', $userId, $existingSlip);
        $tradeLicensePath = uploadFile($request, 'fileTradeLicense', 'TradeLicense', $userId, $existingTradeLicense);
        $taxCertificatePath = uploadFile($request, 'fileTaxCertificate', 'TaxCertificate', $userId, $existingTaxCertificate);

        // Save bank transaction info
        $infoBank = new InfoBank([
            'bankBranceName' => $request->bankBranceName,
            'modePayment' => 'Bank',
            'totalAmount' => $request->totalAmount,
            'paymentDate' => $request->paymentDate,
            'moneyReceiptNo' => $request->moneyReceiptNo,
            'slip' => $slipPath,
            'status' => 0,
            'member_id' => $userId,
        ]);
        $infoBank->save();
        
        // Save transaction
        $transaction = new Transaction();
        $transaction->amount = $request->totalAmount;
        $transaction->transaction_type = 1; // Deposit
        $transaction->transaction_id = null;
        $transaction->payment_method_id = 1; // Bank
        $transaction->status = 1;
        $transaction->user_id = $userId;
        $transaction->save();
        
        // Save payment details
        $paymentDetails = new PaymentDetails();
        $paymentDetails->payment_date = now()->format('Y-m-d');
        $paymentDetails->paid_amount = $request->totalAmount;
        $paymentDetails->payment_number = null;
        $paymentDetails->transaction_number = null;
        $paymentDetails->transaction_id = $transaction->id;
        $paymentDetails->payment_reason_id = 3; // Annual Fees
        $paymentDetails->ref_reason_id = null;
        $paymentDetails->transfer_number = $request->moneyReceiptNo;
        $paymentDetails->slip = $infoBank->slip;
        $paymentDetails->message = null;
        $paymentDetails->payment_method_id = 2; //1 => bKash || 2 => Bank
        $paymentDetails->status = 0;
        $paymentDetails->member_id = $userId;
        $paymentDetails->save();

        // Update InfoDocument
        InfoDocument::updateOrCreate(
            ['member_id' => $userId],
            [
                'fileSlip' => $slipPath,
                'fileTradeLicense' => $tradeLicensePath,
                'fileTaxCertificate' => $taxCertificatePath,
            ]
        );
        User::where('id', $userId)->update(['status' => 6]);

        return redirect()->route('member-approve.pending')->with('success', 'Member renewal information saved successfully.');
    }


    /*__________________________________________________________________________________ */
    /*__________________________________________________________________________________ */
    public function approveIndex($id){
        $status = $id;
        $data = User::where('is_admin', 0)->whereIn('status', [0, 3, 4])->get();

        $record = User::where('is_admin', 0)->whereIn('status', [1, 2])->get();
        return view('layouts.pages.member.approve', compact('data','record', 'status'));
    }

    public function approveUpdate(Request $request, $id){
        $user = User::findorfail($id);
        $user->status = $request->status; // Defualt => 0 || Approve => 1 || Cancel => 2 || Approve Two => 3 || Approve One => 4
        $user->member_code = $request->member_code;
        $user->join_date = $request->status == 1 ? now() : $user->join_date;
        $user->approve_by = Auth::user()->id;
        $user->save();
        $user->assignRole('Member');
        
        if($user->status == 1){
            $mailData =[
                'title' => 'Now Your Are Member Of BAFIITA',
                'body' => 'Thanks For Join Us',
            ];
            Mail::to($user->email)->send(new MemberApproved($mailData));
        }

        $notification=array('messege'=>'Approve successfully!','alert-type'=>'success');
        return redirect()->back()->with($notification);
    }
    public function approveCancel(Request $request, $id){
        $user = User::findorfail($id);
        $user->status = 2; // Defualt => 0 || Approve => 1 || Cancel => 2 || Approve Two => 3 || Approve One => 4
        $user->description = $request->description;
        $user->approve_by = Auth::user()->id;
        $user->save();

        $notification=array('messege'=>'Cancel approve successfully!','alert-type'=>'success');
        return redirect()->back()->with($notification);
    }
    public function approvePending()
    {
        return view('waiting');
    }
    /**___________________________________________________________________________________
     * DOWNLOAD DOCUMENT
     * ___________________________________________________________________________________
     */
    public function downloadMemberInfo($id)
    {
        $data = User::find($id);
        $fileName = $data->name ?? 'document';

        $pdf = PDF::loadView('layouts.pages.export.member-information', compact('data'))->setPaper('a4', 'portrait');
        return $pdf->download($fileName . '.pdf');
        // return view('layouts.pages.export.member-information', compact('data'));
    }

    //=============================================
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
