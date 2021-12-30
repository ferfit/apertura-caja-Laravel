<div class="table-responsive">
    <input class="form-control mb-3" wire:model="search" type="search" placeholder="Buscar...">

    <table class="table table-bordered ">
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Nombre</th>
                <th>Celular</th>
                <th>Email</th>
                <th>Ciudad</th>
                <th>Provincia</th>
                <th>Nota</th>
                <th>Estado</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($clientes as $cliente)
                <tr>
                    <td>{{ date('d-m-Y', strtotime($cliente->created_at)) }}</td>
                    <td>{{ $cliente->nombre }}</td>
                    <td>{{ $cliente->celular }}</td>
                    <td>{{ $cliente->email }}</td>
                    <td>{{ $cliente->ciudad }}</td>
                    <td>{{ $cliente->provincia }}</td>
                    <td>{{ Str::limit($cliente->nota, 50) }}</td>
                    <td>
                    
                        @switch($cliente->estado)
                            @case("compra")
                            <small class="badge badge-dark"> {{ $cliente->estado }}</small>
                            @break
                            @case("venta")
                            <small class="badge badge-primary"> {{ $cliente->estado }}</small>

                            @break
                            @case("compra-venta")
                            <small class="badge badge-success"> {{ $cliente->estado }}</small>

                            @break
                            @default

                        @endswitch

                        
                    </td>
                    <td class="">
                        <div class="row mx-auto">
                            <a href="{{ route('clientes.show', $cliente) }}" class="btn btn-secondary mr-2"><i
                                    class="far fa-eye"></i></a>
                            <a href="{{ route('clientes.edit', $cliente) }}" class="btn btn-primary mr-2"><i
                                    class="fas fa-edit"></i></a>

                            <form action="{{ route('clientes.destroy', $cliente) }}" method="POST"
                                class="formulario-eliminar">
                                @csrf
                                @method('DELETE')

                                <button type="submit" class="btn btn-danger">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                            </form>
                            <a href="https://api.whatsapp.com/send?phone=549{{$cliente->celular}}" target="_blank" class="btn btn-success ml-xl-2"><i
                                class="fab fa-whatsapp"></i></a>
                        </div>
                    </td>
                </tr>
            @endforeach

            

        </tbody>
    </table>
    <div class="card-footer clearfix">
        {{ $clientes->links() }}
    </div>
</div>
