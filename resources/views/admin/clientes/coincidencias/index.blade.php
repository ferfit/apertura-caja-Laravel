@extends('layouts.dashboard')

@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Listado de Coincidencias</h2>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="dashboard_favorites_contents dashboard_my_lising_tabs p10-520">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="nav justify-content-start" role="tablist">
                            <a class="botonAzul" href="{{ route('clientes.index') }}"> Volver</a>
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
                                                    <th class="thead_title" scope="col">Cliente</th>
                                                    <th class="thead_title" scope="col">Auto</th>
                                                    <th class="thead_title" scope="col">Marca</th>
                                                    <th class="thead_title" scope="col">Modelo</th>
                                                    <th class="thead_title" scope="col">Patente</th>
                                                    <th class="thead_title" scope="col">Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @if ($coincidencias)
                                                    @foreach ($coincidencias as $coincidencia)
                                                        <tr>
                                                            <td class="align-middle">
                                                                {{ $coincidencia->clientes[0]->nombre }}</td>
                                                            <td class="align-middle">
                                                                {{ $coincidencia->autos[0]->titulo }}</td>
                                                            <td class="align-middle">
                                                                {{ $coincidencia->autos[0]->marca->nombre }}</td>
                                                            <td class="align-middle">
                                                                {{ $coincidencia->autos[0]->modelo->nombre }}</td>
                                                            <td class="align-middle">
                                                                {{ $coincidencia->autos[0]->patente ? $coincidencia->autos[0]->patente : 'Sin dato' }}
                                                            </td>
                                                            <td class="editing_list align-middle">
                                                                <div class="row mx-auto">
                                                                    <ul>
                                                                        <li class="list-inline-item mb-1">
                                                                            <a href="{{ route('autos.show', $coincidencia->autos[0]->id) }}"
                                                                                data-bs-toggle="tooltip"
                                                                                data-bs-placement="top" title="Ver"><span
                                                                                    class="flaticon-view"></span></a>
                                                                        </li>
                                                                        <li class="list-inline-item mb-1">
                                                                            <a href="https://api.whatsapp.com/send?phone=549{{ $coincidencia->clientes[0]->celular }}&text=Hemos detectado una coicidencia con tu requisitos, podes ver la info ingresando al siguiente link: https://peresonautomotores.com/lista-de-autos/auto/{{ $coincidencia->autos[0]->id }}"
                                                                                target="_blank" data-bs-toggle="tooltip"
                                                                                data-bs-placement="top"
                                                                                title="Enviar info al cliente"><i
                                                                                    class="fab fa-whatsapp"></i></i></a>
                                                                        </li>

                                                                        <li class="list-inline-item mb-1">
                                                                            <form
                                                                                action="{{ route('coincidencias.destroy', $coincidencia->id) }}"
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
                                                @endif


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="mbp_pagination mt10">
                                        {{-- <ul class="page_navigation">
                                            {{ $clien->links() }}
                                        </ul> --}}
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
    @livewireStyles
@stop

@section('js')
    @livewireScripts

    @include('includes.formulario')





@stop
