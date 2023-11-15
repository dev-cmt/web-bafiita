@extends('frontend.layouts.app')
@section('title', 'Contact-Us')
@section('content')

    <!-- Start Contact Us -->
    <section class="contact-us section">
        <div class="container">
            <div class="inner">
                <div class="row"> 
                    <div class="col-lg-6">
                        <div class="contact-us-left">
                            <div class="position-relative rounded overflow-hidden h-100">
                                <iframe class="position-relative rounded w-100 h-100" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14607.834029397985!2d90.403193!3d23.748859!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b88fd8f1da15%3A0x7373d2a193bb69f5!2sRazzak%20Plaza!5e0!3m2!1sen!2sus!4v1692525384856!5m2!1sen!2sus" width="600" height="350" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                             </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="contact-us-form">
                            <h2>Contact With Us</h2>
                            <p>If you have any questions please fell free to contact with us.</p>
                            <!-- Form -->
                            <form action="{{route('contact-us.store')}}" method="post" enctype="multipart/form-data" class="form"> 
                                @csrf
                                <div class="row g-3">
                                    <div class="col-md-6 form-group">
                                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" @guest value="{{ old('name')}}" @endguest @auth value="{{Auth::user()->name}}" @endauth  placeholder="Your Name" style="height: 55px;">
                                        @error('name')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" @guest value="{{old('email')}}" @endguest @auth value="{{Auth::user()->email}}" @endauth placeholder="Your Email" style="height: 55px;">
                                        @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-12 form-group">
                                        <input type="text" class="form-control @error('subject') is-invalid @enderror" name="subject" value="{{old('subject')}}" placeholder="Subject" style="height: 55px;">
                                        @error('subject')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-12 form-group">
                                        <textarea class="form-control py-3 @error('description') is-invalid @enderror" name="description" value="{{old('description')}}" rows="4" placeholder="Message"></textarea>
                                        @error('description')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                        @enderror
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group login-btn">
                                            <button class="btn" type="submit">Send</button>
                                        </div>
                                        <div class="checkbox">
                                            <label class="checkbox-inline" for="2"><input name="news" id="2" type="checkbox">Do you want to subscribe our Newsletter ?</label>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <!--/ End Form -->
                        </div>
                    </div>
                </div>
            </div>

            

            <div class="contact-info">
                <div class="row">
                    <!-- single-info -->
                    <div class="col-lg-4 col-12 ">
                        <div class="single-info">
                            <i class="icofont icofont-ui-call"></i>
                            <div class="content">
                                <h3>+880 1727 212747</h3>
                                <p>bafiita.association@gmail.com</p>
                            </div>
                        </div>
                    </div>
                    <!--/End single-info -->
                    <!-- single-info -->
                    <div class="col-lg-4 col-12 ">
                        <div class="single-info">
                            <i class="icofont-google-map"></i>
                            <div class="content">
                                <h3>4/2, Iqbal Road(3rd floor) Block-A,</h3>
                                <p>Mohammadpur, Dhaka-1207</p>
                            </div>
                        </div>
                    </div>
                    <!--/End single-info -->
                    <!-- single-info -->
                    <div class="col-lg-4 col-12 ">
                        <div class="single-info">
                            <i class="icofont icofont-wall-clock"></i>
                            <div class="content">
                                <h3>Mon - Sat: 8am - 5pm</h3>
                                <p>Sunday Closed</p>
                            </div>
                        </div>
                    </div>
                    <!--/End single-info -->
                </div>
            </div>
        </div>
    </section>
    <!--/ End Contact Us -->

    @if (session()->has('success'))
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Success!',
                text: 'Your message was sent successfully.',
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location.href = '{{ route("/") }}';
                }
            });
        </script>
    @endif
@endsection