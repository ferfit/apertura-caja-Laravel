@extends('adminlte::page')

@section('title', 'Dashboard')

@section('content_header')
    <h1 class="text-center">CONFIGURACIÓN DE DATOS DE EMPRESA</h1>
@stop

@section('content')
    <div class="container">


        <div class="card">


            <div class="card-header d-flex justify-content-start align-items-center">


                @if (count($datos))

                <?php $dato =$datos->first();?>

                <a href="{{route('datos.edit',$dato)}}" class="btn btn-primary mr-2"><i class="fas fa-edit"></i>Editar</a>

                @else
                <a href="{{route('datos.create')}}" class="btn btn-success mr-2"><i class="far fa-plus-square mr-1"></i>Ingresar datos</a>

                @endif




            </div>
            <!-- /.card-header -->
            <div class="card-body">

                <table class="table">
                    <tbody>
                        @foreach ($datos as $dato)

                            <tr>
                                <th scope="row">Nombre:</th>
                                <td>{{$dato->nombre}}</td>
                            </tr>
                            <tr>
                                <th scope="row">Teléfono fino:</th>
                                <td>{{$dato->telefonofijo}}</td>
                            </tr>
                            <tr>
                                <th scope="row">Whatsapp</th>
                                <td>{{$dato->telefonowhatsapp}}</td>
                            </tr>
                            <tr>
                                <th scope="row">Dirección:</th>
                                <td>{{$dato->direccion}}</td>
                            </tr>
                            <tr>
                                <th scope="row">Email:</th>
                                <td>{{$dato->email}}</td>
                            </tr>

                            <tr>
                                <th>Logo:</th>
                                <td><img src="/storage/{{ $dato->imagen}}" alt="" class="w-50"></td>

                            </tr>


                        @endforeach


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
                'Éxito!',
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
