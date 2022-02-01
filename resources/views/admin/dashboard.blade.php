@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">PANEL DE CONTROL GENERAL</h1>

@stop

@section('content')
    <h5 class="mb-2 mt-3">Estadística mensual</h5>
    <div class="row">
        <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box" style="border-right: 2px solid #007bff">
                <span class="info-box-icon p-2 "><img src="{{ asset('/imagenes/Compras.png') }}" alt=""></span>

                <div class="info-box-content text-center">
                    <span class="info-box-text"><strong>COMPRAS</strong></span>
                    <span class="info-box-number" style="font-size: 30px;color:#007bff;">{{ $totalCostoMensual }}</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box" style="border-right: 2px solid #007bff">
                <span class="info-box-icon p-2"><img src="{{ asset('/imagenes/Ventas.png') }}" alt=""></span>

                <div class="info-box-content text-center">
                    <span class="info-box-text"><strong>Ventas</strong></span>
                    <span class="info-box-number" style="font-size: 30px;color:#007bff;">{{ $totalVentasMensual }}</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box" style="border-right: 2px solid #007bff">
                <span class="info-box-icon p-2"><img src="{{ asset('/imagenes/Ganancias.png') }}" alt=""></span>

                <div class="info-box-content text-center">
                    <span class="info-box-text"><strong>Ganancia</strong></span>
                    <span class="info-box-number"
                        style="font-size: 30px;color:#007bff;">{{ $totalGananciaMensual }}</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->

        <!-- /.col -->
    </div>
    <h5 class="mb-2 mt-5">Módulos Generales</h5>
    <div class="row ">
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box" style="border-right: 2px solid #007bff">
                <div class="inner">
                    <h3>{{ count($clientes) }}</h3>

                    <p><strong>Clientes</strong></p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="{{ route('clientes.index') }}" class="small-box-footer bg-primary">Más info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box" style="border-right: 2px solid #007bff">
                <div class="inner">
                    <h3>{{ count($autos) }}</h3>

                    <p><strong>Autos</strong></p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="{{ route('autos.index') }}" class="small-box-footer bg-primary">Más info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box " style="border-right: 2px solid #007bff">
                <div class="inner">
                    <h3>{{ count($usuarios) }}</h3>

                    <p><strong>Usuarios</strong></p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                <a href="{{ route('users.index') }}" class="small-box-footer bg-primary">Más info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>

    <div class="row mt-5">

        <!-- /.col -->
        <div class="col-md-6">
            <div class="card card-primary">
                <div class="card-header">
                    <h3 class="card-title">Stock parado</h3>

                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse"><i
                                class="fas fa-minus"></i>
                        </button>
                    </div>
                    <!-- /.card-tools -->
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    @if (count($autosParados) > 0)
                        <ul>
                            @foreach ($autosParados as $autoParado)
                                <li>Nro: {{ $autoParado->id }} - Marca: {{ $autoParado->marca }} - Modelo:
                                    {{ $autoParado->modelo }}</li>
                            @endforeach
                        </ul>

                    @else

                        <p>No hay registros de stock parado...</p>

                    @endif


                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>

    </div>




@stop

@section('css')
@stop

@section('js')
@stop
