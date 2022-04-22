@extends('layouts.dashboard')

@section('contenido')

    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Listado de Ventas</h2>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="dashboard_favorites_contents dashboard_my_lising_tabs p10-520">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Nav tabs -->
                        <div class="nav nav-tabs justify-content-start" role="tablist">
                            <a href="{{ route('ventas.create') }}"> <button class="nav-link active" id="nav-home-tab"
                                    data-bs-toggle="tab" data-bs-target="#nav-home" role="tab" aria-controls="nav-home"
                                    aria-selected="true">Crear</button></a>
                        </div>
                    </div>
                    <!-- Tab panes -->
                    <div class="col-lg-12 mt50">
                        <div class="tab-content row" id="nav-tabContent">


                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                                aria-labelledby="nav-home-tab">
                                <div class="col-lg-12">
                                    <div class="table-responsive my_lisging_table">

                                        <table class="table">
                                            <thead class="table-light">
                                                <tr class="thead_row">
                                                    <th class="thead_title" scope="col">Fecha</th>
                                                    <th class="thead_title" scope="col">Cliente</th>
                                                    <th class="thead_title" scope="col">Auto</th>
                                                    <th class="thead_title" scope="col">Precio Costo</th>
                                                    <th class="thead_title" scope="col">Precio Venta</th>
                                                    <th class="thead_title" scope="col">Ganancia</th>
                                                    <th class="thead_title" scope="col">Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($ventas as $venta)
                                                    <tr>
                                                        <td class="align-middle">{{ date('d-m-Y', strtotime($venta->created_at)) }}</td>
                                                        <td class="align-middle">{{ $venta->cliente->nombre }}</td>
                                                        <td class="align-middle">{{ $venta->auto->marca }} - {{ $venta->auto->modelo }} -
                                                            {{ $venta->auto->version }}
                                                        </td>
                                                        <td class="align-middle">${{ number_format($venta->precio_costo, 2, ',', '.') }}</td>

                                                        <td class="align-middle">${{ number_format($venta->precio_venta, 2, ',', '.') }}</td>
                                                        <td class="align-middle">${{ number_format($venta->precio_ganancia, 2, ',', '.') }}
                                                        </td>

                                                        <td class="editing_list align-middle">
                                                            <div class="row mx-auto">
                                                                <ul>
                                                                    <li class="list-inline-item mb-1">
                                                                        <a href="{{ route('ventas.show', $venta) }}"
                                                                            data-bs-toggle="tooltip" data-bs-placement="top"
                                                                            title="Ver"><span
                                                                                class="flaticon-view"></span></a>
                                                                    </li>
                                                                    <li class="list-inline-item mb-1">
                                                                        <a href="{{ route('ventas.edit', $venta) }}"
                                                                            data-bs-toggle="tooltip" data-bs-placement="top"
                                                                            title="Editar"><i
                                                                                class="fal fa-edit"></i></a>
                                                                    </li>

                                                                    <li class="list-inline-item mb-1">
                                                                        <form
                                                                            action="{{ route('ventas.destroy', $venta) }}"
                                                                            method="POST" class="formulario-eliminar">
                                                                            @csrf
                                                                            @method('DELETE')


                                                                            <button class="sinBordes p-0"><a
                                                                                    data-bs-toggle="tooltip"
                                                                                    data-bs-placement="top"
                                                                                    title="Borrar"><span
                                                                                        class="flaticon-trash"></span></a></button>
                                                                        </form>

                                                                    </li>

                                                                </ul>

                                                            </div>
                                                        </td>
                                                    </tr>
                                                @endforeach


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="mbp_pagination mt10">
                                        <ul class="page_navigation">
                                            {{ $ventas->links() }}
                                        </ul>
                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- <!-- /.card-header -->
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Fecha</th>
                        <th>Cliente</th>
                        <th>Auto</th>
                        <th>Precio Costo</th>
                        <th>Precio Venta</th>
                        <th>Ganancia</th>
                        <th class="col-2">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($ventas as $venta)
                        <tr>
                            <td>{{ date('d-m-Y', strtotime($venta->created_at)) }}</td>
                            <td>{{ $venta->cliente->nombre }}</td>
                            <td>{{ $venta->auto->marca }} - {{ $venta->auto->modelo }} -
                                {{ $venta->auto->version }}
                            </td>
                            <td>${{ number_format($venta->precio_costo, 2, ',', '.') }}</td>

                            <td>${{ number_format($venta->precio_venta, 2, ',', '.') }}</td>
                            <td>${{ number_format($venta->precio_ganancia, 2, ',', '.') }}</td>
                            <td>
                                <div class="row mx-auto">
                                    <a href="{{ route('ventas.edit', $venta) }}" class="btn btn-primary mr-2"><i
                                            class="fas fa-edit"></i></a>

                                    <form action="{{ route('ventas.destroy', $venta) }}" method="POST"
                                        class="formulario-eliminar">
                                        @csrf
                                        @method('DELETE')

                                        <button type="submit" class="btn btn-danger">
                                            <i class="fas fa-trash-alt"></i>
                                        </button>
                                    </form>
                                </div>
                            </td>
                    @endforeach

                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- /.card-body -->
    <div class="card-footer clearfix">
        {{ $ventas->links() }}
    </div> --}}

@stop

@section('css')
    @livewireStyles
@stop

@section('js')
    @livewireScripts

    @include('includes.formulario')

@stop
