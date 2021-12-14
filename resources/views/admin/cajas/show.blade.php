@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">{{strtoupper($caja->nombre)}}</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header d-flex justify-content-start align-items-center">

            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Cliente</th>
                            <th>Servicio</th>
                            <th>Medio de pago</th>
                            <th>Empleada</th>
                            <th>Precio</th>
                            <th>Porcentaje</th>
                            <th>Comisión E</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($caja->ventas as $venta)
                            <tr>
                                <td>{{ $venta->cliente }}</td>
                                <td>{{ $venta->servicio->nombre }}</td>
                                <td>{{ $venta->medio_pago }}</td>
                                <td>{{ $venta->empleado->nombre }}</td>
                                <td>${{ $venta->precio }}</td>
                                <td>${{ $venta->porcentaje }}%</td>
                                <td>${{ $venta->comision_empleado}}</td>
                        @endforeach

                        </tr>
                    </tbody>
                    
                </table>
                
            </div>
            <div class="card-footer d-flex flex-column justify-content-between">
                <span class="h3">Tarjeta: ${{$caja->tarjeta}}</span>
                <span class="h3">Efectivo: ${{$caja->efectivo_caja}}</span>
                <span class="h2">Total: ${{$caja->total}}</span>
                <div class="mt-3">
                <a href="{{ route('cajas.index')}}" class="ml-1 btn btn-secondary"> <i class="fas fa-undo-alt mr-1"></i>Volver</a></div>
            </div>

            
            
        </div>
    </div>
@stop

@section('css')

@stop

@section('js')
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    @if (session('Creado'))
        <script>
            Swal.fire(
                'Caja abierta!',
                '{{ session('Creado') }}',
                'success'
            )
        </script>
    @endif

    @if (session('Actualizado'))
        <script>
            Swal.fire(
                'Caja cerrada!',
                '{{ session('Actualizado') }}',
                'success'
            )
        </script>
    @endif

    @if (session('Borrado'))
        <script>
            Swal.fire(
                'Borrado!',
                '{{ session('Borrado') }}',
                'success'
            )
        </script>
    @endif


    @if (session('Error'))
        <script>
            Swal.fire({
                title: 'Error!',
                text: '{{ session('Error') }}',
                icon: 'error',
                confirmButtonText: 'OK'
            })
        </script>
    @endif


    <script>
        $('.formulario-eliminar').submit(function(e) {
            e.preventDefault();

            Swal.fire({
                title: 'Estas seguro?',
                text: "No podras revertir esto.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Si, Borrar!',
                cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.isConfirmed) {
                    /* Swal.fire(
                        'Deleted!',
                        'Your file has been deleted.',
                        'success'
                    ) */

                    this.submit();
                }

            })

        });
    </script>





@stop
