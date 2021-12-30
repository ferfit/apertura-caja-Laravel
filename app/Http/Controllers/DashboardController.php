<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Auto;
use App\Models\User;


use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $clientes = Cliente::all();
        $autos = Auto::all();
        $usuarios = User::all();

        $autosParados = [];
        $hoy = today();

        for ($i = 0; $i < count($autos); $i++) {
            $fechaCreacion = $autos[$i]['created_at'];
            $diferenciaDias = $fechaCreacion->diffInDays($hoy);

            if ($diferenciaDias > 20) {
                $autosParados[] = $autos[$i];
            }
        }

        //return $autosParados;
        //die();
        return view('admin/dashboard', compact('clientes', 'autos', 'usuarios','autosParados'));
    }
}
