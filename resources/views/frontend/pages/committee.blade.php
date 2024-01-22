@extends('frontend.layouts.app')
@if ($committeesType == 1)
@section('title', 'Executive Committee')
@elseif ($committeesType == 2)
@section('title', 'Executive Committee')
@else
@section('title', 'President & Secretary Profile')
@endif
@section('content')
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="py-5 my-4">
        <div class="container">
            <div class="section-title">
                @if ($committeesType == 1)
                    <h2>Present Executive Committee</h2>
                @elseif($committeesType == 2)
                    <h2>Past Executive Committee</h2>
                @else
                    <h2>President & Secretary Profile</h2>
                @endif
                <img src="{{asset('public/images')}}/section-img.png" alt="#">
            </div>

            
                        <div class="row">
                @if ($committeesType == 1)
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/A.M Amirul Islam Bhuiyam.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">A.M Amirul Islam Bhuiyam</h5>
                            <h6 class="text-danger">President</h6>
							<h6 class="text-danger">Rep : Islam Enterprise</h6>
                        </div>
                    </div>
					
					   <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Joyanta Kumer Deb.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Joyanta Kumer Deb</h5>
                            <h6 class="text-danger">Secretary General</h6>
							<h6 class="text-danger">Rep : Nature Care Manufacturing Industries Limited.</h6>
                        </div>
                    </div>
				
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Md. Farook.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Farook</h5>
                            <h6 class="text-danger">Snr. Vice- President</h6>
							<h6 class="text-danger">Rep:Faisal Trading Company</h6>
                        </div>
                    </div>
                 
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Md. Gias Uddin Khan.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                           <h5 class="mt-4">Md. Gias Uddin Khan</h5>
                            <h6 class="text-danger">Vice- President</h6>
							<h6 class="text-danger">Rep : H & K Feed Products.</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Md. Anwarul Haque.jpg" class="img-fluid" alt="" style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Anwarul Haque</h5>
                            <h6 class="text-danger">Vice- President</h6>
							<h6 class="text-danger">Rep : M/S. Anwarul Haque</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Md. Mahbubul Alam.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Mahbubul Alam</h5>
                            <h6 class="text-danger">Joint Sectary General</h6>
							<h6 class="text-danger">Rep: M/S. Rahman Traders</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Altaf Hossain Biswas.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Altaf Hossain Biswas</h5>
                            <h6 class="text-danger">Organizing Secretary</h6>
							<h6 class="text-danger">Rep : BTC Group</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Md. Khurshed Alam.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Khurshed Alam</h5>
                            <h6 class="text-danger">Treasurer</h6>
							<h6 class="text-danger">Rep :Taj Ready Feed</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Mohammad Shah Akram.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Mohammad Shah Akram</h5>
                            <h6 class="text-danger">Social Welfare secretary</h6>
							<h6 class="text-danger">Rep. M/S. Akram & Brothers</h6>
                        </div>
                    </div>
					  <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Abdur Rahman.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Abdur Rahman</h5>
                            <h6 class="text-danger">Press secretary</h6>
							<h6 class="text-danger">Rep : M/S. Ruba Enterprise</h6>
                        </div>
                    </div>
					  <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Mohammad Mansur Meah.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Mohammad Mansur Meah</h5>
                            <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">Rep : Bogdad Pellet Feed</h6>
                        </div>
                    </div>
					  <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/ATM. Shahin Pervez.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">ATM. Shahin Pervez</h5>
                            <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">Rep : M/S. Saraf Enterprise</h6>
                        </div>
                    </div>
					  <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Dr. Rashedul Jakir.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Dr. Rashedul Jakir</h5>
                            <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">Rep. R.R Agro Traders</h6>
                        </div>
                    </div>
					  <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Md. Selim Reza Hiron.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Selim Reza Hiron</h5>
                            <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">Rep. Progress Agrovet</h6>
                        </div>
                    </div>
					  <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Md. Anamul Haque Molah.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Anamul Haque Molah</h5>
                            <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">Rep : M/S. Enam Traders</h6>
                        </div>
                    </div>
					  <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Sudhir Chowdhury.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Sudhir Chowdhury</h5>
                            <h6 class="text-danger">Ex-Officio</h6>
							<h6 class="text-danger">Rep: M/S. Chowdhury Enterprise</h6>
                        </div>
                    </div>
					  <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/ec/Md. Helal Uddin.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Helal Uddin</h5>
                            <h6 class="text-danger">Ex-Officio</h6>
							<h6 class="text-danger">Rep : M/S. Helal Enterprise</h6>
                        </div>
                    </div>
                @elseif($committeesType == 2)
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Sudhir Chowdhury.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Sudhir Chowdhury</h5>
                            <h6 class="text-danger">President</h6>
							<h6 class="text-danger">Rep: M/S. Chowdhury Enterprise</h6>
                        </div>
                    </div>
					
					     <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Helal Uddin.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                          <h5 class="mt-4">Md. Helal Uddin</h5>
                            <h6 class="text-danger">Secretary General</h6>
							<h6 class="text-danger">Rep: M/S. Helal Enterprise </h6>
                        </div>
                    </div>
				
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Sabir Hossain.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Sabir Hossain </h5>
                            <h6 class="text-danger">Snr. Vice- President</h6>
							<h6 class="text-danger">Rep : M.S Trading</h6>
							
                        </div>
                    </div>
               
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Sayedul Haque Khan.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Sayedul Haque Khan </h4>
							 <h6 class="text-danger">Vice- President</h6>
							<h6 class="text-danger">Rep : Khan Agro Feed Products</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Abul Kalam Azad.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Abul Kalam Azad</h4>
							 <h6 class="text-danger">Vice- President</h6>
							<h6 class="text-danger">Rep: M/S. Al-Amin Poultry Feed</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md.  Mahbubul  Alam.jpg"
                                    class="img-fluid" alt="" style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md.  Mahbubul  Alam</h4>
							 <h6 class="text-danger">Joint Sectary General</h6>
							<h6 class="text-danger">Rep: M/S. Rahman Traders</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Gias Uddin Khan.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Gias Uddin Khan</h4>
							 <h6 class="text-danger">Organizing Secretary</h6>
							<h6 class="text-danger">Rep : H & K Feed Products</h6>
                        </div>
                    </div>

                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Farook.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Farook</h4>
							 <h6 class="text-danger">Treasurer</h6>
							<h6 class="text-danger">Rep : Faisal Trading Company</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Mrs. Momotaj Hossain Eaty.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Mrs. Momotaj Hossain Eaty</h4>
							 <h6 class="text-danger">Social Welfare secretary </h6>
							<h6 class="text-danger">Rep : M/s. Eaty Enterprise</h6>
                        </div> 


                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Mrs. Sadia Afrine Munni.jpg" class="img-fluid"
                                    alt="" style="height: 100%">
                            </div>
                               <h5 class="mt-4">Mrs. Sadia Afrine  Munni</h4>
							 <h6 class="text-danger">Press secretary </h6>
							<h6 class="text-danger">Rep : M/s. Synthia Enterprise</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Mr. Syed Kamalur Rahman.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Mr. Syed Kamalur Rahman</h4>
							 <h6 class="text-danger">Executive Member </h6>
							<h6 class="text-danger">Rep : C.R Poultry and Fish Feed Ltd</h6>
                        </div>
                    </div> 
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Habibur Rahman.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                           <h5 class="mt-4">Md. Habibur Rahman</h4>
							 <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">Rep : Al-Habib Enterprise</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Alal Ahamed.jpg" class="img-fluid"
                                    alt="" style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Alal Ahamed</h4>
							 <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">M/S.  Alal Enterprise</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Md. Khurshed Alam.jpg" class="img-fluid" alt=""
                                    style="height: 100%">
                            </div>
                            <h5 class="mt-4">Md. Khurshed Alam</h4>
							 <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">Rep : Taj  Ready  Feed</h6>
                        </div>
                    </div>
                    <div class="col-lg-3 mb-3">
                        <div class="bg-white border text-center p-4">
                            <div>
                                <img src="{{asset('public/images')}}/past/Mohammad Shah Akram.jpg" class="img-fluid"
                                    alt="" style="height: 100%">
                            </div>
                             <h5 class="mt-4">Mohammad Shah Akram</h4>
							 <h6 class="text-danger">Executive Member</h6>
							<h6 class="text-danger">Rep : M/S. Akram & Brothers</h6>
                        </div>
                    </div>
                @endif
            </div>
        </div>
    </section><!-- End Contact Section -->

@endsection