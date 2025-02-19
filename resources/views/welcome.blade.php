@extends('frontend.layouts.app')
@section('content')

    
    <style>
        .single-clients{
            width:250px;
        }
    </style>
    
    <!-- ======= Clients Section ======= -->
    <section class="clients overlay p-4" style="background-image:url('{{asset('public/images')}}/pages/bg-clients.jpg');">
        <div class="container">
            <div id="owl-clients" class="owl-carousel wow animate__fadeInUp" data-wow-duration="2s" data-wow-delay="1s">
                <div class="single-clients">
                    <img src="{{asset('public/frontend')}}/img/client1.png" alt="#">
                </div>
                {{-- <div class="single-clients">
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
                </div> --}}
            </div>

        </div>
    </section><!-- End Clients Section -->
    
    <!-- Traders Association -->
    <section class="why-choose">
        <div class="py-4" style="background: #faf8f88f">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-12">
                        <div class="row">
                            <div class="col-8 m-auto">
                                <div class="card rounded-0">
                                    <!-- News Head -->
                                    <div class="news-head" style="height: auto">
                                        <img src="{{asset('public/images')}}/home/A.M Amirul Islam Bhuiyam.jpg" alt="#">
                                    </div>
                                    <h6 class="text-center mt-2"><strong> A.M Amirul Islam Bhuiyan</strong></h6>
                                    <h6 class="text-center mb-2 text-success">President</h6>
                                </div>
                            </div>
                            
                            <div class="col-8  m-auto mt-2">
                                <div class="card rounded-0">
                                    <!-- News Head -->
                                    <div class="news-head" style="height: auto">
                                        <img src="{{asset('public/images')}}/home/Joyanta Kumer Deb.jpg" alt="#">
                                    </div>
                                    <h6 class="text-center mt-2"><strong>Joyanta Kumar Deb</strong></h6>
                                    <h6 class="text-center mb-2 text-success">Secretary General</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-12">
                        <p class="pt-4">
                            <h3>Welcome To <br> Bangladesh Agro Feed Ingredients Importers & Traders Association</h3>
                            <h6><em>An agro-based ingredients importers and traders association</em></h6><br>
                            <strong>Dear Patrons,</strong> <br>
                            <strong>Asslamualikum!!</strong> <br>
                            Welcome to website introduction of Bangladesh Agro Feed Ingredients Importers and Traders Association (BAFIITA), BAFIITA as the apex Importers and Traders body registered with the Ministry of Commerce of People&#039;s Republic of Bangladesh Registration No: TO- 944/2017, since 2017 to conduct in the country continues its pivotal role in consultative and advisory capacity in the formulation of Poultry, Fisheries And Dairy Feed ingredients, Feed additives &amp; Supplements of the Government. BAFIITA actively represents and contributes in all forums related to Socio-Economic Development and Government for mutual sharing of views on all vital issues concerning and affecting the national economy.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
           <div class="row py-4">
                {{-- <div class="col-lg-3 col-12">
                    <div class="card">
                        <!-- News Head -->
                        <div class="news-head" style="height: auto">
                            <img src="{{asset('public/images')}}/home/Sudhir Chowdhury.jpg" alt="#">
                        </div>
                        <h6 class="text-center mt-4"><strong> Sudhir Chowdhury</strong></h6>
                        <h6 class="text-center my-2 text-success">Founder President</h6>
                    </div>
                </div>
                <div class="col-lg-3 col-12">
                    <div class="card">
                        <!-- News Head -->
                        <div class="news-head" style="height: auto">
                            <img src="{{asset('public/images')}}/home/Md. Helal Uddin.jpg" alt="#">
                        </div>
                        <h6 class="text-center mt-4"><strong> Md. Helal Uddin</strong></h6>
                        <h6 class="text-center my-2 text-success">Secretary General</h6>
                    </div>
                </div> --}}
                <div class="col-lg-12 col-12">
                    <div class="card p-4">
                        <h4 class="text-center mb-4">-: BAFIITA Secretariat : -</h4>
                        <p style="line-height: 30px">
                            <strong>Registered Address:</strong> 63/C, Asad Avenue, Mohammadpur, Dhaka- 1207<br>
                            <strong>Mailing Address:</strong> 21/1, Zigatola, Dhanmondi, Dhaka-1209<br>
                            <strong>Cell:</strong> 01727-212747 <br>
                            <strong>WhatsApp:</strong> 01727212747 <br>
                            <strong>Facebook:</strong> BAFIITA Secretariat <br>
                            <strong>E-mail:</strong> bafiita.association@gmail.com <br>
                            <strong> www.bafiita.org.bd </strong>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Traders Association-->

    <!-- Start Why choose -->
    {{-- <section class="why-choose section-bg" >
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

                        <div class="row">
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
                        </div>

                    </div>
                    <!-- End Choose Left -->
                </div>
                <div class="col-lg-6 col-12">
                    <!-- Start Choose Rights -->
                   <div class="row mt-4">
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
                        
                    </div>
                     <div class="choose-right" style="background: url({{asset('public/images')}}/home/about_logo.png); background-position: center; background-size: cover;border:1px solid #109033"></div> 
                    <!-- End Choose Rights -->
                </div>
                
            </div>
        </div>
    </section> --}}
    <!--/ End Why choose -->


    <!-- Start Fun-facts -->
    <div id="fun-facts" class="fun-facts section overlay" style="background-image:url('{{asset('public/images')}}/pages/bg-count.jpg');">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun">
                        <i class="icofont icofont-home"></i>
                        <div class="content">
                            <span class="counter">3468</span>
                            <p>Members</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
                {{-- <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun">
                        <i class="icofont icofont-user-alt-3"></i>
                        <div class="content">
                            <span class="counter">557</span>
                            <p>Specialist</p>
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
                            <p>Happy Members</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div> --}}
                <div class="col-lg-6 col-md-6 col-12">
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
    
     <!-- Start video Area -->
    <section class="blog section" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Video</h2>
                        <img src="{{asset('public/images')}}/section-img.png" alt="#">
                    </div>
                </div>
            </div>
            <div class="row">
                   <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                       <iframe width="711" height="315" src="https://www.youtube.com/embed/VOCGeog_flw" title="BAFIITA President Speech" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <!-- End Single Blog -->
                </div>
                
                  <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                       <iframe width="711" height="315" src="https://www.youtube.com/embed/U53SowN2WPg" title="Joyanta Kumar Deb" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <!-- End Single Blog -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                       <iframe width="711" height="315" src="https://www.youtube.com/embed/4yYXXJ5PfXg" title="BAFIITA PICNIC 2023" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <!-- End Single Blog -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                       <iframe width="711" height="315" src="https://www.youtube.com/embed/c6LjVvjNfVU" title="নির্বাচিত হওয়ার সাথে সাথেই এমপির এ্যাকশন | DBC NEWS ‍Special" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <!-- End Single Blog -->
                </div>
               <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                       <iframe width="711" height="315" src="https://www.youtube.com/embed/jdXbzJvf63o" title="প্রাণিজ খাদ্য উপকরনে আমদানি ও বিপননে সংকট | Business Mirror | Ep 75 | Ismat Jerin Khan | Mamun Khan" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <!-- End Single Blog -->
                </div>
            </div>
        </div>
    </section>
    <!-- End video Area -->
    
    
    <!-- Start Blog Area -->
    <section class="blog section" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Notice & News</h2>
                        <img src="{{asset('public/images')}}/section-img.png" alt="#">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                        <div class="news-head">
                            <img src="{{asset('public/images')}}/blog/news-01.jpg" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date">29 October 2020</div>
                                <h2><a href="{{route('page.blog-details')}}">মৎস্য ও প্রাণিসম্পদ মন্ত্রীর সাথে বাফিটা প্রতিনিধিদলের মতবিনিময়</a></h2>
                                <p class="text">এগ্রিলাইফ২৪ ডটকম:গণপ্রজাতন্ত্রী বাংলাদেশ সরকার, মৎস্য ও প্রাণিসম্পদ মন্ত্রণালয়ের মাননীয় মন্ত্রী জনাব শ ম রেজাউল করিম (এম,পি) মহোদয়ের সাথে বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইম্পোটার্স এন্ড ট্রেডার্স এসোসিয়েশন (বাফিটা) এর প্রতিনিধিদের মতবিনিময় সভা অনুষ্ঠিত।</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
                  <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                        <div class="news-head">
                            <img src="{{asset('public/images')}}/blog/news-02.jpg" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date"> 08 February 2023</div>
                                <h2><a href="blog-single.html">বাফিটা পরিবারের সকল সদস্য একই সূত্রে গাঁথা-সুধীর চৌধুরী</a></h2>
                                <p class="text">এগ্রিলাইফ প্রতিনিধি: বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইমপোটার্স এন্ড ট্রেডার্স অ্যাসোসিয়েশন (বাফিটা) পরিবারের সকল সদস্য একই সূত্রে গাঁথা। সুখে দুখে তারা সব সময় এক সাথে চলতে চান, এক হয়ে থাকতে চান। করোনার কারণে</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news">
                        <div class="news-head">
                            <img src="{{asset('public/images')}}/blog/news-04.jpg" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date">17 August 2023</div>
                                <h2><a href="blog-single.html">এফবিসিসিআই-এর নব নির্বাচিত কমিটিকে শুভেচ্ছা জানালো বাফিটা</a></h2>
                                <p class="text">রাজধানী প্রতিনিধি: বাফিটা’র প্রতিষ্ঠাতা সভাপতি বাবু সুধীর চৌধুরীর নেতৃত্বে ব্যবসায়ীদের শীর্ষ সংগঠন দি ফেডারেশন অব বাংলাদেশ চেম্বার্স অব কমার্স অ্যান্ড ইন্ডাস্ট্রি (এফবিসিসিআই)-এর নব নির্বাচিত কমিটিকে শুভেচ্ছা জানালো বাংলাদেশ এগ্রো ফিড ইনগ্রিডিয়েন্টস ইম্পোর্টার্স এন্ড ট্রেডার্স এসোসিয়েশন (বাফিটা)।</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
            </div>
            <div class="d-flex justify-content-center mt-4">
                <div class="button">
                    <a href="https://webkutir.org/bafiita/page/news-content" class="btn text-white">More Notice</a>
                </div>
            </div>
        </div>
    </section>
    <!-- End Blog Area -->

    <!-- Start Blog Area -->
    @if (count($event))
    <section class="blog section" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Events</h2>
                        <img src="{{asset('public/images')}}/section-img.png" alt="#">
                    </div>
                </div>
            </div>
            <div class="row">
                @foreach ($event as $row)
                <div class="col-md-6">
                    <div class="blog-item bg-light overflow-hidden">
                        <div class="position-relative overflow-hidden" style="height: 200px">
                            <a href="{{route('page.events-details', $row->id)}}">
                                <img class="img-fluid" src="{{asset('public')}}/images/events/{{ $row->image}}" alt="" width="100%">
                                <span class="position-absolute top-0 start-0 bg-default text-white mt-5 py-2 px-4">{{$row->caption}}</span>
                            </a>
                        </div>
                        <div class="p-4">
                            <div class="d-flex mb-3">
                                {{-- <small class="me-3"><i class="far fa-user text-primary me-2"></i>John Doe</small> --}}
                                <small><i class="bi bi-calendar-week-fill text-default me-2"></i>{{date("j F, Y", strtotime($row->event_date))}}</small>
                            </div>
                            <h4 class="mb-3">{{$row->title}}</h4>
                            <p class="description_1">{{$row->description}}</p>
                            <a class="text-uppercase text-default" href="{{route('page.events-details', $row->id)}}">Read More <i class="bi bi-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="d-flex justify-content-center mt-4">
                <div class="button">
                    <a href="{{route('page.events')}}" class="btn text-white">More Events</a>
                </div>
            </div>
        </div>
    </section>
    <!-- End Blog Area -->
    @endif

    

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
