@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">PANEL DE CONTROL DE CAJAS</h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header d-flex justify-content-start align-items-center">
                <h3 class="card-title mr-3">Cajas</h3>
                <a href="{{ route('cajas.create') }}" class="btn btn-success mr-2"><i
                        class="far fa-plus-square mr-1"></i>Abrir caja</a>

            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Apertura</th>
                            <th>Nombre</th>
                            <th>Tarjeta</th>
                            <th>Efectivo</th>
                            <th>Total</th>
                            <th>Estado</th>
                            <th>Cierre</th>
                            <th class="col-2">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($cajas as $caja)
                            <tr>
                                <td>{{ $caja->id }}</td>
                                <td>{{ date('d-m-Y', strtotime($caja->created_at)) }}</td>
                                <td>{{ $caja->nombre }}</td>
                                <td>${{ $caja->tarjeta }}</td>
                                <td>${{ $caja->efectivo_caja }}</td>
                                <td>${{ $caja->total }}</td>
                                <td>
                                    @if ($caja->estado == 'abierto')
                                        <small class="badge badge-success"> {{ $caja->estado }}</small>
                                    @else
                                        <small class="badge badge-danger"> {{ $caja->estado }}</small>
                                    @endif
                                </td>

                                <td>
                                    @if ($caja->cierre)
                                        {{ date('d-m-Y', strtotime($caja->cierre)) }}
                                    @endif
                                </td>

                                <td class="">
                                    <div class="row mx-auto">
                                        <a href="{{ route('cajas.show', $caja) }}" class="btn btn-success mr-2"><i class="far fa-eye"></i></a>
                                        <a href="{{ route('cajas.edit', $caja) }}" class="btn btn-primary mr-2"><i
                                                class="fas fa-edit"></i></a>

                                        <form action="{{ route('cajas.destroy', $caja) }}" method="POST"
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
                {{$cajas->links()}}
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
