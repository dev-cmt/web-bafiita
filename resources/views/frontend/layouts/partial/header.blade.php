
<!-- ======= Header ======= -->
<header class="header" >
    <!-- Topbar -->
    <section class="news-line d-flex" style="border-bottom: 3px solid #109033">
        <div style="width: 150px;background: #109033; padding: 10px 8px;font-size: 16px;color: white;">Notice & News</div>
        <marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();" style="font-size: 16px;padding: 10px 0px;color: black;">
            <span><a href="#" class="mx-5">Welcome To Bangladesh Agro Feed Ingredients Importers & Traders Association</a>|</span>
            <span><a href="#" class="mx-5">Welcome To Bangladesh Agro Feed Ingredients Importers & Traders Association</a></span>
        </marquee>
        <style>
            .news-line marquee a:hover{
                color:green;
            }
        </style>
    </section>
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
                                            <li><a href="{{route('page.about-message', 1)}}">Message President & Secretary </a></li>
											<li><a href="{{route('page.profile-pres-secr')}}">Profile President & Secretary</a></li>
                                            <li><a href="{{route('page.about-message', 2)}}">Message Founder President & Secretary </a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Committee<i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="{{route('page.committee', 1)}}">Present Executive Committee</a></li>
                                            <li><a href="{{route('page.committee', 2)}}">Past Executive Committee(2021-2023)</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Members<i class="icofont-rounded-down"></i></a>
                                        <ul class="dropdown">
                                            <li><a href="{{route('page.member', 0)}}">BAFIITA Member List</a></li>
                                            {{--<li><a href="{{route('page.member', 1)}}">Donor Member Group</a></li>
                                            <li><a href="{{route('page.member', 2)}}">General Member Group</a></li>--}}
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
                    {{-- @guest
                        <a class="getstarted" href="{{Route('member_register.create')}}">Become A Member</a>
                        <a class="getstarted-login" href="{{Route('login')}}">Login</a>
                    @endguest
                    @auth
                    <li class="dropdown"><a href="#" class="getstarted scrollto"><span>{{Auth::user()->name}}</span><i class="bi bi-chevron-down"></i></a>
                        <ul>
                            @if (Auth::user()->is_admin == "1" && Auth::user()->status == "1")
                                <li><a href="{{ Route('profile_show', auth()->user()->id )}}">Profile</a></li>
                            @endif
                            @if (Auth::user()->is_admin == "0" && Auth::user()->status == "0")
                                <li><a href="{{ Route('registation-payment.create') }}">Payment Fee</a></li>
                            @endif
                            @if (Auth::user()->is_admin == "1" && Auth::user()->status == "0")
                                <li><a href="{{ Route('member-approve.padding') }}">Waiting Approval</a></li>
                            @endif
                            
                            <form method="POST" action="{{ Route('logout') }}">
                                @csrf
                                <li><a href="{{ Route('logout') }}" onclick="event.preventDefault(); this.closest('form').submit();">Logout</a></li>
                            </form>
                        </ul>
                    </li>
                    @endauth --}}


                </div>
            </div>
        </div>
    </div><!--/ End Header Inner -->
</header><!-- End Header -->
