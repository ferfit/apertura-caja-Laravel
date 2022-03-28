@extends('layouts.dashboard')



@section('contenido')
    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Listado de autos</h2>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="dashboard_favorites_contents dashboard_my_lising_tabs p10-520">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Nav tabs -->
                        <div class="nav nav-tabs justify-content-start" role="tablist">
                            <a href="{{ route('autos.create') }}"> <button class="nav-link active" id="nav-home-tab"
                                    data-bs-toggle="tab" data-bs-target="#nav-home" role="tab" aria-controls="nav-home"
                                    aria-selected="true">Crear</button></a>
                        </div>
                    </div>
                    <!-- Tab panes -->
                    <div class="col-lg-12 mt50">
                        <div class="tab-content row" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                                aria-labelledby="nav-home-tab">
                                <div class="col-lg-12">
                                    <div class="table-responsive my_lisging_table">
                                        <table class="table">
                                            <thead class="table-light">
                                                <tr class="thead_row">
                                                    <th class="thead_title pl20" scope="col">General</th>
                                                    <th class="thead_title" scope="col">Modelo</th>
                                                    <th class="thead_title" scope="col">Versión</th>
                                                    <th class="thead_title" scope="col">Año</th>
                                                    <th class="thead_title" scope="col">Condición</th>
                                                    <th class="thead_title" scope="col">Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                @foreach ($autos as $auto)
                                                    <tr>
                                                        <th class="align-middle pl20" scope="row">
                                                            <div class="car-listing bdr_none d-flex mb0">
                                                                <div class="thumb w150">
                                                                    <img class="img-fluid" src="images/listing/1.jpg"
                                                                        alt="1.jpg">
                                                                </div>
                                                                <div class="details ms-1">
                                                                    <h6 class="title"><a
                                                                            href="page-car-single-v1.html">{{ $auto->marca }}
                                                                            - {{ $auto->modelo }}</a></h6>
                                                                    <h5 class="price">
                                                                        ${{ number_format($auto->precio, 2, ',', '.') }}
                                                                    </h5>
                                                                </div>
                                                            </div>
                                                        </th>
                                                        <td class="align-middle">{{ $auto->modelo }}</td>
                                                        <td class="align-middle">{{ $auto->version }}</td>
                                                        <td class="align-middle">{{ $auto->año }}</td>
                                                        <td class="align-middle">{{ $auto->condicion }}</td>
                                                        <td class="editing_list align-middle">
                                                            <ul>
                                                                <li class="list-inline-item mb-1">
                                                                    <a href="{{route('autos.show',$auto)}}" data-bs-toggle="tooltip"
                                                                        data-bs-placement="top" title="Ver"><span
                                                                            class="flaticon-view"></span></a>
                                                                </li>
                                                                <li class="list-inline-item mb-1">
                                                                    <a href="{{route('autos.show',$auto)}}" data-bs-toggle="tooltip"
                                                                        data-bs-placement="top" title="Imagenes"><i class="fal fa-image"></i></a>
                                                                </li>
                                                                <li class="list-inline-item mb-1">
                                                                    <a href="{{route('autos.show',$auto)}}" data-bs-toggle="tooltip"
                                                                        data-bs-placement="top" title="Editar"><i class="fal fa-edit"></i></a>
                                                                </li>
                                                                <li class="list-inline-item mb-1">
                                                                    <a href="#" data-bs-toggle="tooltip"
                                                                        data-bs-placement="top" title="Borrar"><span
                                                                            class="flaticon-trash"></span></a>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                @endforeach


                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="mbp_pagination mt10">
                                        <ul class="page_navigation">
                                            {{-- <li class="page-item">
                                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true"> <span
                                                        class="fa fa-arrow-left"></span></a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                                            <li class="page-item active" aria-current="page">
                                                <a class="page-link" href="#">2 <span
                                                        class="sr-only">(current)</span></a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="#"><span
                                                        class="fa fa-arrow-right"></span></a>
                                            </li> --}}
                                            {{$autos->links()}}
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="card">
            <div class="card-header d-flex justify-content-start align-items-center">
                <h3 class="card-title mr-3">Autos</h3>
                <a href="{{ route('autos.create') }}" class="btn btn-success mr-2"><i
                        class="far fa-plus-square mr-1"></i>Crear</a>

            </div>
            <!-- /.card-header -->
            <div class="card-body">


                @livewire('autos-index')



            </div>
        </div>
    </div>
@stop



@section('css')
    @livewireStyles
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
