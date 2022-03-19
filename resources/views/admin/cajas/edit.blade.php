@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">CAJAS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
              <h3 class="card-title">Cerrar caja</h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form method="POST" id="formulario" action="{{route('cajas.update',$caja)}}" novalidate>
              @csrf
              @method('PUT')



              <div class="card-footer">
                <button type="submit" id="btnForm" class="btn btn-success"><i class="far fa-check-square mr-1"></i>Cerrar</button>
                <a href="{{ route('cajas.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
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
