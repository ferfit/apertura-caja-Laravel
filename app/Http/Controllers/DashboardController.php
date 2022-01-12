<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Auto;
use App\Models\User;
use App\Models\Venta;


use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function dashboard()
    {
        $clientes = Cliente::all();
        $autos = Auto::all();
        $usuarios = User::all();

        //Control de auto parado
        $autosParados = [];
        $hoy = today();

        for ($i = 0; $i < count($autos); $i++) {
            $fechaCreacion = $autos[$i]['created_at'];
            $diferenciaDias = $fechaCreacion->diffInDays($hoy);

            if ($diferenciaDias > 20) {
                $autosParados[] = $autos[$i];
            }
        }

        setlocale(LC_MONETARY, 'it_IT');
        // Estadistica mensual
        $mes = substr($hoy,5,2);
        $ventasMensual = Venta::whereMonth('created_at', $mes)->get();
        $totalCostoMensual = number_format($ventasMensual->sum('precio_costo'), 2, ",", ".");
        $totalVentasMensual = number_format($ventasMensual->sum('precio_venta'), 2, ",", ".");
        $totalGananciaMensual = number_format($ventasMensual->sum('precio_ganancia'), 2, ",", ".");



        //return $autosParados;
        //die();
        return view('admin/dashboard', compact('clientes', 'autos', 'usuarios','autosParados','totalCostoMensual','totalVentasMensual','totalGananciaMensual'));
    }
}
