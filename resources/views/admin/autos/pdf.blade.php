<!DOCTYPE html>

<head>
    <style>
        .customers {
            font-size: 16px;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            border-spacing: 0;
            width: 50%;
        }


        th{
            text-align: start;
            background-color: lightgrey;
            border:2px solid grey;
            padding: 5px;
        }
        td{
            border: 2px solid grey;
            padding: 5px 10px;
        }
        hr{
            margin: 20px 0;
        }

    </style>


</head>

<body>


    <h1>Concesionaria</h1>

    <h3>Dirección: Juan B. Justo N° 5180 - C.A.B.A.</h3>
    <h3>Teléfono:4545-9000</h3>
    <h3>Whatsapp:011-1234-1234</h3>
    <h3>Email:correo@correo.com</h3>

    <hr>

    <table class="customers">
        <tbody>
            <tr>
                <th scope="row">Condición:</th>
                <td>{{$auto->condicion}}</td>
            </tr>
            <tr>
                <th scope="row">Marca:</th>
                <td>{{$auto->marca}}</td>
            </tr>
            <tr>
                <th scope="row">Modelo</th>
                <td>{{$auto->modelo}}</td>
            </tr>
            <tr>
                <th scope="row">Versión:</th>
                <td>{{$auto->version}}</td>
            </tr>
            <tr>
                <th scope="row">Año:</th>
                <td>{{$auto->año}}</td>
            </tr>
            <tr>
                <th scope="row">Precio:</th>
                <td>${{$auto->precio}}</td>
            </tr>
            <tr>
                <th scope="row">Provincia</th>
                <td>{{$auto->provincia}}</td>
            </tr>
            <tr>
                <th scope="row">Ciudad</th>
                <td>{{$auto->ciudad}}</td>
            </tr>
            <tr>
                <th scope="row">Tipo:</th>
                <td>{{$auto->tipo}}</td>
            </tr>
            <tr>
                <th scope="row">Kilometraje:</th>
                <td>{{$auto->kilometraje}}</td>
            </tr>
            <tr>
                <th scope="row">Combustible</th>
                <td>{{$auto->combustible}}</td>
            </tr>
            <tr>
                <th scope="row">Tipo de motor:</th>
                <td>{{$auto->tipomotor}}</td>
            </tr>
            <tr>
                <th scope="row">Tracción:</th>
                <td>{{$auto->traccion}}</td>
            </tr>
            <tr>
                <th scope="row">Caja:</th>
                <td>{{$auto->caja}}</td>
            </tr>
            <tr>
                <th scope="row">Color</th>
                <td>{{$auto->color}}</td>
            </tr>
            <tr>
                <th scope="row">Tapizado</th>
                <td>{{$auto->tapizado}}</td>
            </tr>
            <tr>
                <th scope="row">Dirección</th>
                <td>{{$auto->direccion}}</td>
            </tr>
            <tr>
                <th scope="row">Valor</th>
                <td>{{$auto->valor}}</td>
            </tr>
            <tr>
                <th scope="row">Permuta</th>
                <td>{{$auto->permuta}}</td>
            </tr>

        </tbody>
    </table>

</body>

</html>
