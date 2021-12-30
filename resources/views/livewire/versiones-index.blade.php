<div class="table-responsive">
    <input class="form-control mb-3" wire:model="search" type="search" placeholder="Buscar por nombre...">
    {{$versiones}}
    <table class="table table-bordered ">
        <thead>
            <tr>

                <th>Nombre</th>
                <th class="col-2">Acciones</th>
            </tr>
        </thead>
        <tbody>
            
            @foreach ($versiones as $versione)
                <tr>
                    <td>{{ $versione->nombre }}</td>
                    <td class="">
                        <div class="row mx-auto">
                            
                            <a href="{{ route('versiones.edit', $versione) }}" class="btn btn-primary mr-2"><i
                                    class="fas fa-edit"></i></a>

                            <form action="{{ route('versiones.destroy', $versione) }}" method="POST"
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
        {{ $versiones->links() }}
    </div>
</div>
