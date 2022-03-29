@extends('layouts.dashboard')

@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Crear gasto</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="row">

        <div class="col-lg-12">
            <div class="new_property_form">
                <form class="contact_form" id="formulario" name="contact_form" method="POST"
                    action="{{ route('gastos.store', $auto) }}" novalidate>
                    @csrf
                    <div class="row">

                        {{-- nombre--}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Nombre*</label>
                                <input name="nombre"
                                    class="form-control form_control @error('nombre') is-invalid @enderror" type="text"
                                    placeholder="">

                                @error('nombre')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Monto --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label class="form-label">Monto*</label>
                                <input name="monto"
                                    class="form-control form_control @error('monto') is-invalid @enderror"
                                    type="number" placeholder="">

                                @error('monto')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-12 my-3">
                        <!-- Nav tabs -->
                        <div class="nav justify-content-start" role="tablist">
                            <button type="submit" id="btnForm" class="botonAmarillo">Crear</button>
                            <a class="botonAzul" href="{{ route('gastos.index', $auto) }}"> Volver</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@include('includes.btnForm')
@stop
