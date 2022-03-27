<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="auto, car, car dealer, car dealership, car listing, cars, classified, dealership, directory, listing, modern, motors, responsive">
    <meta name="description" content="Voiture - Automotive & Car Dealer HTML Template">
    <meta name="CreativeLayers" content="ATFN">
    <!-- css file -->
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <!-- Responsive stylesheet -->
    <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">
    <!-- Title -->
    <title>Voiture - Automotive & Car Dealer HTML Template</title>
    <!-- Favicon -->
    <link href="{{ asset('images/favicon.ico') }}" sizes="128x128" rel="shortcut icon" type="image/x-icon" />
    <link href="{{ asset('images/favicon.ico') }}" sizes="128x128" rel="shortcut icon" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
</head>

<body>
    <div class="wrapper ovh">
        <div class="preloader"></div>
        <!-- Sidebar Panel Start -->
        <div class="listing_sidebar">
            <div class="siderbar_left_home pt20">
                <a class="sidebar_switch sidebar_close_btn float-end" href="#">X</a>
                <div class="footer_contact_widget mt100">
                    <h3 class="title">Quick contact info</h3>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
                        Aenean massa. Cum sociis Theme natoque penatibus et magnis dis parturient montes, nascetur.</p>
                </div>
                <div class="footer_contact_widget">
                    <h5 class="title">CONTACT</h5>
                    <div class="footer_phone">+1 670 936 46 70</div>
                    <p>hello@voiture.com</p>
                </div>
                <div class="footer_about_widget">
                    <h5 class="title">OFFICE</h5>
                    <p>Germany —<br>329 Queensberry Street,<br>North Melbourne VIC 3051</p>
                </div>
                <div class="footer_contact_widget">
                    <h5 class="title">OPENING HOURS</h5>
                    <p>Monday – Friday: 09:00AM – 09:00PM<br>Saturday: 09:00AM – 07:00PM<br>Sunday: Closed</p>
                </div>
            </div>
        </div>
        <!-- Sidebar Panel End -->

        <!-- header top -->
        <div class="header_top dn-992">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-xl-7">
                        <div class="header_top_contact_opening_widget text-center text-md-start">
                            <ul class="mb0">
                                <li class="list-inline-item"><a href="#"><span
                                            class="flaticon-phone-call"></span>1-800-458-56987</a></li>
                                <li class="list-inline-item"><a href="#"><span class="flaticon-map"></span>47 Bakery
                                        Street, London, UK</a></li>
                                <li class="list-inline-item"><a href="#"><span class="flaticon-clock"></span>Mon - Fri
                                        8:00 - 18:00</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-5">
                        <div class="header_top_social_widgets text-center text-md-end">
                            <ul class="m0">
                                <li class="list-inline-item"><a href="#"><span class="fab fa-facebook-f"></span></a>
                                </li>
                                <li class="list-inline-item"><a href="#"><span class="fab fa-twitter"></span></a></li>
                                <li class="list-inline-item"><a href="#"><span class="fab fa-instagram"></span></a></li>
                                <li class="list-inline-item"><a href="#"><span class="fab fa-linkedin"></span></a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Header Nav -->
        <header class="header-nav menu_style_home_one transparent main-menu">
            <!-- Ace Responsive Menu -->
            <nav>
                <div class="container posr">
                    <!-- Menu Toggle btn-->
                    <div class="menu-toggle">
                        <button type="button" id="menu-btn">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <a href="index.html" class="navbar_brand float-start dn-md">
                        <img class="logo1 img-fluid" src="images/header-logo.svg" alt="header-logo.svg">
                        <img class="logo2 img-fluid" src="images/header-logo2.svg" alt="header-logo2.svg">
                    </a>
                    <!-- Responsive Menu Structure-->
                    <ul id="respMenu" class="ace-responsive-menu text-end" data-menu-style="horizontal">
                        <li> <a href="#"><span class="title">Inicio</span></a>

                        </li>
                        <li> <a href="{{route('lista-de-autos')}}"><span class="title">Listado</span></a>

                        </li>
                        <li> <a href="#"><span class="title">Calculadora</span></a>

                        </li>
                        <li> <a href="{{route('contacto')}}"><span class="title">Contacto</span></a>

                        </li>

                        <li class="sidebar_panel"><a class="sidebar_switch pt0" href="#"><span></span></a></li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- Modal -->


        <!-- Main Header Nav For Mobile -->
        <div id="page" class="stylehome1 h0">
            <div class="mobile-menu">
                <div class="header stylehome1">
                    <div class="mobile_menu_bar">
                        <a class="menubar" href="#menu"><small>Menu</small><span></span></a>
                    </div>
                    <div class="mobile_menu_main_logo"><img class="nav_logo_img img-fluid"
                            src="images/header-logo2.svg" alt="images/header-logo2.png"></div>
                </div>
            </div>
            <!-- /.mobile-menu -->
            <nav id="menu" class="stylehome1">
                <ul>
                    <li><span class="text-white">Inicio</span>

                    </li>
                    <li><span class="text-white">Listado</span>

                    </li>
                    <li><span class="text-white">Calculadora</span>

                    </li>
                    <li><span class="text-white">Contacto</span>

                    </li>

                    <!-- Only for Mobile View -->
                    <li class="mm-add-listing">
                        <span class="border-none">
                            <span class="mmenu-contact-info">
                                <span class="phone-num"><i class="flaticon-map"></i> <a href="#">47 Bakery
                                        Street, London, UK</a></span>
                                <span class="phone-num"><i class="flaticon-phone-call"></i> <a
                                        href="#">1-800-458-56987</a></span>
                                <span class="phone-num"><i class="flaticon-clock"></i> <a href="#">Mon - Fri 8:00
                                        - 18:00</a></span>
                            </span>
                            <span class="social-links">
                                <a href="#"><span class="fab fa-facebook-f"></span></a>
                                <a href="#"><span class="fab fa-twitter"></span></a>
                                <a href="#"><span class="fab fa-instagram"></span></a>
                                <a href="#"><span class="fab fa-youtube"></span></a>
                                <a href="#"><span class="fab fa-pinterest"></span></a>
                            </span>
                        </span>
                    </li>
                </ul>
            </nav>
        </div>

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
                            <form action="{{route('lista-de-autos')}}">

                                <div class="advance_search_panel">
                                    <div class="row">
                                        <div class="col-lg-12">

                                            <div class="adss_bg_stylehome1">
                                                <div class="tab-content" id="pills-tabContent">
                                                    <div class="tab-pane fade show active" id="pills-allstatus"
                                                        role="tabpanel" aria-labelledby="pills-allstatus-tab">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <div class="home1_advance_search_wrapper">
                                                                    <ul class="mb0 text-center">
                                                                        <li class="list-inline-item">
                                                                            <div class="select-boxes">
                                                                                <div class="car_brand">
                                                                                    <h6 class="title">Marca
                                                                                    </h6>
                                                                                    <select class="selectpicker" name="marca">
                                                                                        <option value=""> Seleccione una marca
                                                                                        </option>
                                                                                        @foreach ($marcas as $marca )
                                                                                        <option value="{{$marca->nombre}}">{{$marca->nombre}}</option>
                                                                                        @endforeach
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="list-inline-item">
                                                                            <div class="select-boxes">
                                                                                <div class="car_models">
                                                                                    <h6 class="title">Modelo
                                                                                    </h6>
                                                                                    <select class="selectpicker" name="modelo">
                                                                                        <option value="">Seleccione un modelo
                                                                                        </option>
                                                                                        @foreach ($modelos as $modelo )
                                                                                        <option value="{{$modelo->nombre}}">{{$modelo->nombre}}</option>
                                                                                        @endforeach
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="list-inline-item">
                                                                            <div class="select-boxes">
                                                                                <div class="car_prices">
                                                                                    <h6 class="title">
                                                                                        Condición</h6>
                                                                                    <select class="selectpicker" name="condicion">
                                                                                        <option value="">Seleccione una condición
                                                                                        </option>
                                                                                        @foreach ($condiciones as $condicion )
                                                                                        <option value="{{$condicion->nombre}}">{{$condicion->nombre}}</option>
                                                                                        @endforeach
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="list-inline-item">
                                                                            <div class="d-block">
                                                                                <button type="submit"
                                                                                    class="btn btn-thm advnc_search_form_btn"><span
                                                                                        class="flaticon-magnifiying-glass"></span>Buscar</button>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
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
                                                    <img src="images/listing/1.jpg" alt="1.jpg">
                                                    <div class="thmb_cntnt2">
                                                        {{-- <ul class="mb0">
                                                            <li class="list-inline-item"><a class="text-white"
                                                                    href="#"><span
                                                                        class="flaticon-photo-camera mr3"></span>
                                                                    22</a></li>
                                                            <li class="list-inline-item"><a class="text-white"
                                                                    href="#"><span
                                                                        class="flaticon-play-button mr3"></span> 3</a>
                                                            </li>
                                                        </ul> --}}
                                                    </div>
                                                    <div class="thmb_cntnt3">
                                                        {{-- <ul class="mb0">
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-shuffle-arrows"></span></a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-heart"></span></a></li>
                                                        </ul> --}}
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="wrapper">
                                                        <h5 class="price">${{$auto->precio}}</h5>
                                                        <h6 class="title"><a
                                                              href="page-car-single-v1.html">{{$auto->marca}} - {{$auto->modelo}}</a>
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
                                {{-- <div class="video_popup_icon">
                                    {{-- <a class="video_popup_btn popup-img popup-youtube"
                                        href="https://www.youtube.com/watch?v=R7xbhKIiw4Y">
                                        <span class="flaticon-play"></span>
                                    </a> --}}
                                </div> --}}
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

        <!-- Our Popular Listing -->
        {{-- <section class="popular-listing pb80 bg-ptrn1 bgc-heading-color">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="main-title text-center">
                            <h2 class="text-white">Popular Listings</h2>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="home1_popular_listing">
                        <div class="listing_item_4grid_slider dots_none">
                            <div class="item">
                                <div class="car-listing">
                                    <div class="thumb">
                                        <div class="tag">FEATURED</div>
                                        <img src="images/listing/1.jpg" alt="1.jpg">
                                        <div class="thmb_cntnt2">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a class="text-white"
                                                        href="#"><span class="flaticon-photo-camera mr3"></span>
                                                        22</a></li>
                                                <li class="list-inline-item"><a class="text-white"
                                                        href="#"><span class="flaticon-play-button mr3"></span> 3</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="thmb_cntnt3">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-shuffle-arrows"></span></a></li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-heart"></span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <div class="wrapper">
                                            <h5 class="price">$129</h5>
                                            <h6 class="title"><a href="page-car-single-v1.html">Volvo XC90 -
                                                    2020</a></h6>
                                            <div class="listign_review">
                                                <ul class="mb0">
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">4.7</a></li>
                                                    <li class="list-inline-item">(684 reviews)</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="listing_footer">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-road-perspective me-2"></span>77362</a>
                                                </li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-gas-station me-2"></span>Diesel</a></li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-gear me-2"></span>Automatic</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="car-listing">
                                    <div class="thumb">
                                        <div class="tag">FEATURED</div>
                                        <img src="images/listing/2.jpg" alt="2.jpg">
                                        <div class="thmb_cntnt2">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a class="text-white"
                                                        href="#"><span class="flaticon-photo-camera mr3"></span>
                                                        22</a></li>
                                                <li class="list-inline-item"><a class="text-white"
                                                        href="#"><span class="flaticon-play-button mr3"></span> 3</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="thmb_cntnt3">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-shuffle-arrows"></span></a></li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-heart"></span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <div class="wrapper">
                                            <h5 class="price">$56</h5>
                                            <h6 class="title"><a href="page-car-single-v1.html">Mercedes-Benz
                                                    S 560 - 2021</a></h6>
                                            <div class="listign_review">
                                                <ul class="mb0">
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">4.7</a></li>
                                                    <li class="list-inline-item">(684 reviews)</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="listing_footer">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-road-perspective me-2"></span>77362</a>
                                                </li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-gas-station me-2"></span>Diesel</a></li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-gear me-2"></span>Automatic</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="car-listing">
                                    <div class="thumb">
                                        <div class="tag">FEATURED</div>
                                        <img src="images/listing/3.jpg" alt="3.jpg">
                                        <div class="thmb_cntnt2">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a class="text-white"
                                                        href="#"><span class="flaticon-photo-camera mr3"></span>
                                                        22</a></li>
                                                <li class="list-inline-item"><a class="text-white"
                                                        href="#"><span class="flaticon-play-button mr3"></span> 3</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="thmb_cntnt3">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-shuffle-arrows"></span></a></li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-heart"></span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <div class="wrapper">
                                            <h5 class="price">$230</h5>
                                            <h6 class="title"><a href="page-car-single-v1.html">BMW M8 Gran
                                                    Coupe Base - 2021</a></h6>
                                            <div class="listign_review">
                                                <ul class="mb0">
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">4.7</a></li>
                                                    <li class="list-inline-item">(684 reviews)</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="listing_footer">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-road-perspective me-2"></span>77362</a>
                                                </li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-gas-station me-2"></span>Diesel</a></li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-gear me-2"></span>Automatic</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="car-listing">
                                    <div class="thumb">
                                        <div class="tag blue">SPECIAL</div>
                                        <img src="images/listing/4.jpg" alt="4.jpg">
                                        <div class="thmb_cntnt2">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a class="text-white"
                                                        href="#"><span class="flaticon-photo-camera mr3"></span>
                                                        22</a></li>
                                                <li class="list-inline-item"><a class="text-white"
                                                        href="#"><span class="flaticon-play-button mr3"></span> 3</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="thmb_cntnt3">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-shuffle-arrows"></span></a></li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-heart"></span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <div class="wrapper">
                                            <h5 class="price">$478</h5>
                                            <h6 class="title"><a href="page-car-single-v1.html">Nıssan Qasqai
                                                    - Sky Pack</a></h6>
                                            <div class="listign_review">
                                                <ul class="mb0">
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#"><i
                                                                class="fa fa-star"></i></a></li>
                                                    <li class="list-inline-item"><a href="#">4.7</a></li>
                                                    <li class="list-inline-item">(684 reviews)</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="listing_footer">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-road-perspective me-2"></span>77362</a>
                                                </li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-gas-station me-2"></span>Diesel</a></li>
                                                <li class="list-inline-item"><a href="#"><span
                                                            class="flaticon-gear me-2"></span>Automatic</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> --}}

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


                                            @foreach ($autos as $auto )
                                            <div class="car-listing col-12 col-md-6 col-xl-2 mx-1">
                                                <div class="thumb">
                                                    {{-- <div class="tag">FEATURED</div> --}}
                                                    <img src="images/listing/1.jpg" alt="1.jpg">
                                                    <div class="thmb_cntnt2">
                                                        {{-- <ul class="mb0">
                                                            <li class="list-inline-item"><a class="text-white"
                                                                    href="#"><span
                                                                        class="flaticon-photo-camera mr3"></span>
                                                                    22</a></li>
                                                            <li class="list-inline-item"><a class="text-white"
                                                                    href="#"><span
                                                                        class="flaticon-play-button mr3"></span> 3</a>
                                                            </li>
                                                        </ul> --}}
                                                    </div>
                                                    <div class="thmb_cntnt3">
                                                        {{-- <ul class="mb0">
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-shuffle-arrows"></span></a>
                                                            </li>
                                                            <li class="list-inline-item"><a href="#"><span
                                                                        class="flaticon-heart"></span></a></li>
                                                        </ul> --}}
                                                    </div>
                                                </div>
                                                <div class="details">
                                                    <div class="wrapper">
                                                        <h5 class="price">${{$auto->precio}}</h5>
                                                        <h6 class="title"><a
                                                              href="page-car-single-v1.html">{{$auto->marca}} - {{$auto->modelo}}</a>
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

        <!-- Our Partners -->
        <section class="our-partner pt0 pb100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="main-title text-center">
                            <h2>Popular Makes</h2>
                        </div>
                    </div>
                </div>
                <div class="partner_divider">
                    <div class="row">
                        <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s"
                            data-wow-delay="0.1s">
                            <div class="partner_item">
                                <img src="images/partners/1.png" alt="1.png">
                            </div>
                        </div>
                        <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s"
                            data-wow-delay="0.3s">
                            <div class="partner_item">
                                <img src="images/partners/2.png" alt="2.png">
                            </div>
                        </div>
                        <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s"
                            data-wow-delay="0.5s">
                            <div class="partner_item">
                                <img src="images/partners/3.png" alt="3.png">
                            </div>
                        </div>
                        <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s"
                            data-wow-delay="0.7s">
                            <div class="partner_item">
                                <img src="images/partners/4.png" alt="4.png">
                            </div>
                        </div>
                        <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s"
                            data-wow-delay="0.9s">
                            <div class="partner_item">
                                <img src="images/partners/5.png" alt="5.png">
                            </div>
                        </div>
                        <div class="col-6 col-xs-6 col-sm-4 col-xl-2 wow fadeInUp" data-wow-duration="1s"
                            data-wow-delay="1.1s">
                            <div class="partner_item">
                                <img src="images/partners/6.png" alt="6.png">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Our Footer -->
        <section class="footer_one pt50 pb25">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xl-7">
                        <div class="footer_about_widget text-start">
                            <div class="logo mb40 mb0-sm"><img src="images/header-logo.svg" alt="header-logo.png">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-xl-5">
                        <div class="footer_menu_widget text-start text-md-end mt15">
                            <ul id="respMenu" class="ace-responsive-menu text-end" data-menu-style="horizontal">
                                <li> <a href="#"><span class="title">Inicio</span></a>

                                </li>
                                <li> <a href="{{route('lista-de-autos')}}"><span class="title">Listado</span></a>

                                </li>
                                <li> <a href="#"><span class="title">Calculadora</span></a>

                                </li>
                                <li> <a href="{{route('contacto')}}"><span class="title">Contacto</span></a>

                                </li>

                                <li class="sidebar_panel"><a class="sidebar_switch pt0" href="#"><span></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="container pt80 pt20-sm pb70 pb0-sm">
                <div class="row">
                    <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                        <div class="footer_about_widget">
                            <h5 class="title">OFFICE</h5>
                            <p>Germany —<br>329 Queensberry Street,<br>North Melbourne VIC 3051</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                        <div class="footer_contact_widget">
                            <h5 class="title">NEED HELP</h5>
                            <div class="footer_phone">+1 670 936 46 70</div>
                            <p>hello@voiture.com</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4 col-lg-3 col-xl-3">
                        <div class="footer_contact_widget">
                            <h5 class="title">OPENING HOURS</h5>
                            <p>Monday – Friday: 09:00AM – 09:00PM<br>Saturday: 09:00AM – 07:00PM<br>Sunday: Closed</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-6 col-lg-3 col-xl-3">
                        <div class="footer_contact_widget">
                            <h5 class="title">KEEP IN TOUCH</h5>
                            <form class="footer_mailchimp_form">
                                <div class="wrapper">
                                    <div class="col-auto">
                                        <input type="email" class="form-control" placeholder="Enter your email...">
                                        <button type="submit">GO</button>
                                    </div>
                                </div>
                            </form>
                            <p>Get latest updates and offers.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-8 col-xl-9">
                        <div class="copyright-widget mt5 text-start mb20-sm">
                            <p>CreativeLayers © 2022. All Rights Reserved.</p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="footer_social_widget text-start text-md-end">
                            <ul class="mb0">
                                <li class="list-inline-item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab fa-instagram"></i></a></li>
                                <li class="list-inline-item"><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <a class="scrollToHome" href="#"><i class="fas fa-arrow-up"></i></a>
    </div>
    <!-- Wrapper End -->
    <script src="{{ asset('js/jquery-3.6.0.js') }}"></script>
    <script src="{{ asset('js/jquery-migrate-3.0.0.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap-select.min.js') }}"></script>
    <script src="{{ asset('js/jquery.mmenu.all.js') }}"></script>
    <script src="{{ asset('js/ace-responsive-menu.js') }}"></script>
    <script src="{{ asset('js/isotop.js') }}"></script>
    <script src="{{ asset('js/snackbar.min.js') }}"></script>
    <script src="{{ asset('js/simplebar.js') }}"></script>
    <script src="{{ asset('js/parallax.js') }}"></script>
    <script src="{{ asset('js/scrollto.js') }}"></script>
    <script src="{{ asset('js/jquery-scrolltofixed-min.js') }}"></script>
    <script src="{{ asset('js/jquery.counterup.js') }}"></script>
    <script src="{{ asset('js/wow.min.js') }}"></script>
    <script src="{{ asset('js/progressbar.js') }}"></script>
    <script src="{{ asset('js/slider.js') }}"></script>
    <script src="{{ asset('js/timepicker.js') }}"></script>
    <script src="{{ asset('js/wow.min.js') }}"></script>
    <!-- Custom scrassetipt for all pages -->
    <script src="{{ asset('js/script.js') }}"></script>
</body>

</html>
