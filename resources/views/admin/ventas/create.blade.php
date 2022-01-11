@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">VENTAS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
              <h3 class="card-title">Crear venta</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{route('ventas.store')}}" novalidate>
              @csrf
              <div class="card-body">


                {{-- Titulo --}}
                <div class="form-group">
                    <label for="titulo">Titulo o descripción</label>
                    <input type="text" autofocus
                    name="titulo"
                    class="form-control @error('titulo') is-invalid @enderror" id="titulo" placeholder="Ingrese un título o descripción"
                        value="{{old('titulo')}}">
                    @error('titulo')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                {{-- Cliente --}}
                <div class="form-group">
                    <label for="cliente_id">Cliente</label>

                    <select name="cliente_id" id="" class="form-control @error('cliente_id') is-invalid @enderror">
                        <option value="">Seleccione un cliente</option>
                        @foreach ($clientes as $cliente)
                            <option value="{{$cliente->id}}">
                                {{ $cliente->nombre}}
                            </option>
                        @endforeach
                    </select>

                    @error('cliente_id')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror

                </div>


                @livewire('precio-auto')



              </div>
              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1 " ></i>Crear</button>
                <a href="{{ route('ventas.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
              </div>
            </form>
          </div>
    </div>
@stop

@section('css')
@livewireStyles
@stop

@section('js')
@livewireScripts
@stop
