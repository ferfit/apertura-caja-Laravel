@extends('layouts.inicio')

@section('contenido')

        @include('includes.sidebar')

        @include('includes.header2')

        <!-- Buscador  -->
        <section class="advance_search_menu_sectn bgc-thm2 pt20 pb0 mt70-992">
            <div class="container">
                <form action="{{route('lista-de-autos')}}">

                    <div class="row">
                        <div class="col col-sm-4 col-lg-2">
                            <div class="advance_search_style">
                                <select class="selectpicker show-tick" name="marca">
                                    <option value=""> Seleccione una marca
                                    </option>
                                    @foreach ($marcas as $marca )
                                    <option value="{{$marca->nombre}}">{{$marca->nombre}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col col-sm-4 col-lg-2">
                            <div class="advance_search_style">
                                <select class="selectpicker show-tick" name="modelo">
                                    <option value="">Seleccione un modelo
                                    </option>
                                    @foreach ($modelos as $modelo )
                                    <option value="{{$modelo->nombre}}">{{$modelo->nombre}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col col-sm-4 col-lg-2">
                            <div class="advance_search_style">
                                <select class="selectpicker show-tick" name="condicion">
                                    <option value="">Seleccione una condición
                                    </option>
                                    @foreach ($condiciones as $condicion )
                                    <option value="{{$condicion->nombre}}">{{$condicion->nombre}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <div class="col col-sm-4 col-lg-2">
                            <div class="advance_search_style">
                                <button type="submit" class="btn btn-thm advnc_search_form_btn"><span
                                        class="flaticon-magnifiying-glass"></span>Buscar</button>
                            </div>
                        </div>
                    </div>
                    {{-- <div class="collapse" id="collapseAdvanceSearch">
                        <div class="row bgc-thm2">
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <select class="selectpicker show-tick">
                                        <option>Year</option>
                                        <option>1967</option>
                                        <option>1990</option>
                                        <option>2000</option>
                                        <option>2002</option>
                                        <option>2005</option>
                                        <option>2010</option>
                                        <option>2015</option>
                                        <option>2020</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <input class="form-control form_control" type="text" placeholder="Min. Mileage">
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <input class="form-control form_control" type="text" placeholder="Max. Mileage">
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <select class="selectpicker show-tick">
                                        <option>Fuel Type</option>
                                        <option>Diesel</option>
                                        <option>Electric</option>
                                        <option>Hybrid</option>
                                        <option>Petrol</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <select class="selectpicker show-tick">
                                        <option>Transmission</option>
                                        <option>Autometic</option>
                                        <option>Manual</option>
                                        <option>Semi-Autometic</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <select class="selectpicker show-tick">
                                        <option>Doors</option>
                                        <option>2 Doors</option>
                                        <option>3 Doors</option>
                                        <option>4 Doors</option>
                                        <option>5 Doors</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <select class="selectpicker show-tick">
                                        <option>Interior Color</option>
                                        <option>Black</option>
                                        <option>Beige</option>
                                        <option>Brown</option>
                                        <option>Red</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <select class="selectpicker show-tick">
                                        <option>Exterior Color</option>
                                        <option>Black</option>
                                        <option>Beige</option>
                                        <option>Brown</option>
                                        <option>Red</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <select class="selectpicker show-tick">
                                        <option>Cylinders</option>
                                        <option>4</option>
                                        <option>6</option>
                                        <option>8</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <select class="selectpicker show-tick">
                                        <option>Listing Status</option>
                                        <option>Active</option>
                                        <option>Pending</option>
                                        <option>Disable</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col col-sm-4 col-lg-2">
                                <div class="advance_search_style">
                                    <input class="form-control form_control" type="text" placeholder="VIN number">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="advance_search_style">
                                    <div class="uilayout_range">
                                        <h6 class="ass_price_title text-white text-start">Price</h6>
                                        <div id="slider"></div>
                                        <span id="slider-range-value1"></span>
                                        <span id="slider-range-value2"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="advance_search_style">
                                    <div class="ui_kit_checkbox text-start">
                                        <h6 class="ass_feature_title text-white">Features</h6>
                                        <div class="df mb20">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">Adaptive Cruise
                                                Control
                                                (6,676)</label>
                                        </div>
                                        <div class="df mb20">
                                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                                            <label class="custom-control-label" for="customCheck2">Cooled Seats
                                                (9,784)</label>
                                        </div>
                                        <div class="df mb20">
                                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                                            <label class="custom-control-label" for="customCheck3">Keyless Start
                                                (9,784)</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="advance_search_style">
                                    <div class="ui_kit_checkbox text-start pt40 pt0-sm">
                                        <div class="df mb20">
                                            <input type="checkbox" class="custom-control-input" id="customCheck4">
                                            <label class="custom-control-label" for="customCheck4">Navigation System
                                                (9,784)</label>
                                        </div>
                                        <div class="df mb20">
                                            <input type="checkbox" class="custom-control-input" id="customCheck5">
                                            <label class="custom-control-label" for="customCheck5">Remote Start
                                                (9,784)</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> --}}
                </form>
            </div>
        </section>

        <!-- Listado de autos cabecera -->
        <section class="inner_page_breadcrumb style2 inner_page_section_spacing">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="breadcrumb_content style2">

                            <ol class="breadcrumb fn-sm mt15-sm">
                                <li class="breadcrumb-item"><a href="{{ route('inicio') }}">inicio</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Listado de autos</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Listado de autos cuerpo-->
        <section class="our-listing pt0 bgc-f9 pb30-991">
            <div class="container">
                <div class="row">
                    <div class="listing_filter_row db-767">
                        <div class="col-md-4">
                            <div class="page_control_shorting left_area tac-sm mb30-767 mt15">
                               {{--  <p>Encontramos <span class="heading-color fw600">{{ }} </span> Autos
                                    disponibles
                                    para ti</p> --}}
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="page_control_shorting right_area text-end tac-xsd">
                                <ul>
                                    <li class="list-inline-item short_by_text listone">Order por:</li>
                                    <li class="list-inline-item listwo">
                                        <select class="selectpicker show-tick">
                                            <option>Date: newest First</option>
                                            <option>Most Recent</option>
                                            <option>Recent</option>
                                            <option>Best Selling</option>
                                            <option>Old Review</option>
                                        </select>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">

                    @foreach ($autos as $auto)
                        <div class="col-sm-6 col-lg-4 col-xl-3">
                            <div class="car-listing">
                                <div class="thumb">

                                    @if ($auto->imagenPortada)
                                                    <img src="{{Storage::url($auto->imagenPortada)}}" alt="1.jpg">
                                                    @else
                                                    <img src="{{asset('images/default/auto.png')}}" alt="1.jpg">

                                                    @endif
                                    <div class="thmb_cntnt2">
                                        <ul class="mb0">

                                        </ul>
                                    </div>
                                    <div class="thmb_cntnt3">

                                    </div>
                                </div>
                                <div class="details">
                                    <div class="wrapper">
                                        <h5 class="price">${{ number_format($auto->precio, 0, ',', '.') }}</h5>
                                        <h6 class="title"><a
                                                href="{{route('ver-auto',$auto)}}">{{ $auto->marca }} -
                                                {{ $auto->modelo }}</a>
                                        </h6>
                                        <div class="listign_review">

                                        </div>
                                    </div>
                                    <div class="listing_footer">
                                        <ul class="mb0">
                                            <li class="list-inline-item"><a href="#"><span
                                                        class="flaticon-road-perspective me-2"></span>{{ $auto->kilometraje }}</a>
                                            </li>
                                            <li class="list-inline-item"><a href="#"><span
                                                        class="flaticon-gas-station me-2"></span>{{ $auto->combustible }}</a>
                                            </li>
                                            <li class="list-inline-item"><a href="#"><span
                                                        class="flaticon-gear me-2"></span>{{ $auto->cajaauto }}</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="mbp_pagination mt10">
                            <ul class="page_navigation">
                                {{-- <li class="page-item">
                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true"> <span
                                            class="fa fa-arrow-left"></span></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item active" aria-current="page">
                                    <a class="page-link" href="#">2 <span
                                            class="sr-only">(current)</span></a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#"><span class="fa fa-arrow-right"></span></a>
                                </li> --}}
                                {{$autos->links()}}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>


@stop



@section('js')
<script src="{{asset('js/pricing-slider.js')}}"></script>
@stop
