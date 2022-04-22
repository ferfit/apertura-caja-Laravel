@extends('layouts.dashboard')

@section('contenido')

    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Editar Usuario</h2>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="new_property_form">
                <form method="POST" action="{{ route('updatePassword', $user) }}" novalidate>
                    @csrf
                    @method('put')
                    <div class="row">
                        {{-- Contraseña --}}


                        {{-- Nombre --}}
                        <div class="col-sm-6 col-md-3">
                            <div class="ui_kit_select_search add_new_property mb20">
                                <label for="password" class="form-label">Contraseña*</label>
                                <input autofocus name="password" class="form-control form_control @error('password') is-invalid @enderror"
                                    type="password" placeholder="" >

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
                                <button type="submit" id="btnForm" class="botonAmarillo">Guardar</button>
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
@stop

@section('js')
    @livewireScripts
    @include('includes.btnForm')
@stop
