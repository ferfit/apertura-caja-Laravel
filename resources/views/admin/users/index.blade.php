@extends('layouts.dashboard')

@section('contenido')

    <div class="row">
        <div class="col-xl-8">
            <div class="col-lg-12 mb50">
                <div class="breadcrumb_content">
                    <h2 class="breadcrumb_title">Listado de Usuarios</h2>

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
                            <a href="{{ route('users.create') }}"> <button class="nav-link active" id="nav-home-tab"
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
                                                    <th class="thead_title" scope="col">Nombre</th>
                                                    <th class="thead_title" scope="col">Email</th>
                                                    <th class="thead_title" scope="col">Rol</th>
                                                    <th class="thead_title" scope="col">Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($usuarios as $usuario)
                                                    <tr>
                                                        <td class="align-middle">{{ $usuario->name }}</td>
                                                        <td class="align-middle">{{ $usuario->email }}</td>
                                                        <td class="align-middle">{{ ucwords($usuario->rol) }}</td>


                                                        <td class="editing_list align-middle">
                                                            <div class="row mx-auto">
                                                                <ul>

                                                                    <li class="list-inline-item mb-1">
                                                                        <a href="{{ route('users.edit', $usuario) }}"
                                                                            data-bs-toggle="tooltip" data-bs-placement="top"
                                                                            title="Editar"><i
                                                                                class="fal fa-edit"></i></a>
                                                                    </li>

                                                                    <li class="list-inline-item mb-1">
                                                                        <a href="{{ route('password', $usuario) }}"
                                                                            data-bs-toggle="tooltip" data-bs-placement="top"
                                                                            title="Contraseña"><i
                                                                                class="fal fa-lock"></i></a>
                                                                    </li>

                                                                    <li class="list-inline-item mb-1">
                                                                        <form
                                                                            action="{{ route('users.destroy', $usuario) }}"
                                                                            method="POST" class="formulario-eliminar">
                                                                            @csrf
                                                                            @method('DELETE')


                                                                            <button class="sinBordes p-0"><a
                                                                                    data-bs-toggle="tooltip"
                                                                                    data-bs-placement="top"
                                                                                    title="Borrar"><span
                                                                                        class="fal fa-trash"></span></a></button>
                                                                        </form>

                                                                    </li>

                                                                </ul>

                                                            </div>
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
                                            {{ $usuarios->links() }}
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




    @stop

    @section('css')

    @stop

    @section('js')


        @include('includes.formulario')





    @stop
