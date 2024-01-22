@extends('frontend.layouts.app')
@section('content')
    
    <!-- Start clients -->
    {{--<div class="clients overlay" style="background-image:url('{{asset('public/images')}}/pages/bg-clients.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="owl-carousel clients-slider">
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client1.png" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client2.png" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client3.png" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client4.png" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client5.png" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client1.png" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client2.png" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client3.png" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="{{asset('public/frontend')}}/img/client4.png" alt="#">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--}}
    <!--/Ens clients -->


    <!-- Traders Association -->
    {{--<section class="why-choose section" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>An Agro Based Ingredients Importers And Traders Association</h2>
                        <img src="{{asset('public/images')}}/section-img.png" alt="#">
                    </div>
                </div>
            </div>
           <div class="row">
                <div class="col-lg-3 col-12">
                    <div class="card">
                        <!-- News Head -->
                        <div class="news-head" style="height: auto">
                            <img src="{{asset('public/images')}}/home/Sudhir Chowdhury.jpg" alt="#">
                        </div>
                        <h5 class="text-center mt-4"><strong> Sudhir Chowdhury</strong></h5>
                        <h5 class="text-center my-2 text-success">Founder President</h5>
                    </div>
                </div>
                <div class="col-lg-3 col-12">
                    <div class="card">
                        <!-- News Head -->
                        <div class="news-head" style="height: auto">
                            <img src="{{asset('public/images')}}/home/Md. Helal Uddin.jpg" alt="#">
                        </div>
                        <h5 class="text-center mt-4"><strong> Md. Helal Uddin</strong></h5>
                        <h5 class="text-center my-2 text-success">Secretary General</h5>
                    </div>
                </div>
            </div>
        </div>
    </section>--}}
    <!--End Traders Association-->

    <!-- Start Why choose -->
    <section class="why-choose section-bg" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Welcome To BAFIITA</h2>
                        <img src="{{asset('public/images')}}/section-img.png" alt="#">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-12">
                    <!-- Start Choose Left -->
                    <div class="choose-left">
                        <h3>Bangladesh Agro Feed Ingredients Importers and Traders Association (BAFIITA)</h3>
                        <p class="my-2">Dear Patrons,</p>
                        <p class="m-0">Welcome to website introduction of Bangladesh Agro Feed
                            Ingredients Importers and Traders Association (BAFIITA), BAFIITA
                            as the apex Importers and Traders body registered with the Ministry of
                            Commerce of People&#39;s Republic of Bangladesh Registration No: TO-
                            944/2017, since 2017 to conduct in the country continues its pivotal role
                            in consultative and advisory capacity in the formulation of Poultry,
                            Fisheries And Dairy Feed ingredients, Feed additives &amp;
                            Supplements of the Government. BAFIITA actively represents and
                            contributes in all forums related to Socio- Economic Development
                            and Government for mutual sharing of views on all vital issues
                            concerning and affecting the national economy.</p>

                        {{-- <div class="row">
                            <div class="col-lg-6">
                                <ul class="list">
                                    <li><i class="fa fa-caret-right"></i>Maecenas vitae luctus nibh. </li>
                                    <li><i class="fa fa-caret-right"></i>Duis massa massa.</li>
                                    <li><i class="fa fa-caret-right"></i>Aliquam feugiat interdum.</li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <ul class="list">
                                    <li><i class="fa fa-caret-right"></i>Maecenas vitae luctus nibh. </li>
                                    <li><i class="fa fa-caret-right"></i>Duis massa massa.</li>
                                    <li><i class="fa fa-caret-right"></i>Aliquam feugiat interdum.</li>
                                </ul>
                            </div>
                        </div> --}}

                    </div>
                    <!-- End Choose Left -->
                </div>
                <div class="col-lg-6 col-12">
                    <!-- Start Choose Rights -->
                   {{--<div class="row mt-4">
                        <div class="col-lg-6 col-6">
                            <!-- News Head -->
                            <div class="news-head" style="height: auto">
                                <img src="{{asset('public/images')}}/home/A.M Amirul Islam Bhuiyam.jpg" alt="#">
                            </div>
                            
                            <h6 class="text-center mt-4"><strong> A.M Amirul Islam Bhuiyan</strong></h6>
                            <h6 class="text-center my-2 text-success">President</h6>
                        </div>
                        <div class="col-lg-6 col-6">
                            <!-- News Head -->
                            <div class="news-head" style="height: auto">
                                <img src="{{asset('public/images')}}/home/Joyanta Kumer Deb.jpg" alt="#">
                            </div>
                            
                            <h6 class="text-center mt-4"><strong>Joyanta Kumar Deb</strong></h6>
                            <h6 class="text-center my-2 text-success">Secretary General</h6>
                        </div>
                        
                    </div>--}}
                     <div class="choose-right" style="background: url({{asset('public/images')}}/home/about_logo.png); background-position: center; background-size: cover;border:1px solid #109033"></div> 
                    <!-- End Choose Rights -->
                </div>
                
            </div>
        </div>
    </section>
    <!--/ End Why choose -->


    <!-- Start Fun-facts -->
    <div id="fun-facts" class="fun-facts section overlay" style="background-image:url('{{asset('public/images')}}/pages/bg-count.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun">
                        <i class="icofont icofont-home"></i>
                        <div class="content">
                            <span class="counter">3468</span>
                            <p>Hospital Rooms</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun">
                        <i class="icofont icofont-user-alt-3"></i>
                        <div class="content">
                            <span class="counter">557</span>
                            <p>Specialist Doctors</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun">
                        <i class="icofont-simple-smile"></i>
                        <div class="content">
                            <span class="counter">4379</span>
                            <p>Happy Patients</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun">
                        <i class="icofont icofont-table"></i>
                        <div class="content">
                            <span class="counter">32</span>
                            <p>Years of Experience</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
            </div>
        </div>
    </div>
    <!--/ End Fun-facts -->
    
    
    <!-- Start Blog Area -->
    <section class="blog section" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Our Most Recent News.</h2>
                        <img src="{{asset('public/images')}}/section-img.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                        <div class="news-head">
                            <img src="{{asset('public/images')}}/blog/notice-1.jpeg" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date">22 Aug, 2020</div>
                                <h2><a href="blog-single.html">We have annnocuced our new product.</a></h2>
                                <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                        <div class="news-head">
                            <img src="{{asset('public/images')}}/blog/notice-2.jpeg" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date">15 Jul, 2020</div>
                                <h2><a href="blog-single.html">Top five way for solving teeth problems.</a></h2>
                                <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                        <div class="news-head">
                            <img src="{{asset('public/images')}}/blog/notice-3.jpeg" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date">05 Jan, 2020</div>
                                <h2><a href="blog-single.html">We provide highly business soliutions.</a></h2>
                                <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
            </div>
            <div class="d-flex justify-content-center mt-4">
                <div class="button">
                    <a href="#" class="btn text-white">More Notice</a>
                </div>
            </div>
        </div>
    </section>
    <!-- End Blog Area -->

    

    @if (session()->has('success'))
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: 'Your message was sent successfully.',
            })
        </script>
    @endif
@endsection
