@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">VENTAS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
              <h3 class="card-title">Editar venta</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" action="{{route('ventas.update',$venta)}}" novalidate>
              @csrf
              @method('PUT')
              <div class="card-body">
                {{-- Cliente --}}
                <div class="form-group">
                    <label for="cliente">Cliente</label>
                    <input type="text" autofocus
                    name="cliente" 
                    class="form-control @error('cliente') is-invalid @enderror" id="cliente" placeholder="Ingrese un cliente"
                        value="{{ $venta->cliente }}">
                    @error('cliente')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                {{-- Servicio --}}
                <div class="form-group">
                    <label for="servicio_id">Servicio</label>

                    <select name="servicio_id" id="" class="form-control @error('servicio_id') is-invalid @enderror">
                        <option value="{{$venta->servicio_id}}">{{$venta->servicio->nombre}}</option>
                        @foreach ($servicios as $servicio)
                            <option value="{{$servicio->id}}"> 
                                {{ $servicio->nombre}}
                            </option>
                        @endforeach
                    </select>

                    @error('servicio_id')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
                {{-- Medio de pago --}}
                <div class="form-group">
                    <label for="medio_pago">Medio de pago</label>

                    <select name="medio_pago" id="" class="form-control @error('medio_pago') is-invalid @enderror">
                        <option value="{{ $venta->medio_pago}}">{{ $venta->medio_pago}}</option>
                        <option value="Efectivo">Efectivo</option>
                        <option value="Debito">Debito</option>
                        <option value="Trans MP">Trans MP</option>
                        <option value="Credito">Credito</option>
                    </select>

                    @error('medio_pago')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>
                {{-- Precio --}}
                <div class="form-group my-5 mx-2">
                    <label for="precio">Precio</label>
                    <input type="number" min="0"
                    name="precio" 
                    class="form-control @error('precio') is-invalid @enderror" id="precio"
                    value="{{ $venta->precio }}">
                    @error('precio')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                </div>
                
                {{-- Empleado --}}
                <div class="form-group">
                    <label for="empleado_id">Empleada</label>
                    
                    <select name="empleado_id" id="" class="form-control @error('empleado_id') is-invalid @enderror">
                        <option value="{{ $venta->empleado_id}}">{{ $venta->empleado->nombre}}</option>
                        @foreach ($empleados as $empleado)
                        <option value="{{$empleado->id}}"> 
                            {{ $empleado->nombre}}
                        </option>
                        @endforeach
                    </select>
                    
                    @error('empleado_id')
                    <span class="invalid-feedback d-block" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                    @enderror
                    
                </div>
                
                {{-- Caja --}}
                <div class="form-group">
                    <label for="caja_id">Caja</label>

                    

                    @if (count($cajas) == 0)
                        <p>hola</p>
                    @endif

                    <select name="caja_id" id="" class="form-control @error('caja_id') is-invalid @enderror">
                        <option value="{{$venta->caja_id}}">{{$venta->caja->nombre}}</option>
                        @foreach ($cajas as $caja)
                            <option value="{{$caja->id}}"> {{ $caja->nombre}} </option>
                        @endforeach
                    </select>

                    @error('caja_id')
                        <span class="invalid-feedback d-block" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                    
                </div>

              </div>
              <!-- /.card-body -->

              <div class="card-footer">
                <button type="submit" class="btn btn-success"><i class="far fa-check-square mr-1"></i>Actualizar</button>
                <a href="{{ route('ventas.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
              </div>
            </form>
          </div>
    </div>
@stop

@section('css')
@stop

@section('js')
@stop