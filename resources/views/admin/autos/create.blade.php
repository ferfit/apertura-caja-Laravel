@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">AUTOS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
              <h3 class="card-title">Crear auto</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{route('autos.store')}}" novalidate>
              @csrf
              <div class="card-body">
                {{-- condicion --}}
                <div class="form-group">
                    <label for="condicion">Condición</label>

                    <select name="condicion" id="" class="form-control @error('condicion') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        @foreach ($condiciones as $condicion)
                        <option value="{{$condicion->nombre}}">{{$condicion->nombre}}</option>
                        @endforeach
                    </select>

                    @error('condicion')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
                {{-- Marca --}}
                <div class="form-group">
                    <label for="marca">Marca</label>

                    <select name="marca" id="" class="form-control @error('marca') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        @foreach ($marcas as $marca)
                        <option value="{{$marca->nombre}}">{{$marca->nombre}}</option>
                        @endforeach
                    </select>

                    @error('marca')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
                {{-- Modelo --}}
                <div class="form-group">
                    <label for="modelo">Modelo</label>

                    <select name="modelo" id="" class="form-control @error('modelo') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        @foreach ($modelos as $modelo)
                        <option value="{{$modelo->nombre}}">{{$modelo->nombre}}</option>
                        @endforeach
                    </select>

                    @error('modelo')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
                {{-- Version --}}
                <div class="form-group">
                    <label for="version">Versión</label>

                    <select name="version" id="" class="form-control @error('version') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        @foreach ($versiones as $version)
                        <option value="{{$version->nombre}}">{{$version->nombre}}</option>
                        @endforeach
                    </select>

                    @error('version')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
                {{-- año --}}
                <div class="form-group">
                    <label for="año">Año</label>

                    <select name="año" id="" class="form-control @error('año') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        @for ($i = 1925; $i < 2023; $i++)
                        <option value="{{$i}}">{{$i}}</option>
                        @endfor                        
                    </select>

                    @error('año')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
                
                
                
                {{-- Precio --}}
                <div class="form-group my-5 mx-2">
                    <label for="precio">Precio</label>
                    <input type="number" 
                    name="precio" 
                    class="form-control @error('precio') is-invalid @enderror" id="precio"
                    value="">
                    @error('precio')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                
                
                {{-- Ciudades --}}
                <div class="form-group">
                    <label for="ciudad">Ciudad</label>

                    <select name="ciudad" id="" class="form-control @error('ciudad') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        @foreach ($ciudades as $ciudad)
                        <option value="{{$ciudad->nombre}}">{{$ciudad->nombre}}</option>
                        @endforeach
                    </select>

                    @error('ciudad')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
                {{-- Provincia --}}
                <div class="form-group">
                    <label for="provincia">Provincia</label>

                    <select name="provincia" id="" class="form-control @error('provincia') is-invalid @enderror">
                        <option value="">Seleccione</option>
                        @foreach ($provincias as $provincia)
                        <option value="{{$provincia->nombre}}">{{$provincia->nombre}}</option>
                        @endforeach
                    </select>

                    @error('provincia')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
        

              </div>
              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1 " ></i>Crear</button>
                <a href="{{ route('autos.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
              </div>
            </form>
          </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@stop