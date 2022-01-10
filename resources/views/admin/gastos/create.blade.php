@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">GASTOS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Crear gasto</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{ route('gastos.store') }}" novalidate>
                @csrf
                <div class="card-body row">
                    <div class="form-group col-3">
                        <label for="titulo">Nombre</label>
                        <input type="text" autofocus name="nombre" class="form-control @error('nombre') is-invalid @enderror"
                            id="nombre" placeholder="Ingrese un nombre" value="{{ old('nombre') }}">
                        @error('nombre')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    {{-- Monto --}}
                    <div class="form-group mx-2  col-3">
                        <label for="monto">Monto</label>
                        <input type="number" min="0" name="monto" class="form-control @error('monto') is-invalid @enderror"
                            value="">
                        @error('monto')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    {{-- Caja --}}
                    <div class="form-group col-3">
                        <label for="caja_id">Caja</label>





                        <select name="caja_id" id="" class="form-control @error('caja_id') is-invalid @enderror">
                            <option value="">Seleccione</option>
                            @foreach ($cajas as $caja)
                                <option value="{{ $caja->id }}"> {{ $caja->nombre }} </option>
                            @endforeach
                        </select>
                        @if (count($cajas) == 0)
                            <p class="bg-danger p-1 rounded mt-3">Debe abrir una caja</p>
                        @endif

                        @error('caja_id')
                            <span class="invalid-feedback d-block" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror

                    </div>

                </div>



                <div class="card-footer">
                    <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1"></i>Crear</button>
                    <a href="{{ route('gastos.index') }}" class="ml-1 btn btn-secondary"> <i
                            class="fas fa-undo-alt mr-1"></i>Volver</a>
                </div>
            </form>
        </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@stop
