@extends('layouts.dashboard')



@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Gastos del auto:</h2>
                    <p>{{ $auto->marca->nombre }} - {{ $auto->modelo->nombre }} - Patente: {{ $auto->patente }}</p>

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
                            <a href="{{ route('gastos.create', $auto) }}"> <button class="nav-link active" id="nav-home-tab"
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
                                        @if (count($gastos))
                                            <table class="table">
                                                <thead class="table-light">
                                                    <tr class="thead_row">

                                                        <th class="thead_title" scope="col">Nombre</th>
                                                        <th class="thead_title" scope="col">Monto</th>
                                                        <th class="thead_title" scope="col">Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    @foreach ($gastos as $gasto)
                                                        <tr>
                                                            <td class="align-middle">{{ $gasto->nombre }}</td>
                                                            <td class="align-middle">${{ $gasto->monto }}</td>
                                                            <td class="editing_list align-middle">
                                                                <ul>

                                                                    <li class="list-inline-item mb-1">
                                                                        <a href="{{ route('gastos.edit', [$gasto, $auto]) }}"
                                                                            data-bs-toggle="tooltip" data-bs-placement="top"
                                                                            title="Editar"><i
                                                                                class="fal fa-edit"></i></a>
                                                                    </li>

                                                                    <li class="list-inline-item mb-1">
                                                                        <form
                                                                            action="{{ route('gastos.destroy', [$gasto, $auto]) }}"
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
                                                            </td>
                                                        </tr>
                                                    @endforeach


                                                </tbody>
                                            </table>
                                        @else
                                            <p>No presenta gastos al día de la fecha.</p>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-lg-12 my-3">
                                    <!-- Nav tabs -->
                                    <p class="mb-5"><strong>Total: </strong> $ {{ $total }}</p>

                                    <div class="nav justify-content-start" role="tablist">
                                        <a class="botonAzul" href="{{ route('autos.index') }}"> Volver</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



@stop

@section('css')
@stop

@section('js')
    @livewireScripts

    @include('includes.formulario')

@stop
