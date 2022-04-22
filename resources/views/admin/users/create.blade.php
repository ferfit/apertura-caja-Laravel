@extends('layouts.dashboard')

@section('contenido')

    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Crear Usuario</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="new_property_form">
                <form method="POST" action="{{ route('users.store') }}" novalidate>
                    @csrf
                    <div class="row">
                        {{-- Nombre --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="name" class="form-label">Nombre*</label>
                                <input autofocus name="name"
                                    class="form-control form_control @error('name') is-invalid @enderror" type="text"
                                    placeholder="" value="{{ old('name') }}">

                                @error('name')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- Email --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="email" class="form-label">Email*</label>
                                <input name="email" class="form-control form_control @error('email') is-invalid @enderror"
                                    type="email" placeholder="" value="{{ old('email') }}">

                                @error('email')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        {{-- contraseña --}}

                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="password" class="form-label">Contraseña*</label>
                                <input name="password"
                                    class="form-control form_control @error('password') is-invalid @enderror"
                                    type="password" placeholder="" value="{{ old('password') }}">

                                @error('password')
                                    <span class="invalid-feedback d-block" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <!-- /.card-body -->

                        <div class="col-lg-12 my-3">
                            <!-- Nav tabs -->
                            <div class="nav justify-content-start" role="tablist">
                                <button type="submit" id="btnForm" class="botonAmarillo">Crear</button>
                                <a class="botonAzul" href="{{ route('users.index') }}"> Volver</a>
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
