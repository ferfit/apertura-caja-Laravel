@extends('layouts.dashboard')

@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Información del cliente:</h2>
                    <p>{{ $cliente->nombre }}</p>
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
                                <div class="day">Nombre</div>
                            </div>
                            <span class="schedule">{{ $cliente->nombre }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Celular</div>
                            </div>
                            <span class="schedule">{{ $cliente->celular}}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Email</div>
                            </div>
                            <span class="schedule">{{ $cliente->email }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Ciudad</div>
                            </div>
                            <span class="schedule">{{ $cliente->ciudad }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Provincia</div>
                            </div>
                            <span class="schedule">{{ $cliente->provincia}}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Nota</div>
                            </div>
                            <span class="schedule">{{ $cliente->nota }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Estado</div>
                            </div>
                            <span class="schedule">{{ $cliente->estado }}</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-start">
                            <div class="me-auto">
                                <div class="day">Metodo de captación</div>
                            </div>
                            <span class="schedule">{{ $cliente->origencliente }}</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-12 my-3">
            <!-- Nav tabs -->
            <div class="nav justify-content-start" role="tablist">
                <a class="botonAzul" href="{{ route('clientes.index') }}"> Volver</a>
            </div>
        </div>
    </div>

@stop

@section('content')


@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')


@stop
