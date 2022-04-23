<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Auto;
use App\Models\User;
use App\Models\Venta;
use Illuminate\Support\Facades\DB;


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

        //Estadistica mensuales compras
        $ventasMensualesCosto = Venta::whereMonth('created_at', $mes)->get();
        $totalCostoMensual = number_format($ventasMensual->sum('precio_costo'), 2, ",", ".");

        $cantidad = $mes;

        //$users = DB::select('select * from users ');
        //$users = DB::select('select * from ventas where created_at >= date_sub(now(), interval 6 month); ');
        /*$ventasPorMeses = DB::select("SELECT
                                sum( CASE MONTH ( a.created_at ) WHEN '1' THEN a.precio_venta ELSE 0 END ) AS enero,
                                sum( CASE MONTH ( a.created_at ) WHEN '2' THEN a.precio_venta ELSE 0 END ) AS febrero,
                                sum( CASE MONTH ( a.created_at ) WHEN '3' THEN a.precio_venta ELSE 0 END ) AS marzo,
                                sum( CASE MONTH ( a.created_at ) WHEN '4' THEN a.precio_venta ELSE 0 END ) AS abril,
                                sum( CASE MONTH ( a.created_at ) WHEN '5' THEN a.precio_venta ELSE 0 END ) AS mayo,
                                sum( CASE MONTH (a.created_at ) WHEN '6' THEN a.precio_venta ELSE 0 END ) AS junio,
                                sum( CASE MONTH ( a.created_at ) WHEN '7' THEN a.precio_venta ELSE 0 END ) AS julio,
                                sum( CASE MONTH ( a.created_at ) WHEN '8' THEN a.precio_venta ELSE 0 END ) AS agosto,
                                sum( CASE MONTH ( a.created_at ) WHEN '9' THEN a.precio_venta ELSE 0 END ) AS septiembre,
                                sum( CASE MONTH ( a.created_at ) WHEN '10' THEN a.precio_venta ELSE 0 END ) AS octubre,
                                sum( CASE MONTH ( a.created_at ) WHEN '11' THEN a.precio_venta ELSE 0 END ) AS noviembre,
                                sum( CASE MONTH ( a.created_at ) WHEN '12' THEN a.precio_venta ELSE 0 END ) AS diciembre
                            FROM
                                ventas AS a
                            WHERE
                                1 = 1
                                AND DATE_FORMAT( a.created_at, '%Y' ) = 2022;");*/


        $ventasPorMeses = DB::select("SELECT

                                sum( CASE MONTH ( a.created_at ) WHEN '1' THEN a.precio_venta ELSE 0 END ) AS enero,
                                sum( CASE MONTH ( a.created_at ) WHEN '2' THEN a.precio_venta ELSE 0 END ) AS febrero,
                                sum( CASE MONTH ( a.created_at ) WHEN '3' THEN a.precio_venta ELSE 0 END ) AS marzo,
                                sum( CASE MONTH ( a.created_at ) WHEN '4' THEN a.precio_venta ELSE 0 END ) AS abril,
                                sum( CASE MONTH ( a.created_at ) WHEN '5' THEN a.precio_venta ELSE 0 END ) AS mayo,
                                sum( CASE MONTH (a.created_at ) WHEN '6' THEN a.precio_venta ELSE 0 END ) AS junio,
                                sum( CASE MONTH ( a.created_at ) WHEN '7' THEN a.precio_venta ELSE 0 END ) AS julio,
                                sum( CASE MONTH ( a.created_at ) WHEN '8' THEN a.precio_venta ELSE 0 END ) AS agosto,
                                sum( CASE MONTH ( a.created_at ) WHEN '9' THEN a.precio_venta ELSE 0 END ) AS septiembre,
                                sum( CASE MONTH ( a.created_at ) WHEN '10' THEN a.precio_venta ELSE 0 END ) AS octubre,
                                sum( CASE MONTH ( a.created_at ) WHEN '11' THEN a.precio_venta ELSE 0 END ) AS noviembre,
                                sum( CASE MONTH ( a.created_at ) WHEN '12' THEN a.precio_venta ELSE 0 END ) AS diciembre
                            FROM
                                ventas AS a
                            WHERE
                                1 = 1
                                AND DATE_FORMAT( a.created_at, '%Y' ) = 2022;");

        //return $ventasPorMeses['0'];
        //return ($ventasPorMeses['0']);



        $año = $hoy->format('Y');

        $v1 = Venta::whereMonth('created_at', '01')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v2 = Venta::whereMonth('created_at', '02')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v3 = Venta::whereMonth('created_at', '03')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v4 = Venta::whereMonth('created_at', '04')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v5 = Venta::whereMonth('created_at', '05')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v6 = Venta::whereMonth('created_at', '06')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v7 = Venta::whereMonth('created_at', '07')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v8 = Venta::whereMonth('created_at', '08')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v9 = Venta::whereMonth('created_at', '09')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v10 = Venta::whereMonth('created_at', '10')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v11 = Venta::whereMonth('created_at', '11')->whereYear('created_at', '=', $año)->sum('precio_venta');
        $v12 = Venta::whereMonth('created_at', '12')->whereYear('created_at', '=', $año)->sum('precio_venta');

        $c1 = Venta::whereMonth('created_at', '01')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c2 = Venta::whereMonth('created_at', '02')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c3 = Venta::whereMonth('created_at', '03')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c4 = Venta::whereMonth('created_at', '04')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c5 = Venta::whereMonth('created_at', '05')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c6 = Venta::whereMonth('created_at', '06')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c7 = Venta::whereMonth('created_at', '07')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c8 = Venta::whereMonth('created_at', '08')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c9 = Venta::whereMonth('created_at', '09')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c10 = Venta::whereMonth('created_at', '10')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c11 = Venta::whereMonth('created_at', '11')->whereYear('created_at', '=', $año)->sum('precio_costo');
        $c12 = Venta::whereMonth('created_at', '12')->whereYear('created_at', '=', $año)->sum('precio_costo');

        $g1 = Venta::whereMonth('created_at', '01')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g2 = Venta::whereMonth('created_at', '02')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g3 = Venta::whereMonth('created_at', '03')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g4 = Venta::whereMonth('created_at', '04')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g5 = Venta::whereMonth('created_at', '05')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g6 = Venta::whereMonth('created_at', '06')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g7 = Venta::whereMonth('created_at', '07')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g8 = Venta::whereMonth('created_at', '08')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g9 = Venta::whereMonth('created_at', '09')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g10 = Venta::whereMonth('created_at', '10')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g11 = Venta::whereMonth('created_at', '11')->whereYear('created_at', '=', $año)->sum('precio_ganancia');
        $g12 = Venta::whereMonth('created_at', '12')->whereYear('created_at', '=', $año)->sum('precio_ganancia');


        //$vvv = $ventasPorMeses['0'];

        //return $autosParados;
        //die();
        return view('admin.dashboard', compact('clientes', 'autos', 'usuarios','autosParados','totalCostoMensual','totalVentasMensual','totalGananciaMensual',
        'v1','v2','v3','v4','v5','v6','v7','v8','v9','v10','v11','v12',
        'c1','c2','c3','c4','c5','c6','c7','c8','c9','c10','c11','c12',
        'g1','g2','g3','g4','g5','g6','g7','g8','g9','g10','g11','g12'));
    }
}
