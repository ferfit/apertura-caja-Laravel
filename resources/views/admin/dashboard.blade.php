@extends('layouts.dashboard')

@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="breadcrumb_content mb50">
                <h2 class="breadcrumb_title">Hola, {{ auth()->user()->name }}!</h2>
                <p>Este es un resumén de tu concesionaria.</p>
            </div>
        </div>
    </div>
    <h4 class="breadcrumb_title">Estadística mensual</h4>
    <div class="row">
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one">
                <div class="icon"><span class="flaticon-down-arrow"></span></div>
                <div class="detais text-end">
                    <div class="">
                        <h2 class="breadcrumb_title">${{ $totalCostoMensual }}</h2>

                    </div>
                    <p class="para">Compras</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one style2">
                <div class="icon"><span class="flaticon-up-arrow"></span></div>
                <div class="detais text-end">
                    <div class="">
                        <h2 class="breadcrumb_title">${{ $totalVentasMensual }}</h2>
                        </div>
                    <p class="para">Ventas</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one style3">
                <div class="icon"><span class="flaticon-coin"></span></div>
                <div class="detais text-end">
                    <div class="">
                        <h2 class="breadcrumb_title">${{ $totalGananciaMensual }}</h2>
                    </div>
                    <p class="para">Ganancias</p>
                </div>
            </div>
        </div>
    </div>

    <h4 class="breadcrumb_title">Módulos Generales</h4>
    <div class="row">
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one">
                <div class="icon"><span class="flaticon-high-five"></span></div>
                <div class="detais text-end">
                    <div class="">
                        <h2 class="breadcrumb_title">{{ count($clientes) }}</h2>

                    </div>
                    <p class="para">Clientes</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one style2">
                <div class="icon"><span class="flaticon-sedan-car-model"></span></div>
                <div class="detais text-end">
                    <div class="">
                        <h2 class="breadcrumb_title">{{ count($autos) }}</h2>
                        </div>
                    <p class="para">Autos</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-lg-4">
            <div class="ff_one style3">
                <div class="icon"><span class="flaticon-user-2"></span></div>
                <div class="detais text-end">
                    <div class="">
                        <h2 class="breadcrumb_title">{{ count($usuarios) }}</h2>
                    </div>
                    <p class="para">Usuarios</p>
                </div>
            </div>
        </div>
    </div>

    <div class="accordion" id="accordionExample">
        <div class="card">
          <div class="card-header active" id="headingOne">
            <h2 class="mb-0">
              <button class="btn btn-link text-decoration-none" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"><h4 >Stock parado</h4></button>
            </h2>
          </div>
          <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
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
          </div>
        </div>
      </div>



    <div class="row mt-5">

        <div class="col-12 col-md- 6 col-lg-4">
            <div class="card card-primary card-outline ">
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

        <div class="col-12 col-md- 6 col-lg-4">
            <div class="card card-primary card-outline ">
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

        <div class="col-12 col-md- 6 col-lg-4">
            <div class="card card-primary card-outline ">
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
