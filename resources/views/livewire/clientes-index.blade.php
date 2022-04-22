<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
    <div class="col-lg-12">
        <div class="table-responsive my_lisging_table">

            <input class="form-control mb-3" wire:model="search" type="search" placeholder="Buscar...">

            <table class="table">
                <thead class="table-light">
                    <tr class="thead_row">
                        <th class="thead_title" scope="col">Fecha</th>
                        <th class="thead_title" scope="col">Nombre</th>
                        <th class="thead_title" scope="col">Celular</th>
                        <th class="thead_title" scope="col">Email</th>
                        <th class="thead_title" scope="col">Ciudad</th>
                        <th class="thead_title" scope="col">Provincia</th>
                        <th class="thead_title" scope="col">Nota</th>
                        <th class="thead_title" scope="col">Estado</th>
                        <th class="thead_title" scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($clientes as $cliente)
                        <tr>
                            <td class="align-middle">{{ date('d-m-Y', strtotime($cliente->created_at)) }}</td>
                            <td class="align-middle">{{ $cliente->nombre }}</td>
                            <td class="align-middle">{{ $cliente->celular }}</td>
                            <td class="align-middle">{{ $cliente->email }}</td>
                            <td class="align-middle">{{ $cliente->ciudad }}</td>
                            <td class="align-middle">{{ $cliente->provincia }}</td>
                            <td class="align-middle">{{ Str::limit($cliente->nota, 50) }}</td>
                            <td class="align-middle">

                                @switch($cliente->estado)
                                    @case('compra')
                                        <small class="tag text-white px-2 py-1 rounded" style="background-color: red">
                                            {{ $cliente->estado }}</small>
                                    @break

                                    @case('venta')
                                        <small class="tag text-white px-2 py-1 rounded" style="background-color: blue">
                                            {{ $cliente->estado }}</small>
                                    @break

                                    @case('compra-venta')
                                        <small class="tag text-white px-2 py-1 rounded" style="background-color: black">
                                            {{ $cliente->estado }}</small>
                                    @break

                                    @default
                                @endswitch


                            </td>
                            <td class="editing_list align-middle">
                                <div class="row mx-auto">
                                    <ul>
                                        <li class="list-inline-item mb-1">
                                            <a href="{{ route('clientes.show', $cliente) }}" data-bs-toggle="tooltip"
                                                data-bs-placement="top" title="Ver"><span
                                                    class="flaticon-view"></span></a>
                                        </li>
                                        <li class="list-inline-item mb-1">
                                            <a href="{{ route('clientes.edit', $cliente) }}" data-bs-toggle="tooltip"
                                                data-bs-placement="top" title="Editar"><i
                                                    class="fal fa-edit"></i></a>
                                        </li>

                                        <li class="list-inline-item mb-1">
                                            <form action="{{ route('clientes.destroy', $cliente) }}" method="POST"
                                                class="formulario-eliminar">
                                                @csrf
                                                @method('DELETE')


                                                <button class="sinBordes p-0"><a data-bs-toggle="tooltip"
                                                        data-bs-placement="top" title="Borrar"><span
                                                            class="flaticon-trash"></span></a></button>
                                            </form>

                                        </li>

                                        <li class="list-inline-item mb-1">
                                            <a href="https://api.whatsapp.com/send?phone=549{{ $cliente->celular }}"
                                                target="_blank" data-bs-toggle="tooltip" data-bs-placement="top"
                                                title="Whatsapp"><i class="fab fa-whatsapp"></i></i></a>
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
                {{ $clientes->links() }}
            </ul>
        </div>
    </div>
</div>
