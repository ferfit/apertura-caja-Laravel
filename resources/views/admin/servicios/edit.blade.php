@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">SERVICIOS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
              <h3 class="card-title">Editar servicio</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" id="formulario" action="{{route('servicios.update',$servicio)}}" novalidate>
              @csrf
              @method('PUT')
              <div class="card-body">
                <div class="form-group">
                    <label for="titulo">Nombre</label>
                    <input type="text" autofocus
                    name="nombre"
                    class="form-control @error('nombre') is-invalid @enderror" id="nombre" placeholder="Ingrese un nombre"
                        value="{{$servicio->nombre}}">
                    @error('nombre')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                 {{-- Precio --}}
                 <div class="form-group">
                  <label for="precio">Precio</label>
                  <input type="number" min="0" name="precio"
                      class="form-control @error('precio') is-invalid @enderror" id="precio" value="{{$servicio->precio}}">
                  @error('precio')
                      <span class="invalid-feedback d-block" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                  @enderror
              </div>
              </div>
              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" id="btnForm" class="btn btn-success"><i class="far fa-check-square mr-1"></i>Actualizar</button>
                <a href="{{ route('servicios.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
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
