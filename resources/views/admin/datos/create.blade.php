@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')

@stop

@section('content')
    <div class="container pt-5">
        <div class="card">
            <div class="card-header">
              <h3 class="card-title">Datos generales de la empresa</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{route('datos.store')}}" novalidate>
              @csrf
              <div class="card-body">
                {{-- Nombre --}}
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" autofocus
                    name="nombre"
                    class="form-control @error('nombre') is-invalid @enderror" id="nombre" placeholder="Ingrese un nombre"
                        value="{{old('nombre')}}">
                    @error('nombre')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                {{-- Telefono fijo --}}
                <div class="form-group">
                    <label for="telefonofijo">Teléfono fijo</label>
                    <input type="text" autofocus
                    name="telefonofijo"
                    class="form-control @error('telefonofijo') is-invalid @enderror" id="telefonofijo" placeholder="Ingrese su teléfono fijo"
                        value="{{old('telefonofijo')}}">
                    @error('telefonofijo')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                {{-- Telefono fijo --}}
                <div class="form-group">
                    <label for="telefonowhatsapp">Whatsapp</label>
                    <input type="text" autofocus
                    name="telefonowhatsapp"
                    class="form-control @error('telefonowhatsapp') is-invalid @enderror" id="telefonowhatsapp" placeholder="Ingrese su teléfono whatsapp"
                        value="{{old('telefonowhatsapp')}}">
                    @error('telefonowhatsapp')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                {{-- Direccion --}}
                <div class="form-group">
                    <label for="direccion">Dirección</label>
                    <input type="text" autofocus
                    name="direccion"
                    class="form-control @error('direccion') is-invalid @enderror" id="direccion" placeholder="Ingrese un dirección"
                        value="{{old('direccion')}}">
                    @error('direccion')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                {{-- Email --}}
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" autofocus
                    name="email"
                    class="form-control @error('email') is-invalid @enderror" id="email" placeholder="Ingrese un email"
                        value="{{old('email')}}">
                    @error('email')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>


              </div>
              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1 " ></i>Guardar</button>
                <a href="{{ route('datos.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
              </div>
            </form>
          </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@stop
