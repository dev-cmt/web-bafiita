<x-guest-layout>
    
    <div class="bg-dark" style="min-height:100%; background-image: url('{{asset('public/images')}}/pages/registation-bg.jpg'); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; overflow:hidden;">

        <div class="from-wrapper container">
            <div class="d-flex justify-content-center mb-4">
                <a href="{{route('/')}}"><img src="{{asset('public/images')}}/logo.png" alt="" width="150"></a>
            </div>
            
            <form class="card" data-action="{{ route('member_register.store') }}" method="POST" enctype="multipart/form-data" id="add-user-form">
                @csrf
                <div class="card-body" style="opacity: 0.9">
                    <div class="header-title">
                        <h3 class="text-center px-4 pt-2"> BANGLADESH AGRO FEED INGREDIENTS IMPORTERS AND  TRADERS ASSOCIATION </h3>
                        <hr>
                        <p class="text-center"><em>An agro based ingredients importers and traders association</em></p>
                    </div>

                    <h3 class="text-center px-4">Membership Opening Form</h3>

                    <p>
                        To,<br>
                        President,<br>
                        Bangladesh Agro Feed Ingredients Importers & Traders Association,<br>
                        63/C, Asad Avenue, Mother’s Home (5th Floor),<br>
                        Mohammadpur, Dhaka-1207, Bangladesh.<br>
                    </p>
                    <p>Dear Sir, <br>
                     I/we are applying to get registered/enlisted Membership in the following type with your Association. l/we are providing the detailed information below: </p>
 
                    
                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="A" data-title="Business Information"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="" class="form-label">Member Type</label>
                            <select name="member_type_id" id="" class="form-select">
                                <option value="" selected>Select</option>
                                <option value="1">Donor</option>
                                <option value="2">General</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Member Code</label>
                            <input type="text" name="member_code" class="form-control" value="" disabled>
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Name of the company</label>
                            <input type="text" name="companyName" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Address of Business Organization /Register</label>
                            <input type="text" name="addressOrganization" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Type Of Ownership</label>
                            <select name="typeOwnership" id="" class="form-select">
                                <option value="1">Proprietorship</option>
                                <option value="2">Partnership</option>
                                <option value="3">Privet/Pudee Ltd.</option>
                                <option value="4">Multinational</option>
                                <option value="5">Others</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Type Of Business</label>
                            <select name="typeBusiness" id="" class="form-select">
                                <option value="1">Import, Trading & Supply</option>
                                <option value="2">Local Manufacturing</option>
                                <option value="3">Trading</option>
                                <option value="4">Others</option>
                            </select>
                        </div>
                    </div>

                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="B" data-title="General Information"></div>
                    <div class="row">
                        <div class="col-7 col-md-6">
                            <label for="" class="form-label">Trade License Number (if applicable)</label>
                            <input type="text" name="tradeLicenseNo" class="form-control" value="">
                        </div>
                        <div class="col-5 col-md-6">
                            <label for="" class="form-label">Issue Date</label>
                            <input type="date" name="tradeLicenseDate" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 col-md-6">
                            <label for="" class="form-label">E- TIN (if applicable) Number</label>
                            <input type="text" name="eTinNo" class="form-control" value="">
                        </div>
                        <div class="col-5 col-md-6">
                            <label for="" class="form-label">Issue Date</label>
                            <input type="date" name="eTinDate" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 col-md-6">
                            <label for="" class="form-label">VAT Registration Number</label>
                            <input type="text" name="vatRegistrationNo" class="form-control" value="">
                        </div>
                        <div class="col-5 col-md-6">
                            <label for="" class="form-label">Issue Date</label>
                            <input type="date" name="vatRegistrationDate" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 col-md-6">
                            <label for="" class="form-label">IRC Import Registration Certificate Number</label>
                            <input type="text" name="ircCertificateNo" class="form-control" value="">
                        </div>
                        <div class="col-5 col-md-6">
                            <label for="" class="form-label">Issue Date</label>
                            <input type="date" name="ircCertificateDate" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-7 col-md-6">
                            <label for="" class="form-label">RJSC Incorporation Number</label>
                            <input type="text" name="rjscIncorporationNo" class="form-control" value="">
                        </div>
                        <div class="col-5 col-md-6">
                            <label for="" class="form-label">Issue Date</label>
                            <input type="date" name="rjscIncorporationDate" class="form-control" value="">
                        </div>
                    </div>
                    
                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="C" data-title="Trading Brand/Products & Service"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="" class="form-label">Poultry, Dairy & Fisheries</label>
                            <select name="poultryDairyFisheries" id="" class="form-select">
                                <option value="1">Agro Feed Ingredients</option>
                                <option value="2">Feed Supplement & Feed Additives</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Others ( if )</label>
                            <input type="text" name="tradingBrandOthers" class="form-control" value="">
                        </div>
                    </div>


                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="D" data-title="Contact Information"></div>
                    <p>Business Operation Address (Current/Mailing Address)</p><br>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="" class="form-label">Name of the company (As in Trade License)</label>
                            <input type="text" name="contactCompanyName" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Address </label>
                            <input type="text" name="contactCompanyAddress" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Cell Number</label>
                            <input type="text" name="contactCompanyNumber" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">E-Mail ID</label>
                            <input type="text" name="contactCompanyEmail" class="form-control" value="">
                        </div>
                    </div>


                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="E" data-title="Personal Information"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="" class="form-label">Name of the Member (As in NID & Trade License)</label>
                            <input type="text" name="memebrName" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Designation</label>
                            <select name="memebrDesignation" id="" class="form-select">
                                <option value="" selected>Select</option>
                                <option value="1">Proprietor</option>
                                <option value="2">Managing Director</option>
                                <option value="3">Chairman</option>
                                <option value="4">CEO</option>
                                <option value="5">Partner</option>
                                <option value="6">Director</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">NID/Smart Card Number</label>
                            <input type="text" name="memebrNID" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Date of Birth</label>
                            <input type="date" name="memebrDOB" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Mothers Name (As in NID) </label>
                            <input type="text" name="memebrMotherName" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Husband/Spouse Name </label>
                            <input type="text" name="memebrLifePartner" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Gender </label>
                            <select name="memebrGender" id="" class="form-select">
                                <option value="1">Male</option>
                                <option value="2">Female</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Blood Group </label>
                            <select name="memebrBloodGroup" id="" class="form-select">
                                <option value="" selected>Select</option>
                                <option value="1">O Positive (0+)</option>
                                <option value="2">O Negative (0-)</option>
                                <option value="3">A Positive (A+)</option>
                                <option value="4">A Negative (A-)</option>
                                <option value="5">B Positive (B+)</option>
                                <option value="6">B Negative (B-)</option>
                                <option value="7">AB Positive (AB+)</option>
                                <option value="8">AB Negative (AB-)</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Mobile Number</label>
                            <input type="text" name="memberPhoneNo" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Email ID</label>
                            <input type="text" name="memberEmail" class="form-control" value="">
                        </div>
                    </div>

                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="F" data-title="Educations Qualification"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="" class="form-label">According to the last Academic Certificate Name</label>
                            <input type="text" name="qualificationName" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">According to the last Academic Certificate File</label>
                            <input type="file" name="fileEducationCertificate" class="form-control" value="">
                        </div>
                    </div>

                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="G" data-title="Authorized Person/Nominee Information"></div>
                    <div class="row mb-2">
                        <p>Following The named person is hereby authorized Person/ Nominee
                            to represent the company to get registered/enlisted Membership with your Association. I/we are providing the detailed information below:</p>

                        <div class="col-md-4">
                            <label for="" class="form-label">Nominee Photo</label>
                            <input type="file" name="fileNomineePhoto" class="form-control" value="">
                        </div>
                        <div class="col-md-4">
                            <label for="" class="form-label">Signature of the Nominee</label>
                            <input type="file" name="fileNomineeSignature" class="form-control" value="">
                        </div>
                        <div class="col-md-4">
                            <label for="" class="form-label">Signature of the Applicant</label>
                            <input type="file" name="fileApplicantSignature" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="" class="form-label">Name of Authorized Person/Nominee </label>
                            <input type="text" name="nomineeName" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">NID/Smart Card Number </label>
                            <input type="text" name="nomineeNID" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Fathers /Husband Name </label>
                            <input type="text" name="nomineeFather" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Mothers Name </label>
                            <input type="text" name="nomineeMother" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Relation with Member </label>
                            <input type="text" name="nomineeRelation" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Designation of Representative </label>
                            <input type="text" name="nomineeDesignation" class="form-control" value="">
                        </div>
                    </div>

                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="H" data-title="Membership Fee Payment Information"></div>
                    <div class="row">
                        <div class="col-md-6">
                            <label for="" class="form-label">Bank & Branch Name </label>
                            <input type="text" name="bankBranceName" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Total Amount (BDT) </label>
                            <input type="number" name="totalAmount" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Payment Date </label>
                            <input type="date" name="paymentDate" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Mode of Payment </label>
                            <input type="text" name="modePayment" class="form-control" value="Bank" disabled>
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Add Payment Slip</label>
                            <input type="file" name="fileSlip" class="form-control" value="">
                        </div>
                        <div class="col-md-6">
                            <label for="" class="form-label">Money Receipt No </label>
                            <input type="text" name="moneyReceiptNo" class="form-control" value="Print Using Provite" disabled>
                        </div>
                    </div>

                    
                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="I" data-title="Recommendation Information"></div>
                    <h6 class="text-primary">K1 Proposed by BAFIITA Members</h6>
                    <div class="row">
                        <div class="col-md-4">
                            <label for="" class="form-label">Name of Company </label>
                            <input type="text" name="kOneCompanyName" class="form-control" value="">
                        </div>
                        <div class="col-md-4">
                            <label for="" class="form-label">Name of Member/Representative </label>
                            <input type="text" name="kOneMemberName" class="form-control" value="">
                        </div>
                        <div class="col-md-4">
                            <label for="" class="form-label">BAFIITA Membership Number </label>
                            <select name="kOneMembershipNo" id="" class="form-select">
                                <option value="" selected>Select</option>
                                <option value="1">Donor</option>
                                <option value="2">General</option>
                            </select>
                        </div>
                    </div>

                    <h6 class="text-primary mt-4">K2 Seconded by BAFIITA Members</h6>
                    <div class="row">
                        <div class="col-md-4">
                            <label for="" class="form-label">Name of Company </label>
                            <input type="text" name="kTwoCompanyName" class="form-control" value="">
                        </div>
                        <div class="col-md-4">
                            <label for="" class="form-label">Name of Member/Representative </label>
                            <input type="text" name="kTwoMemberName" class="form-control" value="">
                        </div>
                        <div class="col-md-4">
                            <label for="" class="form-label">BAFIITA Membership Number </label>
                            <select name="kTwoMembershipNo" id="" class="form-select">
                                <option value="" selected>Select</option>
                                <option value="1">Donor</option>
                                <option value="2">General</option>
                            </select>
                        </div>
                    </div>

                    <!-- Document Candidate Section -->
                    <div class="bar" data-label="J" data-title="Verified by BAFIITA Secretariat (For office use only)"></div>
                    <div class="row">
                        <div class="col-md-12">
                            <label for="" class="form-label">Comment:</label>
                            <textarea name="description" id="" rows="3" class="form-control"></textarea>
                        </div>
                    </div>

                    <!-- Document Candidate Section -->
                    <div class="bar_document"></div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">কোম্পানী প্রতীক</label>
                        <div class="col-md-8">
                            <input type="file" name="fileCompanyLogo" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">হালনাগাদ ট্রেড লাইসেন্স এর ফটোকপি</label>
                        <div class="col-md-8">
                            <input type="file" name="fileTradeLicense" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">হালনাগাদ আয়কর প্রত্যায়ন পত্র ও রিটার্ন দাখিলের প্রমানপত্রের ফটোকপি</label>
                        <div class="col-md-8">
                            <input type="file" name="fileTaxCertificate" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">হালনাগাদ আমদানি নিবন্ধন প্রত্যায়ন পত্র এর ফটোকপি</label>
                        <div class="col-md-8">
                            <input type="file" name="fileImportCertificate" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">হালনাগাদ মূল্য সংযোজন কর নিবন্ধন পত্র এর ফটোকপি</label>
                        <div class="col-md-8">
                            <input type="file" name="fileVatRegistration" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">আবেদনকারীর/সদস্য এর জাতীয় পরিচয়পত্রের ফটোকপি</label>
                        <div class="col-md-8">
                            <input type="file" name="fileMemberNID" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">আবেদনকারীর পাসপোর্ট সাইজের ছবি</label>
                        <div class="col-md-8">
                            <input type="file" name="fileApplicantPhoto" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">আবেদনকারীর মনোনিত নমিনি এর জাতীয় পরিচয়পত্রের ফটোকপি</label>
                        <div class="col-md-8">
                            <input type="file" name="fileNomineeNID" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">মনোনিত নমিনি এর পাসপোর্ট সাইজের ছবি</label>
                        <div class="col-md-8">
                            <input type="file" name="fileNomineePhoto" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">ভিজিটিং কার্ড</label>
                        <div class="col-md-8">
                            <input type="file" name="fileVisitingCard" class="form-control" value="">
                        </div>
                    </div>
                    <h6 class="text-primary text-center my-4">কোম্পানীর ক্ষেত্রে নিন্মোক্ত সার্টিফিকেট সমূহ সংযুক্ত করতে হবে। কোম্পানীর সংঘস্মারক/সংঘবিধি এর ফটোকপি।</h6>
                        
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">সার্টিফিকেট অফ ইনকর্পোরেশন</label>
                        <div class="col-md-8">
                            <input type="file" name="fileIncorporationCertificate" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">পার্টনারশিপ ডিড</label>
                        <div class="col-md-8">
                            <input type="file" name="filePartnershipDeed" class="form-control" value="">
                        </div>
                    </div>
                    <div class="row mb-2">
                        <label for="" class="form-label col-md-4">ইনডেন্টিং লাইসেন্স</label>
                        <div class="col-md-8">
                            <input type="file" name="fileIndentingLicense" class="form-control" value="">
                        </div>
                    </div>

                    <!-- Document Candidate Section -->
                    <div class="row">
                        <button class="btn btn-success mt-4 mb-2 rounded-0">Submit</button>
                    </div>

                </div>
            </form>

            <div class="card mt-4">
                <div class="card-body">
                    <p>আপনার প্রতিষ্ঠানের সদস্যপদ গ্রহণের জন্য অত্র এসোসিয়েশনের আবেদনপত্রের সাথে সংযুক্তি করে নিন্মলিখিত হালনাগাদ প্রয়োজনীয় সার্টিফিকেট সমূহ প্রথম শ্রেনীর গেজেটেট কর্মকর্তা দ্বারা সত্যায়িত করে বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইম্পোটার্স এন্ড ট্রেডার্স এসোসিয়েশন (বাফিটা), ৬৩/সি, আসাদ এভিনিউ, মাদার্স হোম (৬ষ্ঠ-তলা), মোহাম্মাদপুর, ঢাকা-১২০৭ এই ঠিকানায় প্রেরণ করতে হবে।</p>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th colspan="3" class="text-center">দাতা সদস্য</th>
                                    <th colspan="3" class="text-center">সাধার্থ্য সদস্য</th>
                                </tr>
                                <tr>
                                    <th class="text-center">ক্রমিক নং</th>
                                    <th class="text-center">বিবরন</th>
                                    <th class="text-center">টাকা</th>
                                    <th class="text-center">ক্রমিক নং</th>
                                    <th class="text-center">বিবরন</th>
                                    <th class="text-center">টাকা</th>
                                </tr>
                            </thead>                            
                            <tbody>
                                <tr>
                                    <td>ক।</td>
                                    <td>আবেদন ফরম</td>
                                    <td>= ৩,০০০/-</td>
                                    <td>ক।</td>
                                    <td>আবেদন ফরম</td>
                                    <td>= ৩,০০০/-</td>
                                </tr>
                                <tr>
                                    <td>খ।</td>
                                    <td>সদস্য ভর্তি ফি</td>
                                    <td>= ৫০,০০০/-</td>
                                    <td>খ।</td>
                                    <td>সদস্য ভর্তি ফি</td>
                                    <td>= ৫০,০০০/-</td>
                                </tr>
                                <tr>
                                    <td>গ।</td>
                                    <td>বার্ষিক চাঁদা (চলতি বছর)</td>
                                    <td>= ১৫,০০০/-</td>
                                    <td>গ।</td>
                                    <td>বার্ষিক চাঁদা (চলতি বছর)</td>
                                    <td>= ১৫,০০০/-</td>
                                </tr>
                                <tr>
                                    <td colspan="1">ঘ।</td>
                                    <td colspan="1">সংগঠনিক উন্নয়ণ তহবিল</td>
                                    <td colspan="1">= ৪০,০০০/-</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="text-right">সর্ব মোট</td>
                                    <td colspan="1">= ১,০৮,০০০/-</td>
                                    <td colspan="2" class="text-right">সর্ব মোট</td>
                                    <td colspan="1">= ৬৮,০০০/-</td>
                                </tr>
                                <tr>
                                    <td colspan="3">কথায়ঃ এক লক্ষ আট হাজার টাকা মাত্র।</td>
                                    <td colspan="3">কথায়ঃ আটষট্রি হাজার টাক মাত্র।</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="bank-info my-4">
                        <h4 class="text-center">
                            <span style="border-bottom: 2px dotted;"> Bank Account of Bangladesh Agro Feed Ingredients</span>
                        </h4>
                        <h4 class="text-center">
                            <span style="border-bottom: 2px dotted;">Importers and Traders Association</span>
                        </h4><br>
                        <div class="row">
                            <div class="col-4"><strong>Account Title</strong></div>
                            <div class="col-1"><strong>:</strong></div>
                            <div class="col-7"><h5>BAFIITA</h5></div>
                        </div>
                        <div class="row">
                            <div class="col-4"><strong>Account No</strong></div>
                            <div class="col-1"><strong>:</strong></div>
                            <div class="col-7"><h5>SND: 2706102000862</h5></div>
                        </div>
                        <div class="row">
                            <div class="col-4"><strong>Bank Name</strong></div>
                            <div class="col-1"><strong>:</strong></div>
                            <div class="col-7">PUBALI BANK LTD.</div>
                        </div>
                        <div class="row">
                            <div class="col-4"><strong>Branch Name</strong></div>
                            <div class="col-1"><strong>:</strong></div>
                            <div class="col-7">Asad Avenue Branch, Mohammadpur, Dhaka-1207</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" id="display-control" value="0">
    @push('script')
        <!--Image Profile-->
        <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        $('#imagePreview').css('background-image', 'url('+e.target.result +')');
                        $('#imagePreview').hide();
                        $('#imagePreview').fadeIn(650);
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }
            $("#imageUpload").change(function() {
                readURL(this);
            });
        </script>
        <script>
            $(document).ready(function() {
                $("#preloader").hide();
                var form = '#add-user-form';
                $(form).on('submit', function(event) {
                    event.preventDefault();
                    var url = $(this).attr('data-action');
                    
                    // Show loading indicator
                    $("#preloader").show();
                    $.ajax({
                        url: url,
                        method: 'POST',
                        data: new FormData(this),
                        dataType: 'JSON',
                        contentType: false,
                        cache: false,
                        processData: false,
                        success: function(response) {                            
                            $("#preloader").hide();
                            // Show success message using SweetAlert2
                            Swal.fire({
                                icon: 'success',
                                title: 'Success!',
                                text: 'Data saved successfully.',
                            }).then((result) => {
                                // Redirect to the registration payment page
                                // if (result.isConfirmed) {
                                //     // window.location.href = '{{ route("registation-payment.create") }}';
                                //     window.location.href = '{{ route("/") }}';
                                // }
                            });
                        },
                        error: function(xhr) {
                            // Hide loading indicator
                            $("#preloader").hide();
                            if (xhr.responseJSON && xhr.responseJSON.error) {
                                var errorMessage = xhr.responseJSON.message;
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error!',
                                    html:  errorMessage,
                                    text: 'All input values are not null or empty.',
                                });
                            } else {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error!',
                                    text: 'An error occurred. Please try again later.',
                                });
                            }
                            // Validaton
                            var errors = xhr.responseJSON.errors;
                            var errorHtml = '';
                            $.each(errors, function(field, messages) {
                                $.each(messages, function(key, value) {
                                    errorHtml += '<li style="color:red">' + value + '</li>';
                                });
                            });
        
                            // Display error message using Swal or your preferred method
                            Swal.fire({
                                icon: 'error',
                                title: 'Error!',
                                html: '<ul>' + errorHtml + '</ul>',
                                text: 'All input values are not null or empty.',
                            });
                        }
                    });
                });
            });
        </script>
    @endpush


    <div id='preloader' style="background-color: #252525cc;">
        <div id='loader'>
            <span class='loader'>
                <span class='loader-inner'></span>
            </span>
        </div>
    </div>


</x-guest-layout>