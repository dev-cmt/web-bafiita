@extends('frontend.layouts.app')
@section('title', 'Notice & News')
@section('content')

    <!-- Single News -->
    <section class="news-single section">
        <div class="container">
            <div class="row blog section">
                <div class="col-lg-8 col-12">
                    <div class="row">
                        @foreach ($data as $item)
                        <div class="col-lg-6 col-md-6 col-12">
                            <!-- Single Blog -->
                            <div class="single-news">
                                <div class="news-head">
                                    <img src="{{asset('public')}}/{{$item->image_path}}" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i> {{ $item->created_at->format('d F Y') }}</p>
                                        <h2><a href="{{route('page.blog-details', $item->id)}}">{{$item->title}}</a></h2>
                                        <div class="d-flex justify-content-center mt-4">
                                            <div class="button">
                                                <a href="{{route('page.blog-details', $item->id)}}" class="btn text-white">More Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Blog -->
                        </div>
                        @endforeach
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="main-sidebar mt-0">
                        <!-- Single Widget -->
                        <div class="single-widget search">
                            <div class="form">
                                <input type="email" placeholder="Search Here...">
                                <a class="button" href="#"><i class="fa fa-search"></i></a>
                            </div>
                        </div>
                        <!--/ End Single Widget -->

                        <!-- Single Widget -->
                        <!--/ End Single Widget -->

                        <!-- Single Widget -->
                        <div class="single-widget recent-post">
                            <h3 class="title">Notice & News</h3>
                            <!-- Single Post -->
                            <div class="single-post">
                                <div class="image">
                                    <img src="{{asset('public/images')}}/blog/news-01.jpg" alt="#">
                                </div>
                                <div class="content">
                                    <h5><a href="#">মৎস্য ও প্রাণিসম্পদ মন্ত্রীর সাথে বাফিটা প্রতিনিধিদলের মতবিনিময়</a></h5>
                                    <ul class="comment">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>Jan 11, 2020</li>
                                        <li><i class="fa fa-commenting-o" aria-hidden="true"></i>35</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Post -->
                            <!-- Single Post -->
                            <div class="single-post">
                                <div class="image">
                                    <img src="{{asset('public/images')}}/blog/news-02.jpg" alt="#">
                                </div>
                                <div class="content">
                                    <h5><a href="#">বাফিটা পরিবারের সকল সদস্য একই সূত্রে গাঁথা-সুধীর চৌধুরী</a></h5>
                                    <ul class="comment">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>Mar 05, 2019</li>
                                        <li><i class="fa fa-commenting-o" aria-hidden="true"></i>59</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Post -->
                            <!-- Single Post -->
                            <div class="single-post">
                                <div class="image">
                                    <img src="{{asset('public/images')}}/blog/news-04.jpg" alt="#">
                                </div>
                                <div class="content">
                                    <h5><a href="#">এফবিসিসিআই-এর নব নির্বাচিত কমিটিকে শুভেচ্ছা জানালো বাফিটা</a></h5>
                                    <ul class="comment">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>June 09, 2019</li>
                                        <li><i class="fa fa-commenting-o" aria-hidden="true"></i>44</li>
                                    </ul>
                                </div>
                            </div>
                              <div class="single-post">
                                <div class="image">
                                    <img src="{{asset('public/images')}}/blog/news-03.jpg" alt="#">
                                </div>
                                <div class="content">
                                    <h5><a href="#">প্রাণিসম্পদ খাতকে শক্তিশালী করতে সবাইকে এগিয়ে আসার আহবানা</a></h5>
                                    <ul class="comment">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>June 09, 2019</li>
                                        <li><i class="fa fa-commenting-o" aria-hidden="true"></i>44</li>
                                    </ul>
                                </div>
                            </div>
                                <div class="single-post">
                                <div class="image">
                                    <img src="{{asset('public/images')}}/blog/news-05.jpg" alt="#">
                                </div>
                                <div class="content">
                                    <h5><a href="#">সয়াবিন মিল আমদানিতে কর দিতে হবে না</a></h5>
                                    <ul class="comment">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>June 09, 2019</li>
                                        <li><i class="fa fa-commenting-o" aria-hidden="true"></i>44</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Post -->
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ End Single News -->
@endsection

