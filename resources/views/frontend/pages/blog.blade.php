@extends('frontend.layouts.app')
@section('title', 'Notice & News')
@section('content')

    <!-- Single News -->
    <section class="news-single section">
        <div class="container">
            <div class="row blog section">
                <div class="col-lg-8 col-12">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-12">
                            <!-- Single Blog -->
                            <div class="single-news">
                                <div class="news-head">
                                    <img src="{{asset('public/images')}}/blog/news-01.jpg" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i> 29 October 2020</p>
                                        <h2><a href="blog-single.html">মৎস্য ও প্রাণিসম্পদ মন্ত্রীর সাথে বাফিটা প্রতিনিধিদলের মতবিনিময়</a></h2>
                                        <p class="text">এগ্রিলাইফ২৪ ডটকম:গণপ্রজাতন্ত্রী  বাংলাদেশ সরকার, মৎস্য ও প্রাণিসম্পদ মন্ত্রণালয়ের মাননীয় মন্ত্রী জনাব শ ম রেজাউল করিম (এম,পি) মহোদয়ের সাথে বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইম্পোটার্স এন্ড ট্রেডার্স এসোসিয়েশন (বাফিটা) এর প্রতিনিধিদের মতবিনিময় সভা অনুষ্ঠিত।</p>
                                        <div class="d-flex justify-content-center mt-4">
                                            <div class="button">
                                                <a href="{{route('page.blog-details')}}" class="btn text-white">More Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Blog -->
                        </div>
                        <div class="col-lg-6 col-md-6 col-12">
                            <!-- Single Blog -->
                            <div class="single-news">
                                <div class="news-head">
                                    <img src="{{asset('public/images')}}/blog/news-02.jpg" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i>  08 February 2023</p>
                                       <h2><a href="blog-single.html">বাফিটা পরিবারের সকল সদস্য একই সূত্রে গাঁথা-সুধীর চৌধুরী</a></h2>
                                <p class="text">এগ্রিলাইফ প্রতিনিধি: বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইমপোটার্স এন্ড ট্রেডার্স অ্যাসোসিয়েশন (বাফিটা) পরিবারের সকল সদস্য একই সূত্রে গাঁথা। সুখে দুখে তারা সব সময় এক সাথে চলতে চান, এক হয়ে থাকতে চান। 
                                        <div class="d-flex justify-content-center mt-4">
                                            <div class="button">
                                                <a href="{{route('page.blog-details')}}" class="btn text-white">More Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Blog -->
                        </div>
                        <div class="col-lg-6 col-md-6 col-12">
                            <!-- Single Blog -->
                            <div class="single-news">
                                <div class="news-head">
                                    <img src="{{asset('public/images')}}/blog/news-04.jpg" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i> 17 August 2023</p>
                                         <h2><a href="blog-single.html">এফবিসিসিআই-এর নব নির্বাচিত কমিটিকে শুভেচ্ছা জানালো বাফিটা</a></h2>
                                <p class="text">রাজধানী প্রতিনিধি: বাফিটা’র প্রতিষ্ঠাতা সভাপতি বাবু সুধীর চৌধুরীর নেতৃত্বে ব্যবসায়ীদের শীর্ষ সংগঠন দি ফেডারেশন অব বাংলাদেশ চেম্বার্স অব কমার্স অ্যান্ড ইন্ডাস্ট্রি (এফবিসিসিআই)-এর নব নির্বাচিত কমিটিকে শুভেচ্ছা জানালো বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইম্পোর্টার্স এন্ড ট্রেডার্স </p>
                                        <div class="d-flex justify-content-center mt-4">
                                            <div class="button">
                                                <a href="{{route('page.blog-details')}}" class="btn text-white">More Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Blog -->
                        </div>
                     <div class="col-lg-6 col-md-6 col-12">
                            <!-- Single Blog -->
                            <div class="single-news">
                                <div class="news-head">
                                    <img src="{{asset('public/images')}}/blog/news-03.jpg" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i> 16 January 2023</p>
                                         <h2><a href="blog-single.html">প্রাণিসম্পদ খাতকে শক্তিশালী করতে সবাইকে এগিয়ে আসার আহবানটা</a></h2>
                                <p class="text">এগ্রিলাইফ২৪ ডটকম:আমিষের একটি বড় অংশ যোগানে গুরুত্বপূর্ণ ভূমিকা রাখছে প্রাণি সম্পদের সাথে জড়িত ব্যক্তিবর্গরা। দেশের প্রাণিসম্পদ খাতের সকল পর্যায়ের ব্যাক্তিবগের্র মধ্যে সেতুবন্ধন তৈরীর এবং উন্নয়নের লক্ষ্যে বাংলাদেশ লাইভস্টক সোসাইটির কার্যক্রম</p> 
                                        <div class="d-flex justify-content-center mt-4">
                                            <div class="button">
                                                <a href="{{route('page.blog-details')}}" class="btn text-white">More Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Blog -->
                        </div>
                              <div class="col-lg-6 col-md-6 col-12">
                            <!-- Single Blog -->
                            <div class="single-news">
                                <div class="news-head">
                                    <img src="{{asset('public/images')}}/blog/news-05.jpg" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i> ০৬ অক্টোবর ২০২৩</p>
                                         <h2><a href="blog-single.html">সয়াবিন মিল আমদানিতে কর দিতে হবে না</a></h2>
                                <p class="text">পোলট্রি, মৎস্য ও ডেইরি ফিড (খাদ্য) তৈরির অত্যাবশকীয় পণ্য সয়াবিন মিলের ওপর আরোপিত কর প্রত্যাহার করেছে সরকার। এ ব্যাপারে সম্প্রতি একটি প্রজ্ঞাপন জারি করেছে অর্থ মন্ত্রণালয়। ফলে এখন থেকে আর কর </p> 
                                        <div class="d-flex justify-content-center mt-4">
                                            <div class="button">
                                                <a href="{{route('page.blog-details')}}" class="btn text-white">More Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Blog -->
                        </div>
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

