@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">PANEL DE CONTROL DE GASTOS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header d-flex justify-content-start align-items-center">
                <h3 class="card-title mr-3">Gastos</h3>
                <a href="{{ route('gastos.create') }}" class="btn btn-success mr-2"><i
                        class="far fa-plus-square mr-1"></i>Crear</a>

            </div>
            <!-- /.card-header -->
            <div class="card-body  table-responsive">
                <table class="table table-bordered ">
                    <thead>
                        <tr>
                            <th style="width: 10px">Nro</th>
                            <th>Fecha</th>
                            <th>Nombre</th>
                            <th>Monto</th>
                            <th>Caja</th>
                            <th class="col-2">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($gastos as $gasto)
                            <tr>
                                <td>{{ $gasto->id }}</td>
                                <td>{{ date('d-m-Y', strtotime($gasto->created_at)) }}</td>
                                <td>{{ $gasto->nombre }}</td>
                                <td>$ {{ $gasto->monto }}</td>
                                <td>{{ $gasto->caja->nombre }}</td>
                                <td>
                                    <div class="row mx-auto">
                                        <a href="{{ route('gastos.edit', $gasto) }}" class="btn btn-primary mr-2"><i
                                                class="fas fa-edit"></i></a>

                                        <form action="{{ route('gastos.destroy', $gasto) }}" method="POST"
                                            class="formulario-eliminar">
                                            @csrf
                                            @method('delete')
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
                {{$gastos->links()}}
            </div>
        </div>
    </div>


@stop

@section('css')
    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
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
