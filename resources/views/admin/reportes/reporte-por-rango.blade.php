@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">REPORTE DE VENTAS DE</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-4 d-flex align-items-center">
                        <p class="m-0"> <strong>Desde:</strong>  
                            {{date('d-m-Y', strtotime($inicio))}}
                            <br><strong> Hasta:   </strong>  
                            {{ date('d-m-Y', strtotime($fin))}}
                            
                        </p>
                    </div>
                    <div class="col-4 d-flex align-items-center justify-content-center">
                        <h2 class="m-0" >TOTAL: ${{$total}}</h2>

                    </div>
                    <div class="col-4 d-flex align-items-center justify-content-end">
                        <a href="{{ route('reporte')}}" class="btn btn-secondary "> <i class="fas fa-undo-alt mr-1"></i>Volver</a>
                    </div>
                </div>
                
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Cliente</th>
                            <th>Servicio</th>
                            <th>Metodo Pago</th>
                            <th>Precio</th>
                            <th>Porcentaje</th>
                            <th>Empleada</th>
                            <th>Comisión</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($ventas as $venta)
                            <tr>
                                <td>{{ $venta->id }}</td>
                                <td>{{$venta->cliente}}</td>
                                <td>{{$venta->servicio->nombre}}</td>
                                <td>{{$venta->medio_pago}}</td>
                                <td>${{$venta->precio}}</td>
                                <td>{{$venta->porcentaje}}%</td>
                                <td>{{$venta->empleado->nombre}}</td>
                                <td>${{$venta->comision_empleado}}</td>
                                
                        @endforeach

                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
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
                'Creado!',
                '{{ session('Creado') }}',
                'success'
            )
        </script>
    @endif

    @if (session('Actualizado'))
        <script>
            Swal.fire(
                'Actualizado!',
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
