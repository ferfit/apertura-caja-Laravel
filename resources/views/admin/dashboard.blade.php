@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">PANEL DE CONTROL GENERAL </h1>
@stop

@section('content')
<div class="row">
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-info">
        <div class="inner">
          <h3>{{count($empleadas)}}</h3>

          <p>Empleadas</p>
        </div>
        <div class="icon">
          <i class="ion ion-bag"></i>
        </div>
        <a href="{{route('empleados.index')}}" class="small-box-footer">Más info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-success">
        <div class="inner">
          <h3>{{count($servicios)}}</h3>

          <p>Servicios</p>
        </div>
        <div class="icon">
          <i class="ion ion-stats-bars"></i>
        </div>
        <a href="{{route('servicios.index')}}" class="small-box-footer">Más info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-warning">
        <div class="inner">
          <h3>{{count($ventas)}} - ${{$totalVentas}}</h3>

          <p>Ventas diarias</p>

        </div>
        <div class="icon">
          <i class="ion ion-person-add"></i>
        </div>
        <a href="{{route('ventas.index')}}" class="small-box-footer">Más info <i class="fas fa-arrow-circle-right"></i></a>
      </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-3 col-6">
      <!-- small box -->
      <div class="small-box bg-danger">
        <div class="inner">
          <h3>{{count($ventasMensual)}} - ${{$totalVentasMensual}}</h3>

          <p>Ventas Mensual</p>
        </div>
        <div class="icon">
          <i class="ion ion-pie-graph"></i>
        </div>
        <a href="{{route('reporte')}}" class="small-box-footer">Reportes <i class="fas fa-arrow-circle-right"></i></a>

      </div>
    </div>
    <!-- ./col -->
  </div>
@stop

@section('css')
@stop

@section('js')
@stop