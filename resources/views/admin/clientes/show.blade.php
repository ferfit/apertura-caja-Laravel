@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
<div class="container my-4">    
</div>


<div class="container mt-2 ">
    <div class="container mx-auto">
        <div class="card shadow">
            <div class="card-header">
              <h3 class="card-title">
                Información del cliente {{$cliente->nombre}}
              </h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <dl>
                <dt>Nombre</dt>
                <dd>{{$cliente->nombre}}</dd>
                <dt>Celular</dt>
                <dd>{{$cliente->celular}}</dd>
                <dt>Email</dt>
                <dd>{{$cliente->email}}</dd>
                <dt>Ciudad</dt>
                <dd>{{$cliente->ciudad}}</dd>
                <dt>Provincia</dt>
                <dd>{{$cliente->provincia}}</dd>
                
                <dt>Nota</dt>
                <dd>{{$cliente->nota}}</dd>
                <dt>Estado</dt>
                @switch( $cliente->estado )
                                @case('compra')
                                    <small class="badge badge-warning text-white"> compra</small>
                                    @break
                                @case('venta')
                                    <small class="badge badge-primary"> venta</small>
                                    @break
                                @case('compra-venta')
                                    <small class="badge badge-success"> compra-venta</small>
                                    @break
                                @default
                                    
                @endswitch
              </dl>
            </div>
            <!-- /.card-body -->
        </div>

        
        <div class="mx-auto">
            <div class="row mx-auto mt-3">
                 <a href="{{ route('clientes.index' )}}" class="btn btn-secondary mr-2 shadow">Volver</a>
            </div>
        </div>
    </div>
    
    
</div>

@stop

@section('content')


@stop

@section('css')
<link rel="stylesheet" href="/css/admin_custom.css">
@stop

@section('js')


@stop
