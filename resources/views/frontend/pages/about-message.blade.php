@extends('frontend.layouts.app')
@section('title', 'Message')
@section('content')
    <!-- ======= Contact Section ======= --><br><br>
    <section id="contact" class="section">
        <div class="container">
            <div class="section-title">
                @if($menu == 1)
                <h2>Present President &amp; Secretary General Message</h2>
                @elseif($menu == 2)
                <h2>Founder President &amp; Secretary General Message</h2>
                @endif
                <img src="{{asset('public/images')}}/section-img.png" alt="#">
                <!--<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sitin iste officiis commodi quidem hic quas.</p>-->
            </div>
            
            
            
            
            @if($menu == 1)
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="35%"></th>
                           <th width="65%">Message from Present President</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="news-head" style="height: auto">
                                     <img src="{{asset('public/images')}}/home/A.M Amirul Islam Bhuiyam.jpg" alt="#">
                                </div>
                                <h4 class="text-center mt-4">A.M Amirul Islam Bhuiyan</h4>
                                <h5 class="text-center my-2 text-success">President</h5>
                            </td>
                            <td>
                                <p>It gives me immense pleasure to know that, Bangladesh Agro Feed
                                    Ingredients Importers &amp; Traders Association is going to established of
                                    Website that will contain the much needed information on the products
                                    and activities of BAFIITA members.
                                    <br><br>
                                    BAFIITA Member company are engaged in quality agro feed
                                    ingredients, feed additives and supplements of import, supply, trading
                                    and Manufacturer in Bangladesh that make the vital contribution to
                                    ensure welfare of the poultry, fishery, cattle and pet animal feed of this
                                    country. Bangladesh is an agro-based economy depended on the
                                    development of several sectors including the animal (poultry, fishery
                                    and cattle) sector which is an important contributor to the national
                                    economy.
                                    <br><br>
                                    BAFIITA is committed to create and atmosphere and environment that
                                    will accelerate the peach of development of the animal (poultry, fishery
                                    and cattle) sector and thus make positive contribution towards growth
                                    of the national economy.
                                    <br><br>
                                    I am confident that the Website will be welcome by all concerned and
                                    will play a significant role in the development of animal sector.
                                    I extent my sincere thanks to those in the BAFIITA without whose
                                    cooperation and sincere efforts the publication of this Website would
                                    not have been possible.
                                    <br><br>
                                    I wish established of the BAFIITA Website a great success.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="news-head" style="height: auto">
                                    <img src="{{asset('public/images')}}/home/Joyanta Kumer Deb.jpg" alt="#">
                                </div>
                                <h4 class="text-center mt-4">Joyanta Kumar Deb</h4>
                                <h5 class="text-center my-2 text-success">Secretary General</h5>
                            </td>
                            <td><h6>Message from Present Secretary General</h6>
                                <p>It is a great pleasure to prepare of BAFIITA Website www.bafiita.org.bd
                                    We are grateful to Almighty Allah for making it easy for us in
                                    established of BAFIITA Website www.bafiita.org.bd.
                                    <br><br>
                                    BAFIITA is an established Government registered trade body
                                    association now. Over the last few years we were involved with many
                                    activities for the welfare of the member as well as animal (poultry,
                                    fishery and cattle) industry. BAFIITA played a very vital role for the
                                    development of animal industry in the country. Some of the key
                                    activities have been published in this Souvenir for your information.
                                    Over the last year BAFIITA membership had vertical growth. BAFIITA
                                    members company are engaged in quality agro feed ingredients, feed
                                    additives and supplements of import, supply, trading and Manufacturer
                                    in Bangladesh that make the vital contribution to ensure welfare of the
                                    poultry, fishery, cattle and pet animal feed of this country. We supply
                                    over 50% quality agro feed ingredients, feed additives and
                                    supplements of import, supply, trading and Manufacturer in
                                    Bangladesh.
                                    <br><br>
                                    We thanked to all concerned of private entrepreneur and government
                                    agencies for their all out effort for the development of animal industry of
                                    the country. In order to develop better health and intelligence of our
                                    citizen, continued increased supply of animal protein’s such as broiler
                                    meat, beef, fish, milk and eggs are essential. BAFIITA plays a very vital
                                    role for the consisting growth of this animal (poultry, fishery and cattle)
                                    industry &amp; agriculture industry on thus contribute to the country’s socio-
                                    economic development.
                                    <br><br>
                                    Wish all the success for BAFIITA Website www.bafiita.org.bd.</p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            
            
            @elseif($menu == 2)
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="35%"></th>
                           <th width="65%">Message from Founder President</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <div class="news-head" style="height: auto">
                                    <img src="{{asset('public/images')}}/home/Sudhir Chowdhury.jpg" alt="#">
                                </div>
                                <h4 class="text-center mt-4">Sudhir Chowdhury</h4>
                                <h5 class="text-center my-2 text-success">Founder President</h5>
                            </td>
                            <td>
                                <p>It gives me immense pleasure to know that, Bangladesh Agro Feed
                                    Ingredients Importers &amp; Traders Association is going to established of
                                    Website that will contain the much needed information on the products
                                    and activities of BAFIITA members.
                                    <br><br>
                                    BAFIITA Member company are engaged in quality agro feed
                                    ingredients, feed additives and supplements of import, supply, trading
                                    and Manufacturer in Bangladesh that make the vital contribution to
                                    ensure welfare of the poultry, fishery, cattle and pet animal feed of this
                                    country. Bangladesh is an agro-based economy depended on the
                                    development of several sectors including the animal (poultry, fishery
                                    and cattle) sector which is an important contributor to the national
                                    economy.
                                    <br><br>
                                    BAFIITA is committed to create and atmosphere and environment that
                                    will accelerate the peach of development of the animal (poultry, fishery
                                    and cattle) sector and thus make positive contribution towards growth
                                    of the national economy.
                                    <br><br>
                                    I am confident that the Website will be welcome by all concerned and
                                    will play a significant role in the development of animal sector.
                                    I extent my sincere thanks to those in the BAFIITA without whose
                                    cooperation and sincere efforts the publication of this Website would
                                    not have been possible.
                                    <br><br>
                                    I wish established of the BAFIITA Website a great success.</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="news-head" style="height: auto">
                                    <img src="{{asset('public/images')}}/home/Md. Helal Uddin.jpg" alt="#">
                                </div>
                                <h4 class="text-center mt-4">Md. Helal Uddin</h4>
                                <h5 class="text-center my-2 text-success">Secretary General</h5>
                            </td>
                            <td><h6>Message from  Secretary General</h6>
                                <p>It is a great pleasure to prepare of BAFIITA Website www.bafiita.org.bd
                                    We are grateful to Almighty Allah for making it easy for us in
                                    established of BAFIITA Website www.bafiita.org.bd.
                                    <br><br>
                                    BAFIITA is an established Government registered trade body
                                    association now. Over the last few years we were involved with many
                                    activities for the welfare of the member as well as animal (poultry,
                                    fishery and cattle) industry. BAFIITA played a very vital role for the
                                    development of animal industry in the country. Some of the key
                                    activities have been published in this Souvenir for your information.
                                    Over the last year BAFIITA membership had vertical growth. BAFIITA
                                    members company are engaged in quality agro feed ingredients, feed
                                    additives and supplements of import, supply, trading and Manufacturer
                                    in Bangladesh that make the vital contribution to ensure welfare of the
                                    poultry, fishery, cattle and pet animal feed of this country. We supply
                                    over 50% quality agro feed ingredients, feed additives and
                                    supplements of import, supply, trading and Manufacturer in
                                    Bangladesh.
                                    <br><br>
                                    We thanked to all concerned of private entrepreneur and government
                                    agencies for their all out effort for the development of animal industry of
                                    the country. In order to develop better health and intelligence of our
                                    citizen, continued increased supply of animal protein’s such as broiler
                                    meat, beef, fish, milk and eggs are essential. BAFIITA plays a very vital
                                    role for the consisting growth of this animal (poultry, fishery and cattle)
                                    industry &amp; agriculture industry on thus contribute to the country’s socio-
                                    economic development.
                                    <br><br>
                                    Wish all the success for BAFIITA Website www.bafiita.org.bd.</p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
            
            @endif
        </div>
    </section>
@endsection