@include('includes.sidebar')

<!-- header top -->
<div class="header_top dn-992">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-xl-7">
                <div class="header_top_contact_opening_widget text-center text-md-start">
                    <ul class="mb0">
                        <li class="list-inline-item"><a href="#"><span
                                    class="flaticon-phone-call"></span>+54 3482 313609</a></li>
                        <li class="list-inline-item"><a href="#sucursales"><span class="flaticon-map"></span>Sucursales</a></li>
                        <li class="list-inline-item"><a href="#"><span class="flaticon-clock"></span>Lun - Vie
                                08:00 - 12:00 & 16:00 - 19:30 |  Sab 08:30 - 12:00</a></li>
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
                <img class="logo1 img-fluid logoTamaño" src="{{asset('images/logoBlanco.png')}}" alt="header-logo.svg" >
                <img class="logo2 img-fluid logoTamaño" src="{{asset('images/logoBlanco.png')}}" alt="header-logo2.svg" >
            </a>
            <!-- Responsive Menu Structure-->
            <ul id="respMenu" class="ace-responsive-menu text-end" data-menu-style="horizontal">
                <li> <a href="#"><span class="title">Inicio</span></a>

                </li>
                <li> <a href="{{route('lista-de-autos')}}"><span class="title">Listado</span></a>

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
            <div class="mobile_menu_main_logo logoTamaño"><img class="nav_logo_img img-fluid"
                    src="{{asset('images/logo.png')}}" alt="imagen logo"></div>
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
