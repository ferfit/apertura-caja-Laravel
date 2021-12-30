<div class="table-responsive">
    <input class="form-control mb-3" wire:model="search" type="search" placeholder="Buscar por nombre...">

    <table class="table table-bordered ">
        <thead>
            <tr>

                <th>Nombre</th>
                <th class="col-2">Acciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($modelos as $modelo)
                <tr>
                    <td>{{ $modelo->nombre }}</td>
                    <td class="">
                        <div class="row mx-auto">
                            
                            <a href="{{ route('modelos.edit', $modelo) }}" class="btn btn-primary mr-2"><i
                                    class="fas fa-edit"></i></a>

                            <form action="{{ route('modelos.destroy', $modelo) }}" method="POST"
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
        {{ $modelos->links() }}
    </div>
</div>
