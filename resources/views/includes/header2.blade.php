<!-- header top -->
<div class="header_top home3_style dn-992">
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
<header class="header-nav menu_style_home_one home3_style main-menu">
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
                <img class="logo1 img-fluid logoTamaño" src="{{asset('images/logo.png')}}"  alt="header-logo2.png">
                <img class="logo2 img-fluid logoTamaño" src="{{asset('images/logo.png')}}"  alt="header-logo2.svg">
            </a>
            <!-- Responsive Menu Structure-->
            <ul id="respMenu" class="ace-responsive-menu text-end" data-menu-style="horizontal">
                <li> <a href="{{route('inicio')}}"><span class="title">Inicio</span></a>

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


<!-- Main Header Nav For Mobile -->
<div id="page" class="stylehome1 h0">
    <div class="mobile-menu">
        <div class="header stylehome1">
            <div class="mobile_menu_bar">
                <a class="menubar" href="#menu"><small>Menu</small><span></span></a>
            </div>
            <div class="mobile_menu_main_logo"><img class="nav_logo_img img-fluid" src="images/header-logo2.svg"
                    alt="images/header-logo2.png"></div>
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
                        <span class="phone-num"><i class="flaticon-clock"></i> <a href="#">Mon - Fri 8:00 -
                                18:00</a></span>
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
