
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
                        <li><a href="#">Requirement</a></li>
                        <li><a href="#">Renew Membership</a></li>
                        <li><a href="#">New Membership</a></li>
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
                            <a href="{{route('/')}}"><img src="{{asset('public/images')}}/logo.png" alt="#"></a>
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
                                    <li class="active"><a href="{{route('/')}}">Home </a></li>
                                    <li><a href="#">About <i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="{{route('page.about-us')}}">About BAFIITA</a></li>
                                            <li><a href="{{route('page.profile-pres-secr')}}">Profile President & Secretary</a></li>
                                            <li><a href="{{route('page.about-message', 1)}}">President & Secretary Message</a></li>
                                            <li><a href="{{route('page.about-message', 2)}}">Past President & Secretary Message</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Committee<i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="{{route('page.committee', 1)}}">Present Committee</a></li>
                                            <li><a href="{{route('page.committee', 2)}}">Past Committee</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Members<i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="{{route('page.member', 0)}}">All Members Bodies List</a></li>
                                            <li><a href="{{route('page.member', 1)}}">Donor Member Group</a></li>
                                            <li><a href="{{route('page.member', 2)}}">General Member Group</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="{{route('page.gallery-cover')}}">Gallery</a></li>
                                    <li><a href="{{route('page.blog')}}">Notice & News</a></li>
                                    <li><a href="{{route('page.contact-us')}}">Contact Us</a></li>
                                </ul>

                            </nav>
                        </div>
                        <!--/ End Main Menu -->
                    </div>
                    <div class="col-lg-2 col-md-3 col-12">
                        <div class="get-quote">
                            <a href="#" id="applyMembershipBtn" class="btn">Apply Membership </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/ End Header Inner -->
</header><!-- End Header -->
