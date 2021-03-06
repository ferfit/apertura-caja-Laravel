@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">PANEL DE CONTROL DE SERVICIOS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header d-flex justify-content-start align-items-center">
                <h3 class="card-title mr-3">Servicios</h3>
                <a href="{{ route('servicios.create') }}" class="btn btn-success mr-2"><i
                        class="far fa-plus-square mr-1"></i>Crear</a>

            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Nombre</th>
                            <th>Precio</th>
                            <th class="col-2">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($servicios as $servicio)
                            <tr>
                                <td>{{ $servicio->id }}</td>
                                <td>{{ $servicio->nombre }}</td>
                                <td>${{ $servicio->precio }}</td>
                                <td>
                                    <div class="row mx-auto">
                                        <a href="{{ route('servicios.edit', $servicio) }}" class="btn btn-primary mr-2"><i
                                                class="fas fa-edit"></i></a>

                                        <form action="{{ route('servicios.destroy', $servicio) }}" method="POST"
                                            class="formulario-eliminar">
                                            @csrf
                                            @method('DELETE')

                                            <button type="submit" class="btn btn-danger">
                                                <i class="fas fa-trash-alt"></i>
                                            </button>
                                        </form>
                                    </div>
                                </td>
                        @endforeach

                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                
                   {{$servicios->links()}}
               
            </div>
        </div>
    </div>
@stop

@section('css')
    <link rel="stylesheet" href="/css/admin_custom.css">
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
