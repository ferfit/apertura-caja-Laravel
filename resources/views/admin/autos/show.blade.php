@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <div class="container my-4">
    </div>


    <div class="container mt-2 ">
        <div class="container mx-auto">
            <div class="card shadow">
                <div class="card-header">
                    <h3 class="card-title">
                        Información del auto:
                    </h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <dl class="row">
                        <div class="col-6 col-xl-3">
                            <dt>Condición</dt>
                            <dd>{{ $auto->condicion }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Marca</dt>
                            <dd>{{ $auto->marca }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Modelo</dt>
                            <dd>{{ $auto->modelo }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Versión</dt>
                            <dd>{{ $auto->version }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Año</dt>
                            <dd>{{ $auto->año }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Precio Costo</dt>
                            <dd>${{ $auto->preciocosto }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Precio Venta</dt>
                            <dd>${{ $auto->precio }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Ciudad</dt>
                            <dd>{{ $auto->ciudad }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Provincia</dt>
                            <dd>{{ $auto->provincia }}</dd>
                        </div>

                    </dl>
                </div>
                <!-- /.card-body -->
            </div>
            <div class="card shadow">

                <!-- /.card-header -->
                <div class="card-body">
                    <dl class="row">
                        <div class="col-6 col-xl-3">
                            <dt>Tipo</dt>
                            <dd>{{ $auto->tipo }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Kilometraje</dt>
                            <dd>{{ $auto->kilometraje }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Combustible</dt>
                            <dd>{{ $auto->combustible }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Tipo de motor</dt>
                            <dd>{{ $auto->tipomotor }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Tracción</dt>
                            <dd>{{ $auto->traccion }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Caja</dt>
                            <dd>{{ $auto->cajaauto }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Color</dt>
                            <dd>{{ $auto->color }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Tapizado</dt>
                            <dd>{{ $auto->tapizado }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Dirección</dt>
                            <dd>{{ $auto->direccion }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Valor</dt>
                            <dd>{{ $auto->valor }}</dd>
                        </div>
                        <div class="col-6 col-xl-3">
                            <dt>Permuta<dt>
                            <dd>{{ $auto->Permuta }}</dd>
                        </div>

                    </dl>
                </div>
                <!-- /.card-body -->
            </div>


            <div class="mx-auto">
                <div class="row mx-auto mt-3">
                    <a href="{{ route('autos.index') }}" class="btn btn-secondary mr-2 shadow">Volver</a>
                    <a href="{{route('autoPdf', $auto)}}" class="btn btn-primary mr-2 shadow"><i class="fas fa-download mr-1"></i>PDF</a>
                </div>
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
