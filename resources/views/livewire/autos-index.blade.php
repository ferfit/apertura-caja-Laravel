<div class="table-responsive">
    <input class="form-control mb-3" wire:model="search" type="search" placeholder="Buscar...">

    <table class="table table-bordered ">
        <thead>
            <tr>
                <th>Nro.</th>
                <th>Fecha</th>
                <th>Condición</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Versión</th>
                <th>Año</th>
                <th>Precio Venta</th>
                <th>Ciudad</th>
                <th>Provincia</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>

            @foreach ($autos as $auto)
                <tr>

                    <td>{{ $auto->id }}</td>
                    <td>{{ date('d-m-Y', strtotime($auto->created_at)) }}</td>
                    <td>{{ $auto->condicion }}</td>
                    <td>{{ $auto->marca }}</td>
                    <td>{{ $auto->modelo }}</td>
                    <td>{{ $auto->version }}</td>
                    <td>{{ $auto->año }}</td>
                    <td>${{ number_format($auto->precio , 2, ",", ".")  }}</td>
                    <td>{{ $auto->ciudad }}</td>
                    <td>{{ $auto->provincia }}</td>

                    <td class="">
                        <div class="row mx-auto">
                            <a href="{{ route('autos.show', $auto) }}" class="btn btn-success mr-2"><i
                                    class="far fa-eye"></i></a>
                            <a href="{{ route('autos.edit', $auto) }}" class="btn btn-primary mr-2"><i
                                    class="fas fa-edit"></i></a>
                            <a href="{{ route('gastos.index', $auto) }}" class="btn btn-secondary mr-2"><i
                                    class="fas fa-search-dollar"></i></a>
                            <a href="{{ route('files.create',$auto) }}" class="btn btn-warning mr-2"><i
                                    class="far fa-image"></i></a>

                            <form action="{{ route('autos.destroy', $auto) }}" method="POST"
                                class="formulario-eliminar">
                                @csrf
                                @method('DELETE')

                                <button type="submit" class="btn btn-danger">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                            </form>
                        </div>
                    </td>
                </tr>
            @endforeach

        </tbody>
    </table>
    <div class="card-footer clearfix">

        {{ $autos->links() }}
    </div>
</div>
