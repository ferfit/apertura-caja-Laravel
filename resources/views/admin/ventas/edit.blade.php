@extends('layouts.dashboard')

@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Crear Venta</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="new_property_form">
                <form method="POST" action="{{ route('ventas.update', $venta) }}" class="contact_form" novalidate>
                    @csrf
                    @method('PUT')
                    <div class="row">


                        {{-- Titulo --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="titulo" class="form-label">Título o descripción*</label>
                                <input autofocus name="titulo"
                                    class="form-control form_control @error('titulo') is-invalid @enderror" type="text"
                                    placeholder="" value="{{ $venta->titulo }}">

                                @error('titulo')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Cliente --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="cliente_id" class="form-label">Cliente*</label>
                                <select name="cliente_id" class="selectpicker @error('cliente_id') is-invalid @enderror"
                                    data-live-search="true" data-width="100%">
                                    @foreach ($clientes as $cliente)
                                        <option value="{{ $cliente->id }}">
                                            {{ $cliente->nombre }}
                                        </option>
                                    @endforeach
                                </select>

                                @error('cliente_id')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            </div>
                        </div>

                        @livewire('edit-venta',['venta' => $venta])


                        <!-- /.card-body -->

                        <div class="col-lg-12 my-3">
                            <!-- Nav tabs -->
                            <div class="nav justify-content-start" role="tablist">
                                <button type="submit" id="btnForm" class="botonAmarillo">Guardar</button>
                                <a class="botonAzul" href="{{ route('ventas.index') }}"> Volver</a>
                            </div>
                        </div>
                    </div>

                </form>
            </div>

        </div>
    </div>

@stop

@section('css')
    @livewireStyles
@stop

@section('js')
    @livewireScripts
    @include('includes.btnForm')
@stop
