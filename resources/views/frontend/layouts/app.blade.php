<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Favicons -->
    <link href="{{asset('public/images')}}/favicon.png" rel="icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/bootstrap.min.css">
    <!-- Nice Select CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/nice-select.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/font-awesome.min.css">
    <!-- icofont CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/icofont.css">
    <!-- Slicknav -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/slicknav.min.css">
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/owl-carousel.css">
    <!-- Datepicker CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/datepicker.css">
    <!-- Animate CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/animate.min.css">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/magnific-popup.css">

    <!-- Medipro CSS -->
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/normalize.css">
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/responsive.css">
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/style.css">
    <link rel="stylesheet" href="{{asset('public/frontend')}}/css/custom.css">
    
    @yield('style')
</head>
<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="loader">
            <div class="loader-outter"></div>
            <div class="loader-inner"></div>

            <div class="indicator"> 
                <svg width="16px" height="12px">
                    <polyline id="back" points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                    <polyline id="front" points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                </svg>
            </div>
        </div>
    </div>
    <!-- End Preloader -->

    <!-- Get Pro Button -->
    <ul class="pro-features">
        <a class="get-pro" href="#">Membership</a>
        <li class="big-title">Pro Version Available on Themeforest</li>
        <li class="title">Pro Version Features</li>
        <li>2+ premade home pages</li>
        <li>20+ html pages</li>
        <li>Color Plate With 12+ Colors</li>
        <li>Sticky Header / Sticky Filters</li>
        <li>Working Contact Form With Google Map</li>
        <div class="button">
            <a href="{{route('member_register.create')}}" target="_blank" class="btn">New Membership</a>
            <a href="#" target="_blank" class="btn">Renew Membership</a>
        </div>
    </ul>

    @include('frontend.layouts.partial.header')
    
    @if (Route::currentRouteName() == '/')
        @include('frontend.layouts.partial.slider')
    @else
        @include('frontend.layouts.partial.banner')
    @endif

    @yield('content')
    @include('frontend.layouts.partial.footer')


    <!-- jquery Min JS -->
    <script src="{{asset('public/frontend')}}/js/jquery.min.js"></script>
    <!-- jquery Migrate JS -->
    <script src="{{asset('public/frontend')}}/js/jquery-migrate-3.0.0.js"></script>
    <!-- jquery Ui JS -->
    <script src="{{asset('public/frontend')}}/js/jquery-ui.min.js"></script>
    <!-- Easing JS -->
    <script src="{{asset('public/frontend')}}/js/easing.js"></script>
    <!-- Color JS -->
    <script src="{{asset('public/frontend')}}/js/colors.js"></script>
    <!-- Popper JS -->
    <script src="{{asset('public/frontend')}}/js/popper.min.js"></script>
    <!-- Bootstrap Datepicker JS -->
    <script src="{{asset('public/frontend')}}/js/bootstrap-datepicker.js"></script>
    <!-- Jquery Nav JS -->
    <script src="{{asset('public/frontend')}}/js/jquery.nav.js"></script>
    <!-- Slicknav JS -->
    <script src="{{asset('public/frontend')}}/js/slicknav.min.js"></script>
    <!-- ScrollUp JS -->
    <script src="{{asset('public/frontend')}}/js/jquery.scrollUp.min.js"></script>
    <!-- Niceselect JS -->
    <script src="{{asset('public/frontend')}}/js/niceselect.js"></script>
    <!-- Tilt Jquery JS -->
    <script src="{{asset('public/frontend')}}/js/tilt.jquery.min.js"></script>
    <!-- Owl Carousel JS -->
    <script src="{{asset('public/frontend')}}/js/owl-carousel.js"></script>
    <!-- counterup JS -->
    <script src="{{asset('public/frontend')}}/js/jquery.counterup.min.js"></script>
    <!-- Steller JS -->
    <script src="{{asset('public/frontend')}}/js/steller.js"></script>
    <!-- Wow JS -->
    <script src="{{asset('public/frontend')}}/js/wow.min.js"></script>
    <!-- Magnific Popup JS -->
    <script src="{{asset('public/frontend')}}/js/jquery.magnific-popup.min.js"></script>
    <!-- Counter Up CDN JS -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="{{asset('public/frontend')}}/js/bootstrap.min.js"></script>
    <!-- Main JS -->
    <script src="{{asset('public/frontend')}}/js/main.js"></script>

    <script>
        $(document).ready(function () {
            $("#applyMembershipBtn").on("click", function () {
                $(".pro-features").toggleClass("active");
            });
        });
    </script>
    @yield('script')
</body>
</html>
