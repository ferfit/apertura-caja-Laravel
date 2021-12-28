<div>
    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Nombre</th>
                <th >Celular</th>
                <th >Email</th>
                <th>Ciudad</th>
                <th>Provincia</th>
                <th>Nota</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            @foreach($clientes as $cliente)
                <tr>
                    <td>{{$cliente->nombre}}</td>
                    <td >{{$cliente->celular}}</td>
                    <td >{{$cliente->email}}</td>
                    <td >{{$cliente->ciudad}}</td>
                    <td>{{ $cliente->provincia}}</td>
                    <td>{{ $cliente->nota}}</td>
                    <td class="">
                        <div class="row mx-auto">
                            <a href="" class="btn btn-success mr-2"><i class="far fa-eye"></i></a>
                            <a href="" class="btn btn-primary mr-2"><i
                                    class="fas fa-edit"></i></a>

                            <form action="" method="POST"
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
</div>
