@extends('frontend.layouts.app')
@section('title', 'Notice-Details')
@section('content')
    <!-- Single News -->
    <section class="news-single section">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="row">
                        <div class="col-12">
                            <div class="single-main">
                                <!-- News Head -->
                                <div class="news-head" style="height: auto">
                                    <img src="{{asset('public/images')}}/blog/news-01.jpg" alt="#">
                                </div>
                                <!-- News Title -->
                                <h1 class="news-title"><a href="news-single.html">মৎস্য ও প্রাণিসম্পদ মন্ত্রীর সাথে বাফিটা প্রতিনিধিদলের মতবিনিময়</a></h1>
                                <!-- Meta -->
                                <div class="meta">
                                    <div class="meta-left">
                                        <span class="author"><a href="#"><img src="{{asset('public/images')}}/blog/notice-1.png" alt="#">BAFIITA</a></span>
                                        <span class="date"><i class="fa fa-clock-o"></i>29 October 2020</span>
                                    </div>
                                    <div class="meta-right">
                                        <span class="comments"><a href="#"><i class="fa fa-comments"></i>05 Comments</a></span>
                                        <span class="views"><i class="fa fa-eye"></i>33K Views</span>
                                    </div>
                                </div>
                                <!-- News Text -->
                                <div class="news-text">
                                    <p>এগ্রিলাইফ২৪ ডটকম:গণপ্রজাতন্ত্রী  বাংলাদেশ সরকার, মৎস্য ও প্রাণিসম্পদ মন্ত্রণালয়ের মাননীয় মন্ত্রী জনাব শ ম রেজাউল করিম (এম,পি) মহোদয়ের সাথে বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইম্পোটার্স এন্ড ট্রেডার্স এসোসিয়েশন (বাফিটা) এর প্রতিনিধিদের মতবিনিময় সভা অনুষ্ঠিত।</p>
                                    <p>২৮ অক্টোবর ( বুধবার) মৎস্য ও প্রাণিসম্পদ মন্ত্রণালয়ের সম্মেলন কক্ষে আয়োজিত এ সভায় বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইম্পোটার্স এন্ড ট্রেডার্স এসোসিয়েশন-এর সভাপতি বাবু সুধীর চৌধুরী নেতৃত্ব দেন। সভায় প্রাণিসম্পদ বিষয়ক প্রাণবন্ত ও স্বার্থ সংশ্লিষ্ট বিষয়গুলি
                                    নিয়ে গুরুত্বপূর্ণ আলোচনা করা হয়।
                                    এসময় আরো উপস্থিত ছিলেন মৎস্য ও প্রাণিসম্পদ মন্ত্রণালয়ের সচিব জনাব রওনক মাহমুদ, প্রাণিসম্পদ অধিদপ্তরের মহাপরিচালক ডাঃ আবদুল জব্বার শিকদার এবং  মন্ত্রণালয় ও ডিএলএস-এর উর্ধতন কর্মকর্তাবৃন্দ। বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইম্পোটার্স এন্ড ট্রেডার্স এসোসিয়েশন-এর সিনিয়র সহ-সভাপতি জনাব এ.এম আমিরুল ইসলাম ও সদস্য জনাব মোঃ গিয়াস উদ্দিন খানসহ এসোসিয়েশনের অন্যান্য প্রতিনিধিগন উপস্থিত ছিলেন।
                                </p><a href="http://agrilife24.com/2021/2018-02-24-11-10-23/4064-bafita-29oct.html">Source by: http://agrilife24.com/2021/2018-02-24-11-10-23/4064-bafita-29oct.html</a>
                                </div><br>
                                <div class="blog-bottom">
                                    <!-- Social Share -->
                                    <ul class="social-share">
                                        <li class="facebook"><a href="#"><i class="fa fa-facebook"></i><span>Facebook</span></a></li>
                                        <li class="twitter"><a href="#"><i class="fa fa-twitter"></i><span>Twitter</span></a></li>
                                        <li class="google-plus"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li class="linkedin"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li class="pinterest"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                    </ul>
                                    <!-- Next Prev -->
                                    <ul class="prev-next">
                                        <li class="prev"><a href="#"><i class="fa fa-angle-double-left"></i></a></li>
                                        <li class="next"><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                                    </ul>
                                    <!--/ End Next Prev -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="main-sidebar">
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
                                    <h5><a href="#">We have annnocuced our new product.</a></h5>
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
                                    <img src="{{asset('public/images')}}/blog/news-01.jpg" alt="#">
                                </div>
                                <div class="content">
                                    <h5><a href="#">Top five way for solving teeth problems.</a></h5>
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
                                    <img src="{{asset('public/images')}}/blog/news-01.jpg" alt="#">
                                </div>
                                <div class="content">
                                    <h5><a href="#">We provide highly business soliutions.</a></h5>
                                    <ul class="comment">
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>June 09, 2019</li>
                                        <li><i class="fa fa-commenting-o" aria-hidden="true"></i>44</li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Single Post -->
                        </div>
                        <!--/ End Single Widget -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ End Single News -->
@endsection

