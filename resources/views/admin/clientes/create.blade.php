@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">CLIENTES</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
              <h3 class="card-title">Crear cliente</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{route('clientes.store')}}" novalidate>
              @csrf
              <div class="card-body">
                {{-- Nombre --}}
                <div class="form-group">
                    <label for="nombre">Nombre*</label>
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
                {{-- Celular --}}
                <div class="form-group">
                    <label for="celular">Celular* (escribir sin guiones, paréntesis, ni ningún carácter especial.</label>
                    <input type="text" autofocus
                    name="celular"
                    class="form-control @error('celular') is-invalid @enderror" id="celular" placeholder="Ej: 1141774343"
                        value="{{old('celular')}}">
                    @error('celular')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                {{-- Email --}}
                <div class="form-group">
                    <label for="email">Email*</label>
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
                {{-- Ciudad --}}
                <div class="form-group">
                    <label for="ciudad">Ciudad*</label>
                    <input type="text" autofocus
                    name="ciudad"
                    class="form-control @error('ciudad') is-invalid @enderror" id="ciudad" placeholder="Ingrese un ciudad"
                        value="{{old('ciudad')}}">
                    @error('ciudad')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                {{-- Provincia --}}
                <div class="form-group">
                    <label for="provincia">Provincia*</label>
                    <input type="text" autofocus
                    name="provincia"
                    class="form-control @error('provincia') is-invalid @enderror" id="provincia" placeholder="Ingrese un provincia"
                        value="{{old('provincia')}}">
                    @error('provincia')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>

                {{-- Nota --}}
                <div class="form-group">
                    <label for="nota">Nota*</label>
                    <textarea rows="5" autofocus
                    name="nota"
                    class="form-control @error('nota') is-invalid @enderror" id="nota" placeholder="Ingrese un nota"
                        value="{{old('nota')}}"></textarea>
                    @error('nota')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>


                {{-- Estado --}}
                <div class="form-group">
                    <label for="estado">Estado*</label>

                    <select name="estado" id="" class="form-control @error('estado') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        <option value="compra">compra</option>
                        <option value="venta">venta</option>
                        <option value="compra-venta">compra-venta</option>
                    </select>

                    @error('estado')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror

                </div>

                {{-- Origen cliente --}}
                <div class="form-group">
                    <label for="estado">Metodo de captación*</label>

                    <select name="origencliente" id="" class="form-control @error('origencliente') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        <option value="facebook">Facebook</option>
                        <option value="instagram">Instagram</option>
                        <option value="google">Google</option>
                        <option value="directo">Directo</option>
                    </select>

                    @error('origencliente')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror

                </div>


              </div>
              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1 " ></i>Crear</button>
                <a href="{{ route('clientes.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
              </div>
            </form>
          </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@stop