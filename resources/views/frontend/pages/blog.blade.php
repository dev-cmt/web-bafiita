@extends('frontend.layouts.app')
@section('title', 'Notice')
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
                                    <img src="{{asset('public/images')}}/blog/notice-1.jpeg" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i> Mar 05, 2019</p>
                                        <h2><a href="blog-single.html">We have annnocuced our new product.</a></h2>
                                        <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
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
                                    <img src="{{asset('public/images')}}/blog/notice-2.jpeg" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i> Mar 05, 2019</p>
                                        <h2><a href="blog-single.html">Top five way for solving teeth problems.</a></h2>
                                        <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
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
                                    <img src="{{asset('public/images')}}/blog/notice-3.jpeg" alt="#">
                                </div>
                                <div class="news-body">
                                    <div class="news-content mt-0">
                                        <p><i class="fa fa-calendar" aria-hidden="true"></i> Mar 05, 2019</p>
                                        <h2><a href="blog-single.html">We provide highly business soliutions.</a></h2>
                                        <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
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
                        <div class="single-widget category">
                            <h3 class="title">Blog Categories</h3>
                            <ul class="categor-list">
                                <li><a href="#">Men's Apparel</a></li>
                                <li><a href="#">Women's Apparel</a></li>
                                <li><a href="#">Bags Collection</a></li>
                                <li><a href="#">Accessories</a></li>
                                <li><a href="#">Sun Glasses</a></li>
                            </ul>
                        </div>
                        <!--/ End Single Widget -->

                        <!-- Single Widget -->
                        <div class="single-widget recent-post">
                            <h3 class="title">Recent post</h3>
                            <!-- Single Post -->
                            <div class="single-post">
                                <div class="image">
                                    <img src="{{asset('public/images')}}/blog/notice-1.jpeg" alt="#">
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
                                    <img src="{{asset('public/images')}}/blog/notice-2.jpeg" alt="#">
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
                                    <img src="{{asset('public/images')}}/blog/notice-3.jpeg" alt="#">
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
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ End Single News -->
@endsection

