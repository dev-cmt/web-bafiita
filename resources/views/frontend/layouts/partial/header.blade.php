
<!-- ======= Header ======= -->
<header class="header" >
    <!-- Topbar -->
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-5 col-12">
                    <!-- Contact -->
                    <ul class="top-link">
                        <li><a href="#">About BAFIITA</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Join Us</a></li>
                        <li><a href="#">Login</a></li>
                    </ul>
                    <!-- End Contact -->
                </div>
                <div class="col-lg-6 col-md-7 col-12">
                    <!-- Top Contact -->
                    <ul class="top-contact">
                        <li><i class="fa fa-phone"></i>+880 1727 212747</li>
                        <li><i class="fa fa-envelope"></i><a href="mailto:bafiita.association@gmail.com">bafiita.association@gmail.com</a></li>
                    </ul>
                    <!-- End Top Contact -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->
    <!-- Header Inner -->
    <div class="header-inner">
        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-lg-2 col-md-3 col-12">
                        <!-- Start Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="{{asset('public/images')}}/logo.png" alt="#"></a>
                        </div>
                        <!-- End Logo -->
                        <!-- Mobile Nav -->
                        <div class="mobile-nav"></div>
                        <!-- End Mobile Nav -->
                    </div>
                    <div class="col-lg-8 col-md-6 col-12">
                        <!-- Main Menu -->
                        <div class="main-menu">
                            <nav class="navigation">
                                <ul class="nav menu">
                                    <li class="active"><a href="#">Home </a></li>
                                    <li><a href="#">About <i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="{{route('page.about-us')}}">About BAFIITA</a></li>
                                            <li><a href="{{route('page.about-message')}}">President & Secretary Message</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Committee <i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="eceommittee.html">Present Committee</a></li>
                                            <li><a href="adhoc.html">ADHOC Committee</a></li>
                                            <li><a href="#">Pass 2021-2023</a></li>
                                            <li><a href="#">Pass 2019-2021</a></li>
                                            <li><a href="#">Pass 2017-2019</a></li>
                                            <li><a href="#">Pass 2014-2017</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Member List <i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="generalmembers.html">General Members</a></li>
                                            <li><a href="donermembers.html">Doner Members</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Gallery <i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="photo.html">Photo Gallery</a></li>
                                            <li><a href="video.html">Video Gallery</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="{{route('page.blog')}}">Notice</a></li>
                                    <li><a href="{{route('page.contact-us')}}">Contact Us</a></li>
                                </ul>

                            </nav>
                        </div>
                        <!--/ End Main Menu -->
                    </div>
                    <div class="col-lg-2 col-md-3 col-12">
                        <div class="get-quote">
                            <a href="appointment.html" class="btn">Apply Membership </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/ End Header Inner -->
</header><!-- End Header -->
