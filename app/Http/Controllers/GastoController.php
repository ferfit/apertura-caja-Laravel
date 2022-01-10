<?php

namespace App\Http\Controllers;

use App\Models\Gasto;
use App\Models\Caja;
use Illuminate\Http\Request;

class GastoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $gastos = Gasto::orderBy('id','DESC')->paginate(10);

        return view('admin.gastos.index',compact('gastos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cajas = Caja::where('estado', 1)->get();

        return view('admin.gastos.create',compact('cajas'));
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
            'nombre' => 'required',
            'monto' => 'required',
            'caja_id' => 'required'
        ]);


        try {
            //Creacion de gasto
            Gasto::create([
                'nombre' => $data['nombre'],
                'monto' => $data['monto'],
                'caja_id' => $data['caja_id']
            ]);

            //Aumento total caja
            //$caja = Caja::find($data['caja_id']);
           //$caja->total = $caja->total + $precio;
           //$caja->save();

            //retorno
            return redirect()->route('gastos.index')->with('Creado', 'El gasto se creó exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('gastos.index')->with('Error', 'Hubo un problema al crear el gasto, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Gasto  $gasto
     * @return \Illuminate\Http\Response
     */
    public function show(Gasto $gasto)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Gasto  $gasto
     * @return \Illuminate\Http\Response
     */
    public function edit(Gasto $gasto)
    {
        $cajas = Caja::where('estado', 1)->get();

        return view('admin.gastos.edit',compact('gasto','cajas'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Gasto  $gasto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Gasto $gasto)
    {
        //Validación
        $data = request()->validate([
            'nombre' => 'required',
            'monto' => 'required',
            'caja_id' => 'required'
        ]);


        try {
            //Actualiza el gasto
            $gasto->nombre = $data['nombre'];
            $gasto->monto = $data['monto'];
            $gasto->caja_id = $data['caja_id'];
            $gasto->save();

            //Redicción
            return redirect()->route('gastos.index')->with('Actualizado', 'El gasto se actualizó exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('gastos.index')->with('Error', 'Hubo un problema al actualizar el gasto, vuelta a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Gasto  $gasto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Gasto $gasto)
    {
        $gasto = Gasto::find($gasto);

        try {
            $gasto->first()->delete();
            return redirect()->route('gastos.index')->with('Borrado','Gasto borrado exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('gastos.index')->with('Error','Hubo un problema, vuelta a intentarlo.');
        }
    }
}
