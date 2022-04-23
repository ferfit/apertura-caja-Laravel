@extends('layouts.inicio')

@section('contenido')

        @include('includes.sidebar')

        @include('includes.header1')


        <!-- Home Design -->
        <section class="home-one bg-home1">
            <div class="container">
                <div class="row posr">
                    <div class="col-lg-10 m-auto">
                        <div class="home_content home1_style">
                            <div class="home-text text-center mb30">
                                <h2 class="title"><span class="aminated-object1"><img class="objects"
                                            src="images/home/title-bottom-border.svg" alt=""></span>Encuentra tu próxima coincidencia
                                </h2>
                                <p class="para">Encuentra tu próxima coincidencia.</p>
                            </div>
                            <form action="{{route('lista-de-autos')}}" class="shadow">

                                <div class="advance_search_panel">
                                    <div class="row">
                                        <div class="col-lg-12">

                                            <div class="adss_bg_stylehome1">
                                                <div class="tab-content" id="pills-tabContent">
                                                    <div class="tab-pane fade show active" id="pills-allstatus"
                                                        role="tabpanel" aria-labelledby="pills-allstatus-tab">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                @livewire('buscador-index')
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Car Category -->
        <section class="car-category mobile_space bgc-f9 z-2 pb100">
            <div class="container">
                <div class="row">
                    <div class="col-6 col-sm-6 col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s"
                        data-wow-delay="0.1s">
                        <div class="category_item">
                            <div class="thumb">
                                <img src="{{asset('images/tipoAutos/compact.png')}}" alt="1.png">
                            </div>
                            <div class="details">
                                <p class="title"><a href="page-car-single-v1.html">Compact</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-6 col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s"
                        data-wow-delay="0.3s">
                        <div class="category_item">
                            <div class="thumb">
                                <img src="{{asset('images/tipoAutos/sedan.png')}}" alt="2.png">
                            </div>
                            <div class="details">
                                <p class="title"><a href="page-car-single-v1.html">Sedan</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-6 col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s"
                        data-wow-delay="0.5s">
                        <div class="category_item">
                            <div class="thumb">
                                <img src="{{asset('images/tipoAutos/suv.png')}}" alt="3.png">
                            </div>
                            <div class="details">
                                <p class="title"><a href="page-car-single-v1.html">SUV</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-6 col-sm-6 col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s"
                        data-wow-delay="0.7s">
                        <div class="category_item">
                            <div class="thumb">
                                <img src="{{asset('images/tipoAutos/convertible.png')}}" alt="4.png">
                            </div>
                            <div class="details">
                                <p class="title"><a href="page-car-single-v1.html">Convertible</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-lg col-xl wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.9s">
                        <div class="category_item">
                            <div class="thumb">
                                <img src="{{asset('images/tipoAutos/coupe.png')}}" alt="5.png">
                            </div>
                            <div class="details">
                                <p class="title"><a href="page-car-single-v1.html">Coupe</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Featured Product  -->
        <section class="featured-product">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="main-title text-center">
                            <h2>Listado de autos</h2>
                        </div>
                    </div>
                </div>
                <div class="row p-0">
                    <div class="col-lg-12">
                        <div class="popular_listing_sliders row">

                            <!-- Tab panes -->
                            <div class="tab-content col-lg-12" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                                    aria-labelledby="nav-home-tab">
                                    <div class="row justify-content-center px-3 px-md-0">


                                            @foreach ($autos as $auto )
                                            <div class="car-listing col-12 col-md-6 col-xl-2 mx-1">
                                                <div class="thumb">
                                                    {{-- <div class="tag">FEATURED</div> --}}
                                                    @if ($auto->imagenPortada)
                                                    <img src="{{Storage::url($auto->imagenPortada)}}" alt="1.jpg">
                                                    @else
                                                    <img src="{{asset('images/default/auto.png')}}" alt="1.jpg">

                                                    @endif
                                                </div>
                                                <div class="details">
                                                    <div class="wrapper">
                                                        <h5 class="price">${{ number_format($auto->precio, 0, ',', '.') }}</h5>
                                                        <h6 class="title"><a
                                                              href="{{route('ver-auto',$auto)}}">{{$auto->marca->nombre}} - {{$auto->modelo->nombre}}</a>
                                                        </h6>
                                                        <div class="listign_review">

                                                        </div>
                                                    </div>
                                                    <div class="listing_footer">
                                                        <ul class="mb0">
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-road-perspective me-2"></span>{{$auto->kilometraje}}</a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-gas-station me-2"></span>{{$auto->combustible}}</a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-gear me-2"></span>{{$auto->cajaauto}}</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt20">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <a href="{{route('lista-de-autos')}}" class="more_listing">Ver todos los autos <span
                                    class="icon"><span class="fas fa-plus"></span></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Why Chose us  -->
        <section class="why-chose pt0 pb90">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="main-title text-center">
                            <h2>¿Por qué elegirnos?</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                        <div class="why_chose_us">
                            <div class="icon float-start"><span class="flaticon-price-tag"></span></div>
                            <div class="details">
                                <h5 class="title">Mejor precio</h5>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ullam vel rerum vero maiores, doloremque dolores.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                        <div class="why_chose_us">
                            <div class="icon float-start style2"><span class="flaticon-car"></span></div>
                            <div class="details">
                                <h5 class="title">Confiado por miles</h5>
                                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maxime omnis perspiciatis eum hic, delectus ut.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-4 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="why_chose_us">
                            <div class="icon float-start style3"><span class="flaticon-trust"></span></div>
                            <div class="details">
                                <h5 class="title">Amplia gama de marcas</h5>
                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Officiis ratione optio provident. Pariatur, fugiat minima.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Delivery Divider -->
        <section class="deliver-divider bg-img1">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="posr">
                            <div class="home1_divider_video_pop">

                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 col-xl-5">
                        <div class="home1_divider_content">
                            <h2 class="title">Lorem ipsum dolor sit amet consectetur</h2>
                            <p class="para">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quae adipisci possimus molestias nemo amet doloremque in itaque voluptatem magnam, beatae ipsum delectus neque facere nisi debitis dolorem. Reprehenderit, unde necessitatibus?.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Funfact -->
        <section class="our-funfact pt50 pb30 fondoColor">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                        <div class="funfact_one text-center">
                            <div class="details">
                                <div class="timer">27600</div>
                                <p class="ff_title">COCHES EN VENTA</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                        <div class="funfact_one text-center">
                            <div class="details">
                                <div class="timer">6500</div>
                                <p class="ff_title">VENTAS</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="funfact_one text-center">
                            <div class="details">
                                <div class="timer">8230</div>
                                <p class="ff_title">VISITANTES POR DÍA</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.7s">
                        <div class="funfact_one text-center">
                            <div class="details">
                                <div class="timer">5250</div>
                                <p class="ff_title">DISTRIBUIDORES VERIFICADOS</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        <!-- Our Blog -->
        <section class="featured-product">
            <div class="container-fluid">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="main-title text-center">
                            <h2>Autos más recientes</h2>
                        </div>
                    </div>
                </div>
                <div class="row p-0">
                    <div class="col-lg-12">
                        <div class="popular_listing_sliders row">

                            <!-- Tab panes -->
                            <div class="tab-content col-lg-12" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                                    aria-labelledby="nav-home-tab">
                                    <div class="row justify-content-center px-3 px-md-0">


                                            @foreach ($autosRecientes as $auto )
                                            <div class="car-listing col-12 col-md-6 col-xl-2 mx-1">
                                                <div class="thumb">
                                                    {{-- <div class="tag">FEATURED</div> --}}
                                                    <img src="images/listing/1.jpg" alt="1.jpg">

                                                </div>
                                                <div class="details">
                                                    <div class="wrapper">
                                                        <h5 class="price">${{ number_format($auto->precio, 0, ',', '.') }}</h5>
                                                        <h6 class="title"><a
                                                              href="page-car-single-v1.html">{{$auto->marca->nombre}} - {{$auto->modelo->nombre}}</a>
                                                        </h6>
                                                        <div class="listign_review">

                                                        </div>
                                                    </div>
                                                    <div class="listing_footer">
                                                        <ul class="mb0">
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-road-perspective me-2"></span>{{$auto->kilometraje}}</a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-gas-station me-2"></span>{{$auto->combustible}}</a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-gear me-2"></span>{{$auto->cajaauto}}</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            @endforeach
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt20">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <a href="{{route('lista-de-autos')}}" class="more_listing">Ver todos los autos <span
                                    class="icon"><span class="fas fa-plus"></span></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

@stop
