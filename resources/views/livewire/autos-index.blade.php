<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
    <div class="col-lg-12">
        <div class="table-responsive my_lisging_table">
            <input class="form-control mb-3" wire:model="search" type="search" placeholder="Buscar por patente...">

            <table class="table">
                <thead class="table-light">
                    <tr class="thead_row">
                        <th class="thead_title pl20" scope="col">General</th>
                        <th class="thead_title" scope="col">Patente</th>
                        <th class="thead_title" scope="col">Modelo</th>
                        <th class="thead_title" scope="col">Versión</th>
                        <th class="thead_title" scope="col">Año</th>
                        <th class="thead_title" scope="col">Condición</th>
                        <th class="thead_title" scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($autos as $auto )
                        <tr>

                            <th class="align-middle pl20" scope="row">
                                <div class="car-listing bdr_none d-flex mb0">
                                    <div class="thumb w150">
                                        @if ($auto->imagenPortada)
                                            <img class="img-fluid" src="{{ Storage::url($auto->imagenPortada) }}"
                                                alt="Imagen de auto">
                                        @else
                                            <img class="img-fluid" src="{{ asset('images/default/auto.png') }}"
                                                alt="Imagen de auto">
                                        @endif
                                    </div>
                                    <div class="details ms-1">
                                        <h6 class="title">
                                            {{$auto->titulo}} <br>
                                            <a
                                                href="{{ route('autos.show', $auto) }}">{{ $auto->marca->nombre }}
                                                - {{ $auto->modelo->nombre }}</a></h6>
                                        <h5 class="price">
                                            ${{ number_format($auto->precio, 2, ',', '.') }}
                                        </h5>
                                    </div>
                                </div>
                            </th>
                            <td class="align-middle">{{ $auto->patente }}</td>
                            <td class="align-middle">{{ $auto->modelo->nombre }}</td>
                            <td class="align-middle">{{ $auto->version }}</td>
                            <td class="align-middle">{{ $auto->año }}</td>
                            <td class="align-middle">{{ $auto->condicion }}</td>
                            <td class="editing_list align-middle">
                                <ul>
                                    <li class="list-inline-item mb-1">
                                        <a href="{{ route('autos.show', $auto) }}" data-bs-toggle="tooltip"
                                            data-bs-placement="top" title="Ver"><span class="flaticon-view"></span></a>
                                    </li>
                                    <li class="list-inline-item mb-1">
                                        <a href="{{ route('files.create', $auto) }}" data-bs-toggle="tooltip"
                                            data-bs-placement="top" title="Imagenes"><i class="fal fa-image"></i></a>
                                    </li>
                                    <li class="list-inline-item mb-1">
                                        <a href="{{ route('autos.edit', $auto) }}" data-bs-toggle="tooltip"
                                            data-bs-placement="top" title="Editar"><i class="fal fa-edit"></i></a>
                                    </li>
                                    <li class="list-inline-item mb-1">
                                        <a href="{{ route('gastos.index', $auto) }}" data-bs-toggle="tooltip"
                                            data-bs-placement="top" title="Gastos"><i
                                                class="far fa-dollar-sign"></i></a>
                                    </li>



                                    <li class="list-inline-item mb-1">
                                        <form action="{{ route('autos.destroy', $auto) }}" method="POST"
                                            class="formulario-eliminar">
                                            @csrf
                                            @method('DELETE')


                                            <button class="sinBordes p-0"><a data-bs-toggle="tooltip"
                                                    data-bs-placement="top" title="Borrar"><span
                                                        class="flaticon-trash"></span></a></button>
                                        </form>

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
                {{ $autos->links() }}
            </ul>
        </div>
    </div>
</div>
