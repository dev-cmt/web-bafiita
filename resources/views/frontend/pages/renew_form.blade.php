@extends('frontend.layouts.app')
@section('title', 'Renew-Membership')
@section('style')
    <style>
        .input-hidden {
            position: absolute;
            left: -9999px;
        }
        input[type=radio]:checked + label>img {
            border: 1px solid #fff;
            box-shadow: 0 0 3px 3px #ff0000;
        }
        input[type=radio] + label>img {
            border: 1px dashed #444;
            width: 95px;
            height: 95px;
            transition: 500ms all;
            margin-bottom: 10px;
        }
        input[type=radio]:checked + label>img {
            transform: scale(0.8);
        }
        .box{
            display: none;
        }
    </style>
@endsection
@section('content')
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
        <div class="container">
            <div class="row py-5">
                
                <div class="col-lg-12 py-3 m-auto">
                    <div class="alert alert-danger alert-dismissible fade show error_message" role="alert">
                      <strong>Sorry. Not Found!</strong> This id not match in record. Please try anyother Number.
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="d-flex">
                          <input type="text" name="member_code" id="member-code" class="form-control @error('member_code') is-invalid @enderror px-4" placeholder="Enter Your Member-ID..." value="{{ Auth::user()->member_code ?? '' }}">
                          <button class="btn btn-primary ml-2" id="find-member">MEMBER FIND</button>
                    </div>
                    
                </div>
                <div class="col-lg-6 member_info">
                    <div class="card" style="border-radius: 0">
                        <div class="card-header pt-4">
                            <h4 class="card-title">Memeber Details</h4>
                        </div>
                        <div class="card-body">
                            <div class="bootstrap-media">
                                <div class="row d-flex justify-content-center">
                                    <div class="col-lg-12 text-center">
                                        <img class="img-fluid rounded" id="memberProfilePhoto" width="120" src="{{ asset('public') }}/images/profile/{{auth::user()->profile_photo_path ?? ''}}" alt="">
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-sm-6 col-5">
                                        <h5 class="f-w-500">Member ID <span class="pull-right">:</span></h5>
                                    </div>
                                    <div class="col-sm-6 col-7"><span id="memberCode">{{Auth::user()->member_code ?? ''}}</span></div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-sm-6 col-5">
                                        <h5 class="f-w-500">Name <span class="pull-right">:</span>
                                        </h5>
                                    </div>
                                    <div class="col-sm-6 col-7"><span id="memberName">{{Auth::user()->name ?? ''}}</span>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-sm-6 col-5">
                                        <h5 class="f-w-500">Email <span class="pull-right">:</span>
                                        </h5>
                                    </div>
                                    <div class="col-sm-6 col-7"><span id="memberEmail">{{Auth::user()->email ?? ''}}</span>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-sm-6 col-5">
                                        <h5 class="f-w-500">Member Type <span class="pull-right">:</span>
                                        </h5>
                                    </div>
                                    <div class="col-sm-6 col-7"><span id="memberType">{{Auth::user()->memberType->name ?? ''}}</span>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-sm-6 col-5">
                                        <h5 class="f-w-500">Joining Date <span class="pull-right">:</span>
                                        </h5>
                                    </div>
                                    <div class="col-sm-6 col-7"><span id="memberJoin">{{Auth::user()->join_date ?? ''}}</span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 form member_info">
                    <form action="{{route('member_renew.store')}}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <input type="hidden" name="member_id" id="memberId" value="{{ Auth::user()->id ?? '' }}">
                        
                        <div class="row mb-2">
                            <div class="col-md-12">
                                <div class="text-center mb-4 pb-4" style="border-bottom: 1px solid #222; border-bottom-style: dotted;">
                                    <h5>Bank Account of Bangladesh Agro Feed Ingredients</h5>
                                    <h5>Importers and Traders Association</h5>
                                </div>
                                <div class="row">
                                    <label class="form-label col-md-5"><strong>Account Name</strong></label>
                                    <label class="form-label col-md-1">:</label>
                                    <label class="form-label col-md-6">BAFIITA</label>
                                </div>
                                <div class="row">
                                    <label class="form-label col-md-5"><strong>Account No</strong></label>
                                    <label class="form-label col-md-1">:</label>
                                    <label class="form-label col-md-6">SND:2706102000862</label>
                                </div>
                                <div class="row">
                                    <label class="form-label col-md-5"><strong>Bank Name</strong></label>
                                    <label class="form-label col-md-1">:</label>
                                    <label class="form-label col-md-6">PUBALI BANK LTD.</label>
                                </div>
                                <div class="row">
                                    <label class="form-label col-md-5"><strong>Branch Name</strong></label>
                                    <label class="form-label col-md-1">:</label>
                                    <label class="form-label col-md-6">Asad Avenue Branch, Mohammadpur, Dhaka-1207</label>
                                </div>
                            </div>
                        </div>
                        <hr>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label class="form-label">Bank & Branch Name</label>
                                <input type="text" name="bankBranceName" class="form-control @error('bankBranceName') is-invalid @enderror" value="{{ old('bankBranceName') }}">
                                @error('bankBranceName')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Total Amount (BDT)</label>
                                <input type="number" name="totalAmount" class="form-control @error('totalAmount') is-invalid @enderror" value="{{ old('totalAmount') }}">
                                @error('totalAmount')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Payment Date</label>
                                <input type="date" name="paymentDate" class="form-control @error('paymentDate') is-invalid @enderror" value="{{ old('paymentDate') }}">
                                @error('paymentDate')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Mode of Payment</label>
                                <input type="text" name="modePayment" class="form-control" value="Bank" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Add Payment Slip</label>
                                <input type="file" name="fileSlip" class="form-control @error('fileSlip') is-invalid @enderror">
                                @error('fileSlip')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Money Receipt No</label>
                                <input type="text" name="moneyReceiptNo" class="form-control" value="Print Using Provite" readonly>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Update Tax Certificate</label>
                                <input type="file" name="fileTaxCertificate" class="form-control @error('fileTaxCertificate') is-invalid @enderror">
                                @error('fileTaxCertificate')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Update Trade License</label>
                                <input type="file" name="fileTradeLicense" class="form-control @error('fileTradeLicense') is-invalid @enderror">
                                @error('fileTradeLicense')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-10 mt-2">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>

        </div>
    </section><!-- End Contact Section -->

@endsection
@section('script')
    <script>
        $(document).ready(function() {
            $('.member_info').hide();
            $('.error_message').hide();

            var memberCode = $('#member-code').val();
            getMember(memberCode);

            $('#find-member').click(function() {
                var memberCode = $('#member-code').val();
                getMember(memberCode);
            });

            function getMember(memberCode){
                if (!memberCode) {
                    alert("Please enter a Member ID!");
                    return;
                }
                $.ajax({
                    url: "{{ route('member.find') }}", // Replace with your actual route
                    method: "POST",
                    data: {
                        _token: "{{ csrf_token() }}",
                        member_code: memberCode
                    },
                    success: function(response) {
                        if (response.success) {
                            $('.member_info').show();
                            $('.error_message').hide();

                            let member = response; // Extract member details from response

                            // Update UI with member information
                            $('#memberId').val(member.id);
                            $('#memberCode').text(member.member_code);
                            $('#memberName').text(member.name);
                            $('#memberEmail').text(member.email);
                            $('#memberType').text(member.member_type);
                            $('#memberJoin').text(member.join_date);

                            // Update profile photo if available
                            if (member.profile_photo_path) {
                                $('#memberProfilePhoto').attr('src', "{{ asset('public') }}/images/profile/" + member.profile_photo_path);
                            }
                        } else {
                            $('.error_message').show().text(response.message);
                            $('.member_info').hide();
                        }
                    },
                    error: function(xhr) {
                        $('.error_message').show().text("Error fetching member data.");
                        $('.member_info').hide();
                    }
                });
            }
        });
    </script>
@endsection