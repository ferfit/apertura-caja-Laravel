@extends('layouts.dashboard')

@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Listado de Clientes</h2>

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
                        <div class="row">
                            <div class="nav nav-tabs justify-content-start col-12 p-2 p-md-0 " role="tablist">
                                <a href="{{ route('clientes.create') }}"> <button class="nav-link active"
                                        id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" role="tab"
                                        aria-controls="nav-home" aria-selected="true">Crear</button></a>
                                @if ($coincidencias > 0)
                                    <a href="{{ route('coincidencias.index') }}"> <button
                                            class="nav-link active bg-danger" id="nav-home-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-home" role="tab" aria-controls="nav-home"
                                            aria-selected="true">Coincidencias</button></a>
                                @endif
                            </div>

                        </div>
                    </div>
                    <!-- Tab panes -->
                    <div class="col-lg-12 mt50">
                        <div class="tab-content row" id="nav-tabContent">


                            @livewire('clientes-index')



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
