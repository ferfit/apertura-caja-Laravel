@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">PANEL DE CONTROL GENERAL</h1>

@stop

@section('content')
    <h5 class="mb-2 mt-3">Estadística mensual</h5>
    <div class="row">
        <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box shadow" style="border-right: 2px solid #007bff">
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
            <div class="info-box shadow" style="border-right: 2px solid #007bff">
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
            <div class="info-box shadow" style="border-right: 2px solid #007bff">
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
            <div class="small-box shadow bg-white" style="border-right: 2px solid #007bff">
                <div class="inner">
                    <h3>{{ count($clientes) }}</h3>

                    <p><strong>Clientes</strong></p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
                </div>
                <a href="{{ route('clientes.index') }}" class="small-box-footer bg-primary" style="color:white !important;">Más info <i
                        class="fas fa-arrow-circle-right text-white"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box shadow bg-white text-white" style="border-right: 2px solid #007bff">
                <div class="inner">
                    <h3>{{ count($autos) }}</h3>

                    <p><strong>Autos</strong></p>
                </div>
                <div class="icon">
                    <i class="ion ion-stats-bars"></i>
                </div>
                <a href="{{ route('autos.index') }}" class="small-box-footer bg-primary" style="color:white !important;">Más info <i
                        class="fas fa-arrow-circle-right text-white"></i></a>
            </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box shadow bg-white text-white " style="border-right: 2px solid #007bff">
                <div class="inner">
                    <h3>{{ count($usuarios) }}</h3>

                    <p><strong>Usuarios</strong></p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                </div>
                <a href="{{ route('users.index') }}" class="small-box-footer bg-primary" style="color:white !important;">Más info <i
                        class="fas fa-arrow-circle-right text-white"></i></a>
            </div>
        </div>
    </div>

    <div class="row mt-5">

        <!-- /.col -->
        <div class="col-md-6">
            <div class="card card-primary shadow bg-white">
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

    <div class="row my-5">

        <div class="col-4">
            <div class="card card-primary card-outline shadow">
                <div class="card-header">
                    <h3 class="card-title">
                        <i class="far fa-chart-bar"></i>
                        Compras
                    </h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                            <i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body">

                    <div id="compras" style="height: 300px; padding: 0px; position: relative;">

                    </div>
                </div>

            </div>
        </div>

        <div class="col-4">
            <div class="card card-primary card-outline shadow">
                <div class="card-header">
                    <h3 class="card-title">
                        <i class="far fa-chart-bar"></i>
                        Ventas
                    </h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                            <i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body">

                    <div id="placeholder" style="height: 300px; padding: 0px; position: relative;">

                    </div>
                </div>

            </div>
        </div>

        <div class="col-4">
            <div class="card card-primary card-outline shadow">
                <div class="card-header">
                    <h3 class="card-title">
                        <i class="far fa-chart-bar"></i>
                        Ganancia
                    </h3>
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse">
                            <i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>
                <div class="card-body">

                    <div id="ganancia" style="height: 300px; padding: 0px; position: relative;">

                    </div>
                </div>

            </div>

        </div>
    </div>








@stop

@section('css')
@stop

@section('js')

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flot/4.2.2/jquery.canvaswrapper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flot/4.2.2/jquery.colorhelpers.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flot/4.2.2/jquery.flot.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flot/4.2.2/jquery.flot.saturated.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flot/4.2.2/jquery.flot.browser.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flot/4.2.2/jquery.flot.drawSeries.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flot/4.2.2/jquery.flot.uiConstants.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flot/4.2.2/jquery.flot.categories.min.js"></script>

    <script type="text/javascript">
        $(function() {

            var data = [
                ["Ene", {{ $v1 }}],
                ["Feb", {{ $v2 }}],
                ["Mar", {{ $v3 }}],
                ["Abr", {{ $v4 }}],
                ["May", {{ $v5 }}],
                ["Jun", {{ $v6 }}],
                ["Jul", {{ $v7 }}],
                ["Ago", {{ $v8 }}],
                ["Sep", {{ $v9 }}],
                ["Oct", {{ $v10 }}],
                ["Nov", {{ $v11 }}],
                ["Dic", {{ $v12 }}]
            ];

            $.plot("#placeholder", [data], {
                series: {
                    bars: {
                        show: true,
                        barWidth: 0.6,
                        align: "center"
                    }
                },
                xaxis: {
                    mode: "categories",
                    showTicks: false,
                    gridLines: false
                }
            });


        });
    </script>

    <script type="text/javascript">
        $(function() {

            var data = [
                ["Ene", {{ $c1 }}],
                ["Feb", {{ $c2 }}],
                ["Mar", {{ $c3 }}],
                ["Abr", {{ $c4 }}],
                ["May", {{ $c5 }}],
                ["Jun", {{ $c6 }}],
                ["Jul", {{ $c7 }}],
                ["Ago", {{ $c8 }}],
                ["Sep", {{ $c9 }}],
                ["Oct", {{ $c10 }}],
                ["Nov", {{ $c11 }}],
                ["Dic", {{ $c12 }}]
            ];

            $.plot("#compras", [data], {
                series: {
                    bars: {
                        show: true,
                        barWidth: 0.6,
                        align: "center"
                    }
                },
                xaxis: {
                    mode: "categories",
                    showTicks: false,
                    gridLines: false
                }
            });


        });
    </script>

    <script type="text/javascript">
        $(function() {

            var data = [
                ["Ene", {{ $g1 }}],
                ["Feb", {{ $g2 }}],
                ["Mar", {{ $g3 }}],
                ["Abr", {{ $g4 }}],
                ["May", {{ $g5 }}],
                ["Jun", {{ $g6 }}],
                ["Jul", {{ $g7 }}],
                ["Ago", {{ $g8 }}],
                ["Sep", {{ $g9 }}],
                ["Oct", {{ $g10 }}],
                ["Nov", {{ $g11 }}],
                ["Dic", {{ $g12 }}]
            ];

            $.plot("#ganancia", [data], {
                series: {
                    bars: {
                        show: true,
                        barWidth: 0.6,
                        align: "center"
                    }
                },
                xaxis: {
                    mode: "categories",
                    showTicks: false,
                    gridLines: false
                }
            });


        });
    </script>
@stop
