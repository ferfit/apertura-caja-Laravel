<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Empleado;
use App\Models\Servicio;
use App\Models\Venta;
use Carbon\Carbon; 



class DashboardController extends Controller
{
    public function dashboard()
    {
        $hoy = today();
        $empleadas = Empleado::all();
        $servicios = Servicio::all();
        $ventas = Venta::whereDate('created_at', '=', Carbon::now())->get();
        $totalVentas = $ventas->sum('precio');
        
        
        $mes = substr($hoy,5,2);
        $ventasMensual = Venta::whereMonth('created_at', $mes)->get();
        $totalVentasMensual = $ventasMensual->sum('precio');
         


        return view('admin/dashboard',compact('empleadas','servicios','ventas','totalVentas','hoy','mes','ventasMensual','totalVentasMensual'));
    }
}
