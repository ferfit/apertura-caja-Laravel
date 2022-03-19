@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">CAJAS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear caja</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" id="formulario" action="{{ route('cajas.store') }}" novalidate>
                @csrf
                <div class="card-body">
                    {{-- nombre --}}
                    <div class="form-group">
                        <label for="nombre">nombre</label>
                        <input type="text" autofocus name="nombre" class="form-control @error('nombre') is-invalid @enderror"
                            placeholder="Ingrese un nombre" value="{{ old('nombre') }}">
                        @error('nombre')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    {{-- Efectivo en caja --}}
                    <div class="form-group my-5 mx-2">
                        <label for="efectivo_caja">Efectivo en caja</label>
                        <input type="number" min="0" name="efectivo_caja"
                            class="form-control @error('efectivo_caja') is-invalid @enderror" value="">
                        @error('efectivo_caja')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>


                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" id="btnForm" class="btn btn-success"><i class="far fa-check-square mr-1"></i>Abrir</button>
                    <a href="{{ route('cajas.index') }}" class="ml-1 btn btn-secondary"> <i
                            class="fas fa-undo-alt mr-1"></i>Volver</a>
                </div>
            </form>
        </div>
    </div>
@stop

@section('css')
@stop

@section('js')
    @include('includes.btnForm')
@stop
