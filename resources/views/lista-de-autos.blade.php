@extends('layouts.inicio')

@section('contenido')


        @include('includes.header2')

        <!-- Buscador  -->
        <section class="advance_search_menu_sectn bgc-thm2 pt20 pb0 mt70-992">
            <div class="container">
                <form action="{{route('lista-de-autos')}}">

                    @livewire('buscador-lista')

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

                            </div>
                        </div>

                        <div class="col-md-8">
                            {{-- <div class="page_control_shorting right_area text-end tac-xsd">
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
                            </div> --}}
                        </div>
                    </div>
                </div>
                <div class="row">

                    @foreach ($autos as $auto)
                        <div class="col-sm-6 col-lg-4 col-xl-3">
                            <div class="car-listing">
                                <div class="thumb img__contenedor">

                                    @if (count($auto->files)>0)
                                                    <img src="{{Storage::url($auto->files->first()->url)}}" alt="1.jpg">
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
                                            href="{{route('ver-auto',$auto)}}">{{$auto->titulo}}</a>
                                            <h6>{{$auto->marca->nombre}} - {{$auto->modelo->nombre}}- Año: {{ $auto->año }}</h6>
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
