@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center"></h1>
@stop

@section('content')
    <div class="container">
        <div class="card">
            <div class="card-header d-flex justify-content-start align-items-center">
                <h3 class="card-title mr-3">Gastos</h3>
                <a href="{{route('gastos.create',$auto)}}" class="btn btn-success mr-2"><i class="far fa-plus-square mr-1"></i>Crear</a>

            </div>
            <!-- /.card-header -->
            <div class="card-body">
                @if (count($gastos))
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>Monto</th>
                                <th class="col-2">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            @foreach ($gastos as $gasto)
                                <tr>
                                    <td>{{ $gasto->nombre }}</td>
                                    <td>$ {{ number_format($gasto->monto , 2, ",", ".")   }}</td>
                                    <td>
                                        <div class="row mx-auto">
                                            <a href="{{route('gastos.edit',[$gasto,$auto])}}" class="btn btn-primary mr-2"><i class="fas fa-edit"></i></a>


                                            <form action="{{route('gastos.destroy',[$gasto,$auto])}}" method="POST" class="formulario-eliminar">
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
                @else
                    <p>No presenta gastos al día de la fecha</p>
                @endif
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">

                <p><strong>Total: </strong> $ {{$total}}</p>

                <a href="{{ route('autos.index') }}" class="ml-1 btn btn-secondary"> <i
                        class="fas fa-undo-alt mr-1"></i>Volver</a>

            </div>
        </div>
    </div>


@stop

@section('css')
    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />
@stop

@section('js')
    @livewireScripts
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
