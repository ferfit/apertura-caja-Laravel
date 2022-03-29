@extends('layouts.inicio')

@section('contenido')

        @include('includes.sidebar')

        @include('includes.header2')



        <!-- Agent Single Grid View -->
        <section class="our-agent-single bgc-f9 pb90 mt70-992 pt30">
            <div class="container">
                <div class="row mb30">
                    <div class="col-xl-12">
                        <div class="breadcrumb_content style2">
                            <ol class="breadcrumb float-start">
                                <li class="breadcrumb-item"><a href="{{route('inicio')}}">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Auto en venta</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <div class="row mb30">
                    <div class="col-lg-7 col-xl-8">
                        <div class="single_page_heading_content">
                            <div class="car_single_content_wrapper">
                                {{-- <ul class="car_info mb20-md">
                                    <li class="list-inline-item"><a href="#">BRAND NEW - IN STOCK</a></li>
                                    <li class="list-inline-item"><a href="#"><span
                                                class="flaticon-clock-1 vam"></span>2 years ago</a></li>
                                    <li class="list-inline-item"><a href="#"><span
                                                class="flaticon-eye vam"></span>13102</a></li>
                                </ul> --}}
                                <h2 class="title">{{ $auto->marca }} - {{ $auto->modelo }}</h2>
                                <p class="para">Versión: {{ $auto->version }} - Año: {{ $auto->año }}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-xl-4">
                        <div class="single_page_heading_content text-start text-lg-end">
                            <div class="share_content">
                                {{-- <ul>
                                    <li class="list-inline-item"><a href="#"><span
                                                class="flaticon-email"></span>EMAIL</a></li>
                                    <li class="list-inline-item"><a href="#"><span
                                                class="flaticon-printer"></span>PRINT</a></li>
                                    <li class="list-inline-item"><a href="#"><span
                                                class="flaticon-heart"></span>SAVE</a></li>
                                    <li class="list-inline-item"><a href="#"><span
                                                class="flaticon-share"></span>SHARE</a></li>
                                </ul> --}}
                            </div>
                            <div class="price_content">
                                <div class="price mt60 mb10 mt10-md">
                                    <h3><small
                                            class="mr15"><del>{{-- $92,480 --}}</del></small>${{ number_format($auto->precio, 0, ',', '.') }}
                                    </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 col-xl-8">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="single_product_grid single_page1">
                                    <div class="single_product_slider">
                                        @foreach ($auto->files as $file )
                                        <div class="item">
                                            <div class="sps_content">
                                                <div class="thumb">
                                                    <div class="single_product">
                                                        <div class="single_item">
                                                            <div class="thumb">

                                                                <img class="img-fluid"
                                                                    src="{{Storage::url($file->url)}}"
                                                                    alt="imagen de auto">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        @endforeach


                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="opening_hour_widgets p30 mt30">
                                    <div class="wrapper">
                                        <ul class="list-group">
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Patente</div>
                                                </div>
                                                <span class="schedule">{{ $auto->patente }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Condición</div>
                                                </div>
                                                <span class="schedule">{{ $auto->condicion }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Marca</div>
                                                </div>
                                                <span class="schedule">{{ $auto->marca }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Modelo</div>
                                                </div>
                                                <span class="schedule">{{ $auto->modelo }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Versión</div>
                                                </div>
                                                <span class="schedule">{{ $auto->version }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Año</div>
                                                </div>
                                                <span class="schedule">{{ $auto->año }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Precio Compra</div>
                                                </div>
                                                <span
                                                    class="schedule">${{ number_format($auto->preciocosto, 2, ',', '.') }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Precio Venta</div>
                                                </div>
                                                <span
                                                    class="schedule">${{ number_format($auto->precio, 2, ',', '.') }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Ciudad</div>
                                                </div>
                                                <span class="schedule">{{ $auto->ciudad }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Provincia</div>
                                                </div>
                                                <span class="schedule">{{ $auto->provincia }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Tipo</div>
                                                </div>
                                                <span class="schedule">{{ $auto->tipo }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Kilometraje</div>
                                                </div>
                                                <span class="schedule">{{ $auto->kilometraje }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Combustible</div>
                                                </div>
                                                <span class="schedule">{{ $auto->combustible }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Tipo de motor</div>
                                                </div>
                                                <span class="schedule">{{ $auto->tipomotor }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Tracción</div>
                                                </div>
                                                <span class="schedule">{{ $auto->traccion }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Caja</div>
                                                </div>
                                                <span class="schedule">{{ $auto->cajaauto }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Color</div>
                                                </div>
                                                <span class="schedule">{{ $auto->color }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Tapizado</div>
                                                </div>
                                                <span class="schedule">{{ $auto->tapizado }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Dirección</div>
                                                </div>
                                                <span class="schedule">{{ $auto->direccion }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Valor</div>
                                                </div>
                                                <span class="schedule">{{ $auto->valor }}</span>
                                            </li>
                                            <li
                                                class="list-group-item d-flex justify-content-between align-items-start">
                                                <div class="me-auto">
                                                    <div class="day">Permuta</div>
                                                </div>
                                                <span class="schedule">{{ $auto->permuta }}</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="listing_single_description mt30">
                                    <h4 class="mb30">Descripción</h4>
                                    <p class="first-para">{{ $auto->descripcion }}</p>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-xl-4">

                        <div class="sidebar_seller_contact">

                            <h4 class="mb30">Contacto</h4>
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <input class="form-control form_control" type="text" placeholder="Nombre">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <input class="form-control form_control" type="text"
                                                placeholder="Teléfono">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="mb-3">
                                            <input class="form-control form_control" type="email" placeholder="Email">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <textarea class="form-control" rows="6">Mensaje...</textarea>
                                        </div>

                                        <button type="submit" class="btn btn-block btn-whatsapp mb0"><span
                                                class="flaticon-whatsapp mr10 text-white"></span>Enviar por
                                            WhatsApp</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Our Shopping Product -->
        <section class="our-shop pb100">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        {{-- <div class="main-title text-center text-md-start mb15-sm">
                            <h2>Why Choose Us?</h2>
                        </div> --}}
                    </div>
                    <div class="col-md-4">
                        <div class="text-center text-md-end mb30-sm">
                            <a href="{{ route('lista-de-autos') }}" class="more_listing">Ver todos los autos <span
                                    class="icon"><span class="fas fa-plus"></span></span></a>
                        </div>
                    </div>
                </div>
                {{-- <div class="row">
                    <div class="col-lg-12">
                        <div class="listing_item_4grid_slider nav_none">
                            <div class="item">
                                <div class="car-listing">
                                    <div class="thumb">
                                        <div class="tag">FEATURED</div>
                                        <img src="images/listing/1.jpg" alt="1.jpg">
                                        <div class="thmb_cntnt2">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                               {{asset('                          ')}}   class="flaticon-road-perspective me-2"></span>77362</a>
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
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                            <div class="item">
                                <div class="car-listing">
                                    <div class="thumb">
                                        <div class="tag">FEATURED</div>
                                        <img src="images/listing/1.jpg" alt="1.jpg">
                                        <div class="thmb_cntnt2">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                            <div class="item">
                                <div class="car-listing">
                                    <div class="thumb">
                                        <div class="tag">FEATURED</div>
                                        <img src="images/listing/1.jpg" alt="1.jpg">
                                        <div class="thmb_cntnt2">
                                            <ul class="mb0">
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-photo-camera mr3"></span> 22</a></li>
                                                <li class="list-inline-item"><a class="text-white" href="#"><span
                                                            class="flaticon-play-button mr3"></span> 3</a></li>
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
                </div> --}}
            </div>
        </section>

@stop

@section('js')
@stop
