<?php

namespace App\Http\Controllers;

use App\Models\Venta;
use App\Models\Cliente;
use App\Models\Auto;
use App\Models\Empleado;
use Illuminate\Http\Request;

class VentaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ventas = Venta::orderby('id','DESC')->paginate(20);

        return view('admin.ventas.index',compact('ventas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $clientes = Cliente::all();

        return view('admin.ventas.create',compact('clientes'));
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
            'titulo' => 'required',
            'cliente_id' => 'required',
            'auto_id' => 'required',
            'precio_costo' => 'required',
            'precio_venta' => 'required',
            'ganancia' => 'required'
        ]);

        /*try {*/
            //Creacion de venta
            Venta::create([
                'titulo' => $data['titulo'],
                'cliente_id' => $data['cliente_id'],
                'auto_id' => $data['auto_id'],
                'precio_costo' => $data['precio_costo'],
                'precio_venta' => $data['precio_venta'],
                'precio_ganancia' => $data['ganancia']

            ]);

            //retorno
            return redirect()->route('ventas.index')->with('Creado', 'La venta se creó exitosamente.');
/*
        } catch (\Throwable $th) {
            return redirect()->route('ventas.index')->with('Error', 'Hubo un problema al crear la venta, vuelta a intentarlo.');
        }*/



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

        $clientes = Cliente::all();

        return view('admin.ventas.edit',compact('clientes','venta'));
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
            $venta->medio_pago = $data['medio_pago'];
            $venta->precio = $data['precio'];
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
        $venta = Venta::find($venta);

        try {
            $venta->first()->delete();

            return redirect()->route('ventas.index')->with('Borrado','La venta se borró exitosamente.');

        } catch (\Throwable $th) {

            return redirect()->route('ventas.index')->with('Error','Hubo un problema, vuelva a intentarlo.');
        }
    }
}
