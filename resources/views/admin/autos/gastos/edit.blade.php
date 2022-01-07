@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center"></h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Actualizar gasto</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{route('gastos.update',[$gasto,$auto])}}" novalidate>
                @csrf
                @method('PUT')
                <div class="card-body row">
                    <div class="form-group col-6">
                        <label for="nombre">Nombre</label>
                        <input type="text" autofocus name="nombre" class="form-control @error('nombre') is-invalid @enderror"
                            id="nombre" placeholder="Ingrese un nombre" value="{{ $gasto->nombre }}">
                        @error('nombre')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    {{-- Monto --}}
                    <div class="form-group col-6">
                        <label for="monto">Monto</label>
                        <input type="number" name="monto" class="form-control @error('monto') is-invalid @enderror"
                            id="monto" value="{{ $gasto->monto }}">
                        @error('monto')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                </div>

                <!-- /.card-body -->

                <div class="card-footer">
                    <button type="submit" class="btn btn-success"><i
                            class="far fa-check-square mr-1"></i>Actualizar</button>
                    <a href="{{route('gastos.index',$auto)}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
                </div>
            </form>
        </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@stop
