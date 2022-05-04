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
                            <li class="breadcrumb-item"><a href="{{ route('inicio') }}">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Auto en venta</li>
                        </ol>
                    </div>
                </div>
            </div>
            <div class="row mb30">
                <div class="col-lg-7 col-xl-8">
                    <div class="single_page_heading_content">
                        <div class="car_single_content_wrapper">

                            <h2 class="title">{{ $auto->titulo}}</h2>
                            <p class="para">{{ $auto->marca->nombre }} - {{ $auto->modelo->nombre }}</p>
                            <p class="para">Versión: {{ $auto->version }} - Año: {{ $auto->año }}</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-xl-4">
                    <div class="single_page_heading_content text-start text-lg-end">
                        <div class="share_content">

                        </div>
                        <div class="price_content">
                            <div class="price mt60 mb10 mt10-md">
                                <h3><small
                                        class="mr15"></small>${{ number_format($auto->precio, 0, ',', '.') }}
                                </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-xl-8">
                    <div class="row">
                        <div class="">
                            <!-- Place somewhere in the <body> of your page -->
                            <div class="flexslider">
                                <ul class="slides overflow-hidden">
                                    @foreach ($auto->files as $file)
                                        <li class="rounded overflow-hidden">
                                            <img src="{{ Storage::url($file->url) }}" />
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="opening_hour_widgets p30 mt30">
                                <div class="wrapper">
                                    <ul class="list-group">
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Patente</div>
                                            </div>
                                            <span class="schedule">{{ $auto->patente }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Condición</div>
                                            </div>
                                            <span class="schedule">{{ $auto->condicion }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Marca</div>
                                            </div>
                                            <span class="schedule">{{ $auto->marca->nombre }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Modelo</div>
                                            </div>
                                            <span class="schedule">{{ $auto->modelo->nombre }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Versión</div>
                                            </div>
                                            <span class="schedule">{{ $auto->version }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Año</div>
                                            </div>
                                            <span class="schedule">{{ $auto->año }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Precio Compra</div>
                                            </div>
                                            <span
                                                class="schedule">${{ number_format($auto->preciocosto, 2, ',', '.') }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Precio Venta</div>
                                            </div>
                                            <span
                                                class="schedule">${{ number_format($auto->precio, 2, ',', '.') }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Ciudad</div>
                                            </div>
                                            <span class="schedule">{{ $auto->ciudad }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Provincia</div>
                                            </div>
                                            <span class="schedule">{{ $auto->provincia }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Tipo</div>
                                            </div>
                                            <span class="schedule">{{ $auto->tipo }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Kilometraje</div>
                                            </div>
                                            <span class="schedule">{{ $auto->kilometraje }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Combustible</div>
                                            </div>
                                            <span class="schedule">{{ $auto->combustible }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Tipo de motor</div>
                                            </div>
                                            <span class="schedule">{{ $auto->tipomotor }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Tracción</div>
                                            </div>
                                            <span class="schedule">{{ $auto->traccion }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Caja</div>
                                            </div>
                                            <span class="schedule">{{ $auto->cajaauto }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Color</div>
                                            </div>
                                            <span class="schedule">{{ $auto->color }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Tapizado</div>
                                            </div>
                                            <span class="schedule">{{ $auto->tapizado }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Dirección</div>
                                            </div>
                                            <span class="schedule">{{ $auto->direccion }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
                                            <div class="me-auto">
                                                <div class="day">Valor</div>
                                            </div>
                                            <span class="schedule">{{ $auto->valor }}</span>
                                        </li>
                                        <li class="list-group-item d-flex justify-content-between align-items-start">
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
                                <p class="first-para">{!! $auto->descripcion !!}</p>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-xl-4">

                    <div class="sidebar_seller_contact">

                        <h4 class="mb30">Contacto</h4>
                        <form id="formulario-whatsapp">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        <input class="form-control form_control" type="text" placeholder="Nombre"
                                            id="nombre">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        <input class="form-control form_control" type="text" placeholder="Teléfono"
                                            id="telefono">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="mb-3">
                                        <input class="form-control form_control" type="email" placeholder="Email"
                                            id="email">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <textarea class="form-control" rows="6" id="mensaje">Hola, estoy interesado... </textarea>
                                    </div>

                                    <button type="submit" class="btn btn-block btn-whatsapp mb0" id="btn-whatsapp"><span
                                            class="flaticon-whatsapp mr10 text-white"></span>Enviar por
                                        WhatsApp</button>
                                </div>
                                <div class="respuesta mt-4" id="respuesta">

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
        </div>
    </section>

@stop

@section('js')
    <script>
        $(window).load(function() {
            $('.flexslider').flexslider({
                animation: "slide"
            });
        });
    </script>
    <script>

        var formularioWhatsapp = document.getElementById('formulario-whatsapp');
        var respuesta = document.getElementById('respuesta');


        formularioWhatsapp.addEventListener('submit', function(e) {

            e.preventDefault();

            var nombre = document.getElementById('nombre');
            var telefono = document.getElementById('telefono');
            var email = document.getElementById('email');
            var mensaje = document.getElementById('mensaje');

            if (nombre.value == '' || telefono.value == '' || email.value == '' || mensaje.value == '') {
                respuesta.innerHTML = `
                                    <div class="alert alert-danger p-3 wow fadeIn" role="alert">
                                    Debe llenar todos los campos requeridos.
                                    </div>
                                    `;
                setTimeout(function() {
                    respuesta.innerHTML = "";
                }, 10000);

            } else {

                url =
                    `https://api.whatsapp.com/send?phone=+541141774133&text=Nombre:${nombre.value}%0ATeléfono:${telefono.value}%0AEmail:${email.value}%0A%0AMensaje:${mensaje.value}`;

                nombre.value = '';
                telefono.value = '';
                email.value = '';
                mensaje.value = 'Hola, estoy interesado... ';

                window.open(url);

            }
        })
    </script>
@stop
