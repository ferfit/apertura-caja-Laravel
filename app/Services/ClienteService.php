<?php

namespace App\Services;

use App\Models\Cliente;
use App\Models\Auto;
use Illuminate\Support\Facades\DB;


class ClienteService
{

    public function buscarCoincidenciasClientes($data)
    {
        $clientes = DB::table('clientes')
            ->where('estadocliente','Activado')
            ->where('marca_id', $data['marca'])
            ->where('modelo_id', $data['modelo'])
            ->orWhere(function ($query) use ($data) {
                $query->where('precioEstimado', $data['precio'])
                    ->where('tipo', $data['tipo']);
            })
        ->get();

        return $clientes;
    }
}
