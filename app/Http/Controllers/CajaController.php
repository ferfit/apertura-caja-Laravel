<?php

namespace App\Http\Controllers;

use App\Models\Caja;
use Illuminate\Http\Request;

class CajaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cajas = Caja::orderBy('id', 'DESC')->get();

        return view('admin.cajas.index', compact('cajas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.cajas.create');
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
            'efectivo_caja' => 'required'
        ]);

        //Crear caja
        try {
            Caja::create([
                'nombre' => $data['nombre'],
                'efectivo_caja' => $data['efectivo_caja'],
                'estado' => 'abierto'
            ]);

            //Redirección
            return redirect()->route('cajas.index')->with('Creado', 'Apertura de caja con exito.');
        } catch (\Throwable $th) {
            //Redirección
            return redirect()->route('cajas.index')->with('Error', 'Hubo un problema en la apertura de caja, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Caja  $caja
     * @return \Illuminate\Http\Response
     */
    public function show(Caja $caja)
    {
        return view('admin.cajas.show',compact('caja'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Caja  $caja
     * @return \Illuminate\Http\Response
     */
    public function edit(Caja $caja)
    {
        return view('admin.cajas.edit', compact('caja'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Caja  $caja
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Caja $caja)
    {
        $hoy = today();

        try {
            $caja->estado = 'cerrado';
            $caja->cierre = $hoy;


            $caja->save();

            return redirect()->route('cajas.index')->with('Actualizado','Caja cerrada con exito.');
            
        } catch (\Throwable $th) {
            
            return redirect()->route('cajas.index')->with('Error','Hubo un problema al intentar cerrar la caja, vuelta a intentarlo.');
        }
    }
    
    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Caja  $caja
     * @return \Illuminate\Http\Response
     */
    public function destroy(Caja $caja)
    {
        try {
            $caja = Caja::find($caja);
            $caja->first->delete();
        
            return redirect()->route('cajas.index')->with('Borrado','Caja eliminada con exito.');
            
        } catch (\Throwable $th) {
            
            return redirect()->route('cajas.index')->with('Error','Hubo un problema, vuelva a intentarlo.');
        }
        
    }
}
