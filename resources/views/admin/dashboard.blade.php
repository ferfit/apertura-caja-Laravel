@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">PANEL DE CONTROL GENERAL</h1>

@stop

@section('content')
    <div class="row ">
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-info">
                <div class="inner">
                    <h3>{{ count($clientes) }}</h3>

                    <p>Clientes</p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="{{ route('clientes.index') }}" class="small-box-footer">Más info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
                <div class="inner">
                    <h3>{{ count($autos) }}</h3>

                    <p>Autos</p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="{{ route('autos.index') }}" class="small-box-footer">Más info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
                <div class="inner">
                    <h3>{{ count($usuarios) }}</h3>

                    <p>Usuarios</p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                <a href="{{ route('users.index') }}" class="small-box-footer">Más info <i
                        class="fas fa-arrow-circle-right"></i></a>
            </div>
        </div>
    </div>

    <div class="row">

        <!-- /.col -->
        <div class="col-md-6">
            <div class="card card-danger">
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
