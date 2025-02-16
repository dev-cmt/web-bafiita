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

            <div class="d-flex justify-content-between">
                <div class="nav nav-tabs" id="myTab" role="tablist">
                    <!-- List Tab Button -->
                    <button class="nav-link active" id="list-tab" data-toggle="tab" data-target="#list-tab-pane" type="button" role="tab" aria-controls="list-tab-pane" aria-selected="true">
                        <svg width="16" height="15" viewBox="0 0 16 15" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M15 7.11108H1" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                            <path d="M15 1H1" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                            <path d="M15 13.2222H1" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                    </button>
                    <!-- Grid Tab Button -->
                    <button class="nav-link" id="grid-tab" data-toggle="tab" data-target="#grid-tab-pane" type="button" role="tab" aria-controls="grid-tab-pane" aria-selected="false">
                        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M16.3327 6.01341V2.98675C16.3327 2.04675 15.906 1.66675 14.846 1.66675H12.1527C11.0927 1.66675 10.666 2.04675 10.666 2.98675V6.00675C10.666 6.95341 11.0927 7.32675 12.1527 7.32675H14.846C15.906 7.33341 16.3327 6.95341 16.3327 6.01341Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                            <path d="M16.3327 15.18V12.4867C16.3327 11.4267 15.906 11 14.846 11H12.1527C11.0927 11 10.666 11.4267 10.666 12.4867V15.18C10.666 16.24 11.0927 16.6667 12.1527 16.6667H14.846C15.906 16.6667 16.3327 16.24 16.3327 15.18Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                            <path d="M7.33268 6.01341V2.98675C7.33268 2.04675 6.90602 1.66675 5.84602 1.66675H3.15268C2.09268 1.66675 1.66602 2.04675 1.66602 2.98675V6.00675C1.66602 6.95341 2.09268 7.32675 3.15268 7.32675H5.84602C6.90602 7.33341 7.33268 6.95341 7.33268 6.01341Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                            <path d="M7.33268 15.18V12.4867C7.33268 11.4267 6.90602 11 5.84602 11H3.15268C2.09268 11 1.66602 11.4267 1.66602 12.4867V15.18C1.66602 16.24 2.09268 16.6667 3.15268 16.6667H5.84602C6.90602 16.6667 7.33268 16.24 7.33268 15.18Z" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                    </button>
                </div>
                <form method="GET" action="{{ route('search.member') }}" class="d-flex my-1">
                    <input type="hidden" name="member_type" value="{{$membersType}}">
                    <input type="text"  name="search-member" id="search-member" class="form-control px-4" placeholder="Search..." value="{{ request('search-member') }}">
                    <button class="btn btn-primary ml-2" type="submit">MEMBER FIND</button>
                </form>
            </div>

            <div class="tab-content mt-3">
                <div class="tab-pane fade show active" id="list-tab-pane" role="tabpanel" aria-labelledby="list-tab">
                    <!--List View-->
                    <div class="row">
                        @foreach ($data as $key=> $row )
                        <div class="col-md-3 p-3">
                            <div class="card ">
                                <!-- Custom CSS -->
                                <style>
                                    .hover-pointer {
                                        cursor: pointer; /* Makes the cursor a pointer when hovering */
                                        transition: color 0.2s ease; /* Smooth color transition */
                                    }
                                    .hover-pointer:hover {
                                        color: #007bff; /* Change text color on hover */
                                        text-decoration: underline; /* Optional underline on hover */
                                    }
                                </style>
                                <div class="card-body">
                                    <h7 class="text-success hover-pointer" data-toggle="modal" data-target="#exampleModalCenter_{{ $row->id }}">{{$row->name}}</h7>
                                    <h6 class="text-info hover-pointer" data-toggle="modal" data-target="#exampleModalCenter_{{ $row->id }}"><span>{{$row->infoCompany->companyName ??'null'}}</span></h6>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="tab-pane fade" id="grid-tab-pane" role="tabpanel" aria-labelledby="grid-tab">
                    <!--Grid View-->
                    <div class="row">
                        @foreach ($data as $key=> $row )
                            <div class="col-lg-3 mb-3">
                                <div class="hover_card_pages wow slideInUp" data-wow-delay="0.3s">
                                    <div class="imgBx">
                                        <img src="{{ asset('public/images/profile/'. $row->profile_photo_path) }}" alt="images">
                                    </div>
                                    <div class="hover_card_details">
                                        <h2>{{$row->name}}</h2>
                                        <h2><span>{{$row->infoCompany->companyName ??'null'}}</span></h2>
                                    </div>
            
                                </div>
                                
                                <!-- Button trigger modal -->
                                <div class="d-flex justify-content-center mt-2">
                                    <button type="button" class="member_dettails_btn btn btn-primary text-center" data-toggle="modal" data-target="#exampleModalCenter_{{ $row->id }}">Details</button>
                                </div>
                                {{-- <a href="{{route('page.member-details', 1)}}" class="member_dettails_btn btn btn-primary mt-4">Details</a> --}}
                        
                                

                            </div>
                        @endforeach
                    </div>
                </div>
            </div>


            @foreach ($data as $key=> $row )
            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter_{{ $row->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">Member Information</h5>
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
                                        <div class="col-md-6">{{$row->memberType->name}}</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Membership No.</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">{{$row->member_code}}</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Name</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">{{$row->name}}</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Company Name</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">{{$row->infoCompany->companyName}}</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Designation</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">
                                            @switch($row->infoPersonal->memebrDesignation)
                                                @case(1)
                                                    Proprietor
                                                    @break
                                                @case(2)
                                                    Managing Director
                                                    @break
                                                @case(3)
                                                    Chairman
                                                    @break
                                                @case(4)
                                                    CEO
                                                    @break
                                                @case(5)
                                                    Partner
                                                    @break
                                                @case(6)
                                                    Director
                                                    @break
                                                @default
                                                    Unknown
                                            @endswitch
                                        </div>
                                        
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Company Address</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">{{$row->infoCompany->addressOrganization}}</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Contact No.</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">{{$row->infoPersonal->memberPhoneNo}}</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Contact Email</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">{{$row->infoPersonal->memberEmail}}</div>
                                    </div>
                                    
                                    <div class="row" style="border-bottom: 1px solid #959595;">
                                        <div class="col-md-5"><strong>Membership Start</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">{{$row->join_date}}</div>
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-md-5"><strong>Products/Service</strong></div>
                                        <div class="col-md-1"><strong>:</strong></div>
                                        <div class="col-md-6">N/A</div>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-sm-12 d-flex align-items-center">
                                    <div class="news-head" style="height: auto; width: 100%;">
                                        <img src="{{ asset('public/images/profile/'. $row->profile_photo_path) }}" alt="#" style="width: 100%; height: auto;">
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
            @endforeach




        </div>
    </section><!-- End Contact Section -->

@endsection