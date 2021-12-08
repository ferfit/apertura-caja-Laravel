<?php

namespace App\Http\Controllers;
use App\Models\Empleado;
use App\Models\Venta;

use Illuminate\Http\Request;

class ReporteController extends Controller
{
    public function reportePorFecha(){

        $empleados = Empleado::all();

        return view('admin.reportes.index',compact('empleados'));
    }

    public function filtrarRangoFecha(Request $request){

        $inicio = $request['inicio']." 00:00:00";
        $fin = $request['fin']." 23:00:00";
        $empleado = $request['empleado_id'];


        $ventas = Venta::whereBetween('created_at', [$inicio, $fin])->where('empleado_id',$empleado)->get();

        $total = $ventas->sum('comision_empleado');

        return view('admin.reportes.reporte-por-rango',compact('ventas','total','inicio','fin'));

    }
}
