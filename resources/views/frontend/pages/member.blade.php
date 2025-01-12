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


                    </div>
                @endforeach


            </div>
        </div>
    </section><!-- End Contact Section -->

@endsection