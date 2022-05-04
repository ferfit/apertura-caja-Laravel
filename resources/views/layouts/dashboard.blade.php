<!DOCTYPE html>
<html dir="ltr" lang="es">

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
    <link rel="stylesheet" href="{{ asset('css/dashbord_navitaion.css') }}">
    <!-- Responsive stylesheet -->
    <link rel="stylesheet" href="{{ asset('css/responsive.css') }}">
    <!-- Title -->
    <title>AgenteCar</title>
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
    <div class="wrapper">
        <div class="preloader"></div>

        <!-- header top -->
        <div class="header_top home3_style dashbord_style dn-992">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8 col-xl-7">
                        <div class="header_top_contact_opening_widget text-center text-md-start">
                            <ul class="mb0">

                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-5">
                        <div class="header_top_social_widgets text-center text-md-end">
                            <ul class="m0">
                                <li class="list-inline-item"><a href="https://www.facebook.com/Pereson-Consignaciones-104480548148002" target="_blank"><span class="fab fa-facebook-f"></span></a>
                                </li>
                                <li class="list-inline-item"><a href="https://www.instagram.com/peresonautomotores/?hl=es" target="_blank"><span class="fab fa-instagram"></span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main Header Nav -->
        <header class="header-nav menu_style_home_one home3_style dashbord_style main-menu">
            <!-- Ace Responsive Menu -->
            <nav class="posr">
                <div class="container-fluid">
                    <!-- Menu Toggle btn-->
                    <div class="menu-toggle">
                        <button type="button" id="menu-btn">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <a href="index.html" class="navbar_brand float-start dn-md">
                        <img class="logo1 img-fluid logoTamaño" src="{{asset('images/logo.png')}}" alt="header-logo2.png" >
                        <img class="logo2 img-fluid logoTamaño" src="{{asset('images/logo.png')}}" alt="header-logo2.svg" >
                    </a>
                    <!-- Responsive Menu Structure-->
                    <ul id="respMenu" class="ace-responsive-menu menu_list_custom_code wa text-end"
                        data-menu-style="horizontal">
                        <li> <a href="{{route('inicio')}}"><span class="title">Inicio</span></a>

                        </li>
                        <li> <a href="{{ route('lista-de-autos') }}"><span class="title">Listado</span></a>

                        </li>
                        <li> <a href="{{ route('contacto') }}"><span class="title">Contacto</span></a>

                        </li>



                        <li class="user_setting">
                            <div class="dropdown">
                                <a class="btn dropdown-toggle" href="#" data-bs-toggle="dropdown">

                                    <span class="dn-1366">{{auth()->user()->name}} <span
                                            class="fas fa-angle-down ml5"></span></span>
                                </a>
                                <div class="dropdown-menu">
                                    <div class="user_set_header">

                                        <p>{{auth()->user()->name}} <br><span class="address">{{auth()->user()->email}}</span></p>
                                    </div>
                                    <div class="user_setting_content">
                                        <form action="{{ route('logout') }}" method="post">
                                            @csrf
                                            <button type="submit" class="dropdown-item cerrarSesion">Cerrar sesión</button>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>


        <!-- Main Header Nav For Mobile -->
        <div id="page" class="stylehome1 h0">
            <div class="mobile-menu">
                <div class="header stylehome1">
                    <div class="mobile_menu_bar">
                        <a class="menubar" href="#menu"><small>Menú</small><span></span></a>
                    </div>
                    <div class="mobile_menu_main_logo"><img class="nav_logo_img img-fluid logoTamaño" src="{{asset('images/logo.png')}}"
                            alt="images/header-logo2.png"></div>
                </div>
            </div>
            <!-- /.mobile-menu -->
            <nav id="menu" class="stylehome1">
                <ul>
                    <li> <a href="{{route('inicio')}}"><span class="title">Inicio</span></a>

                    </li>
                    <li> <a href="{{route('lista-de-autos')}}"><span class="title">Listado</span></a>

                    </li>

                    </li>
                    <li> <a href="{{route('contacto')}}"><span class="title">Contacto</span></a>

                    </li>

                    </li>
                    <!-- Only for Mobile View -->
                    <li class="mm-add-listing">
                        <span class="border-none">
                            <span class="mmenu-contact-info">
                                <span class="phone-num"><i class="flaticon-map"></i>
                                    Calle 47 y Lucas Funes, Reconquista Santa Fe <br>
                                    Iriondo y Hipolito Yrigogen, Reconquista Santa Fe
                                </span>
                                <span class="phone-num"><i class="flaticon-phone-call"></i> <a
                                        href="#">+54 3482 313609</a></span>
                                <span class="phone-num"><i class="flaticon-clock"></i> <a href="#">Lun - Vie
                                    08:00 - 12:00 & 16:00 - 19:30 <br> Sab 08:30 - 12:00</a></span>
                            </span>
                            <span class="social-links">
                                <a href="https://www.facebook.com/Pereson-Consignaciones-104480548148002" target="_blank"><span class="fab fa-facebook-f"></span></a>
                                <a href="https://www.instagram.com/peresonautomotores/?hl=es" target="_blank"><span class="fab fa-instagram"></span></a>
                            </span>
                        </span>
                    </li>
                </ul>
            </nav>
        </div>

        <!-- Our Dashbord -->
        <section class="our-dashbord dashbord bgc-f9">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xxl-10 offset-xxl-2 dashboard_grid_space">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="extra-dashboard-menu dn-lg">
                                    <div class="ed_menu_list">
                                        <ul>

                                            @if(auth()->user()->rol == 'administrador')

                                                <li><a @if (Request::url() == route('dashboard')) class="active" @endif href="{{route('dashboard')}}"><span
                                                            class="flaticon-dashboard"></span>Dashboard</a></li>
                                            @endif


                                             {{-- <li @if (Request::is('/') class="active" @endif >Home</li> --}}
                                            <li><a @if (Request::url() == route('autos.index')) class="active" @endif href="{{route('autos.index')}}"><span
                                                    class="flaticon-user-2"></span>Autos</a></li>

                                            <li><a @if (Request::url() == route('clientes.index')) class="active" @endif href="{{route('clientes.index')}}"><span
                                                    class="flaticon-user-2"></span>Clientes</a></li>

                                            @if (auth()->user()->rol == 'administrador')


                                                <li><a @if (Request::url() == route('ventas.index')) class="active" @endif href="{{route('ventas.index')}}"><span
                                                    class="flaticon-user-2"></span>Ventas</a></li>
                                                    <li><a @if (Request::url() == route('users.index')) class="active" @endif href="{{route('users.index')}}"><span
                                                        class="flaticon-user-2"></span>Usuarios</a></li>

                                            @endif



                                            {{-- <li><a href="page-dashboard-listing.html"><span
                                                        class="flaticon-list"></span>My Listing</a></li>
                                            <li><a href="page-dashboard-favorites.html"><span
                                                        class="flaticon-heart"></span>Favorites</a></li>
                                            <li><a href="page-dashboard-add-listings.html"><span
                                                        class="flaticon-plus"></span>Add Listing</a></li>
                                            <li><a href="page-dashboard-messages.html"><span
                                                        class="flaticon-message"></span>Messages</a></li>
                                            <li><a href="page-login.html"><span
                                                        class="flaticon-logout"></span>Logout</a></li> --}}
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="dashboard_navigationbar dn db-lg mt50">
                                    <div class="dropdown">
                                        <button onclick="myFunction()" class="dropbtn"><i
                                                class="fa fa-bars pr10"></i> Panel de administración</button>
                                        <ul id="myDropdown" class="dropdown-content">
                                            @if(auth()->user()->rol == 'administrador')

                                                <li><a @if (Request::url() == route('dashboard')) class="active" @endif href="{{route('dashboard')}}"><span
                                                            class="flaticon-dashboard"></span>Dashboard</a></li>
                                            @endif


                                             {{-- <li @if (Request::is('/') class="active" @endif >Home</li> --}}
                                            <li><a @if (Request::url() == route('autos.index')) class="active" @endif href="{{route('autos.index')}}"><span
                                                    class="flaticon-user-2"></span>Autos</a></li>

                                            <li><a @if (Request::url() == route('clientes.index')) class="active" @endif href="{{route('clientes.index')}}"><span
                                                    class="flaticon-user-2"></span>Clientes</a></li>

                                            @if (auth()->user()->rol == 'administrador')


                                                <li><a @if (Request::url() == route('ventas.index')) class="active" @endif href="{{route('ventas.index')}}"><span
                                                    class="flaticon-user-2"></span>Ventas</a></li>
                                                    <li><a @if (Request::url() == route('users.index')) class="active" @endif href="{{route('users.index')}}"><span
                                                        class="flaticon-user-2"></span>Usuarios</a></li>

                                            @endif
                                            <li><form action="{{ route('logout') }}" method="post">
                                                @csrf
                                                <button type="submit" class="dropdown-item cerrarSesion text-white">Cerrar sesión</button>
                                            </form></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        @yield('contenido')

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
    <script src="{{ asset('js/jquery.mmenu.all.js') }}"></script>
    <script src="{{ asset('js/ace-responsive-menu.js') }}"></script>
    <script src="{{ asset('js/bootstrap-select.min.js') }}"></script>
    <script src="{{ asset('js/chart.min.js') }}"></script>
    <script src="{{ asset('js/chart-custome.js') }}"></script>
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
    <script src="{{ asset('js/dashboard-script.js') }}"></script>
    <!-- Custom script for all pages -->
    <script src="{{ asset('js/script.js') }}"></script>

    @yield('css')
    @yield('js')
</body>

</html>
