@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">MARCAS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
              <h3 class="card-title">Crear marca</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{route('marcas.store')}}" novalidate>
              @csrf
              <div class="card-body">
                <div class="form-group">
                    <label for="titulo">Nombre</label>
                    <input type="text" autofocus
                    name="nombre"
                    class="form-control @error('nombre') is-invalid @enderror" id="nombre" placeholder="Ingrese un nombre de marca"
                        value="{{old('nombre')}}">
                    @error('nombre')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
              </div>
              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1"></i>Crear</button>
                <a href="{{ route('marcas.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
              </div>
            </form>
          </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@stop
