@extends('layouts.dashboard')

@section('contenido')

    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Información del auto</h2>
                    <p>{{ $auto->marca->nombre }} - {{ $auto->modelo->nombre }}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6">
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
                            <span class="schedule">${{ number_format($auto->preciocosto, 2, ',', '.') }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Precio Venta</div>
                            </div>
                            <span class="schedule">${{ number_format($auto->precio, 2, ',', '.') }}</span>
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
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Descripción</div>
                            </div>
                            <span class="schedule">{{ $auto->descripcion }}</span>

                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="listing_single_description mt30">
                <h4 class="mb30">Descripción</h4>
                <p class="first-para">{{ $auto->descripcion }}</p>

            </div>
        </div>
        <div class="col-lg-12 my-3">
            <!-- Nav tabs -->
            <div class="nav justify-content-start" role="tablist">
                <a class="botonAzul" href="{{ route('autos.index') }}"> Volver</a>
                <a class="botonAzul colorGris" href="{{ route('autoPdf', $auto) }}"> PDF</a>
            </div>
        </div>
    </div>

@stop

@section('content')


@stop

@section('css')

@stop

@section('js')


@stop
