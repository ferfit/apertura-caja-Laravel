<?php

namespace App\Services;

use App\Models\Cliente;
use App\Models\Auto;
use Illuminate\Support\Facades\DB;


class AutoService
{

    public function buscarCoincidencias($data)
    {
        $autos = DB::table('autos')
            ->where('estado','Activado')
            ->where('marca_id', $data['marca'])
            ->where('modelo_id', $data['modelo'])
            ->orWhere(function ($query) use ($data) {
                $query->where('precio', $data['precioEstimado'])
                    ->where('tipo', $data['tipo']);
            })
        ->get();

        return $autos;
    }
}
