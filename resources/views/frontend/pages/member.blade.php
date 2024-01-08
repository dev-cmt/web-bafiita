@extends('frontend.layouts.app')

@if ($membersType == 0)
    @section('title', 'All Members Bodies List')
@elseif ($membersType == 1)
    @section('title', 'Donor Member Group')
@elseif($membersType == 2)
    @section('title', 'General Member Group')
@endif

@section('content')
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="py-5 my-4">
        <div class="container">
            <div class="section-title">
                @if ($membersType == 0)
                    <h2>All Members Bodies List</h2>
                @elseif ($membersType == 1)
                    <h2>Donor Member Group</h2>
                @elseif($membersType == 2)
                    <h2>General Member Group</h2>
                @endif
                <img src="{{asset('public/images')}}/section-img.png" alt="#">
            </div>
                        <div class="row">
                @if ($membersType == 1)
                    <div class="col-lg-3 mb-3">
                        <div class="hover_card_pages wow slideInUp" data-wow-delay="0.3s">
                            <div class="imgBx">
                                <img src="{{asset('public/images')}}/member-pic/Sudhir Chowdhury.jpg" alt="images">
                            </div>
                            <div class="hover_card_details">
                                <h2>Sudhir Chowdhury (Proprietor)</h2>
                                <h2><span>M/S. Chowdhury Enterprise</span></h2>
                            </div>
                            <!-- Button trigger modal -->
                            <button type="button" class="member_dettails_btn btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Details</button>
                            {{-- <a href="{{route('page.member-details', 1)}}" class="member_dettails_btn btn btn-primary mt-4">Details</a> --}}
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="hover_card_pages wow slideInUp" data-wow-delay="0.3s">
                            <div class="imgBx">
                                <img src="{{asset('public/images')}}/member-pic/Md. Sabir Hossain.jpg" alt="images">
                            </div>
                            <div class="hover_card_details">
                                <h2>Md. Sabir Hossain (Proprietor)</h2>
                                <h2><span>M.S Trading</span></h2>
                            </div>
                            <!-- Button trigger modal -->
                            <button type="button" class="member_dettails_btn btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Details</button>
                        </div>
                    </div>
                @elseif ($membersType == 2)
                    <div class="col-lg-3 mb-3">
                        <div class="hover_card_pages wow slideInUp" data-wow-delay="0.3s">
                            <div class="imgBx">
                                <img src="{{asset('public/images')}}/member-pic/Md. Sabir Hossain.jpg" alt="images">
                            </div>
                            <div class="hover_card_details">
                               <h2>Md. Sabir Hossain (Proprietor)</h2>
                                <h2><span>M.S Trading</span></h2>
                            </div>
                            <!-- Button trigger modal -->
                            <button type="button" class="member_dettails_btn btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Details</button>
                        </div>
                    </div>
                    
                @endif
            </div>


            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-7 col-sm-12">
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Member Type</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">Donor Member</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Membership No.</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">DMB#001</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Name</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">Sudhir Chowdhury</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Company Name</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">M/S. Chowdhury Enterprise</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Designation</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">Proprietor</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Company Address</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">Rupayon Z.R Plaza, (8th floor), 46, Satmosjid
                                            Road, Dhanmondi-19, Dhaka-1209.</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Contact No.</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">01711-53-30-35</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Contact Email</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">choenterprise@yahoo.com</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Membership Start</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">02-01-2023</div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-md-5"><strong>Products/Service</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">Agro Feed Ingredients</div>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-sm-12 d-flex align-items-center">
                                    <div class="news-head" style="height: auto; width: 100%;">
                                        <img src="{{asset('public/images')}}/blog/notice-3.jpeg" alt="#" style="width: 100%; height: auto;">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End Contact Section -->

@endsection