<?php

namespace App\Http\Controllers;

use App\Models\Venta;
use App\Models\Caja;
use App\Models\Servicio;
use App\Models\Empleado;
use Illuminate\Http\Request;
use Carbon\Carbon;

class VentaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hoy = today();
        $hoy2 =  Carbon::now();

        $ventas = Venta::orderby('id', 'DESC')->whereDate('created_at', '=', Carbon::now())->paginate(20);

        return view('admin.ventas.index', compact('ventas', 'hoy','hoy2'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $servicios = Servicio::all();
        $empleados = Empleado::all();
        $cajas = Caja::where('estado', 1)->get();

        return view('admin.ventas.create', compact('servicios', 'empleados', 'cajas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */


    public function store(Request $request)
    {

        //Validación
        $data = request()->validate([
            'cliente' => 'required',
            'servicio_id' => 'required',
            'medio_pago' => 'required',
            'porcentaje' => 'required',
            'empleado_id' => 'required',
            'caja_id' => 'required'
        ]);


        //Trae precio servicio
        $servicio = Servicio::where('id', '=', $data['servicio_id'])->get();

        $precio = $servicio->first()->precio;


        try {
            //Creacion de venta
            Venta::create([
                'cliente' => $data['cliente'],
                'servicio_id' => $data['servicio_id'],
                'medio_pago' => $data['medio_pago'],
                'precio' => $precio,
                'porcentaje' => $data['porcentaje'],
                'comision_empleado' => ($precio * $data['porcentaje']) / 100,
                'empleado_id' => $data['empleado_id'],
                'caja_id' => $data['caja_id']
            ]);

            //Aumento total caja
            $caja = Caja::find($data['caja_id']);
            $caja->total = $caja->total + $precio;

            //Aumento efectivo
            if ($data['medio_pago'] == "Efectivo") {
                $caja->efectivo_caja = $caja->efectivo_caja + $precio;
            }

            //Aumento tarjeta
            if ($data['medio_pago'] == "Debito" || $data['medio_pago'] == "Trans MP" || $data['medio_pago'] == "Credito") {
                $caja->tarjeta = $caja->tarjeta + $precio;
            }

            $caja->save();

            //retorno
            return redirect()->route('ventas.index')->with('Creado', 'La venta se creó exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('ventas.index')->with('Error', 'Hubo un problema al crear la venta, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Venta  $venta
     * @return \Illuminate\Http\Response
     */
    public function show(Venta $venta)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Venta  $venta
     * @return \Illuminate\Http\Response
     */
    public function edit(Venta $venta)
    {
        $servicios = Servicio::all();
        $empleados = Empleado::all();
        $cajas = Caja::all();

        return view('admin.ventas.edit', compact('servicios', 'empleados', 'cajas', 'venta'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Venta  $venta
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Venta $venta)
    {
        //Validación
        $data = request()->validate([
            'cliente' => 'required',
            'servicio_id' => 'required',
            'medio_pago' => 'required',
            'precio' => 'required',
            'empleado_id' => 'required',
            'caja_id' => 'required'
        ]);

        try {
            //Actulización de la venta

            $venta->cliente = $data['cliente'];
            $venta->servicio_id = $data['servicio_id'];
            /*
            if ($venta->medio_pago ==  $data['medio_pago']) {

                //$venta->medio_pago = $data['medio_pago'];

            } else {

                if ($venta->medio_pago == "Debito") {

                    if ($data['medio_pago'] == "Efectivo") {
                        $caja = Caja::find($venta->caja_id);
                        $caja->tarjeta = $caja->tarjeta - $venta->precio;
                        $caja->efectivo_caja = $caja->efectivo_caja + $venta->precio;
                        $caja->save();
                    } else {

                    }
                }

                if($venta->medio_pago == "Efectivo"){

                    if($data['medio_pago'] == "Debito" && $data['medio_pago'] == "Trans MP" && $data['medio_pago'] == "Credito"){
                        $caja = Caja::find($venta->caja_id);
                        $caja->efectivo_caja = $caja->efectivo_caja - $venta->precio;
                        $caja->tarjeta = $caja->tarjeta + $venta->precio;
                        $caja->save();
                    }
                }

                if($venta->medio_pago =="Trans MP"){

                    if($data['medio_pago'] == "Efectivo"){
                        $caja = Caja::find($venta->caja_id);
                        $caja->tarjeta = $caja->tarjeta - $venta->precio;
                        $caja->efectivo_caja = $caja->efectivo_caja + $venta->precio;
                        $caja->save();
                    }

                }

                if($venta->medio_pago =="Credito"){

                    if($data['medio_pago'] == "Efectivo"){
                        $caja = Caja::find($venta->caja_id);
                        $caja->tarjeta = $caja->tarjeta - $venta->precio;
                        $caja->efectivo_caja = $caja->efectivo_caja + $venta->precio;
                        $caja->save();
                    }

                }


            }
            */

            $venta->medio_pago = $data['medio_pago'];

            $venta->empleado_id = $data['empleado_id'];
            $venta->caja_id = $data['caja_id'];

            $venta->save();


            return redirect()->route('ventas.index')->with('Actualizado', 'La venta se actualizó exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('ventas.index')->with('Error', 'Hubo un problema al actualizar la venta, vuelta a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Venta  $venta
     * @return \Illuminate\Http\Response
     */
    public function destroy(Venta $venta)
    {

        try {

        //Descuenta del total de caja
        $caja = Caja::find($venta->caja_id);



        $caja->total = $caja->total - $venta->precio;

        //Descuenta del campo segun metodo de pago
        if ($venta->medio_pago == "Efectivo") {
            $caja->efectivo_caja = $caja->efectivo_caja - $venta->precio;
        }

        if ($venta->medio_pago == "Debito" || $venta->medio_pago == "Trans MP" || $venta->medio_pago == "Credito") {
            $caja->tarjeta = $caja->tarjeta - $venta->precio;
        }

        $caja->save();


        //Elimina venta
        $venta = Venta::find($venta);


            $venta->first()->delete();

            return redirect()->route('ventas.index')->with('Borrado', 'La venta se borró exitosamente.');
        } catch (\Throwable $th) {

            return redirect()->route('ventas.index')->with('Error', 'Hubo un problema, vuelva a intentarlo.');
        }
    }
}
