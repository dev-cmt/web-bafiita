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
                @if ($membersType == 1 || $membersType == 0)
                    <div class="col-lg-3 mb-3">
                        <div class="hover_card_pages wow slideInUp" data-wow-delay="0.3s">
                            <div class="imgBx">
                                <img src="{{asset('public/images')}}/member-pic/Roksana.jpeg" alt="images">
                            </div>
                            <div class="hover_card_details">
                                <h2>IDr. Shafiul Islam</h2>
                                <h2><span>Convener</span></h2>
                                <h4><span>IDr. Shafiul Islam</span></h4>
                            </div>
                            <!-- Button trigger modal -->
                            <button type="button" class="member_dettails_btn btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Details</button>
                            {{-- <a href="{{route('page.member-details', 1)}}" class="member_dettails_btn btn btn-primary mt-4">Details</a> --}}
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="hover_card_pages wow slideInUp" data-wow-delay="0.3s">
                            <div class="imgBx">
                                <img src="{{asset('public/images')}}/member-pic/Shahiddullah.jpeg" alt="images">
                            </div>
                            <div class="hover_card_details">
                                <h2>IDr. Shafiul Islam</h2>
                                <h2><span>Convener</span></h2>
                                <h4><span>IDr. Shafiul Islam</span></h4>
                            </div>
                            <!-- Button trigger modal -->
                            <button type="button" class="member_dettails_btn btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Details</button>
                        </div>
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
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam nostrum odio id beatae quod. Numquam, hic, eum officia accusamus amet unde repudiandae labore cum dicta est quidem sequi reprehenderit debitis!</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                @endif
            </div>

        </div>
    </section><!-- End Contact Section -->

@endsection