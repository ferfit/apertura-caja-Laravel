<?php

namespace App\Http\Controllers;

use App\Models\Modelo;
use Illuminate\Http\Request;

class ModeloController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.modelos.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.modelos.create');
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
            'nombre' => 'required'
        ]);



        try {
            //Crear modelo
            Modelo::create([
                'nombre' => $data['nombre']
            ]);

            //Redirección
            return redirect()->route('modelos.index')->with('Creado', 'Modelo creado exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('modelos.index')->with('Error', 'Hubo un problema al crear el modelo, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Modelo  $modelo
     * @return \Illuminate\Http\Response
     */
    public function show(Modelo $modelo)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Modelo  $modelo
     * @return \Illuminate\Http\Response
     */
    public function edit(Modelo $modelo)
    {
        return view('admin.modelos.edit',compact('modelo'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Modelo  $modelo
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Modelo $modelo)
    {
        //Validación
        $data = request()->validate([
            'nombre' => 'required'
        ]);



        try {
            //Actualiza modelo
            $modelo->nombre = $data['nombre'];
            $modelo->save();

            //Redirección
            return redirect()->route('modelos.index')->with('Actualizado', 'Modelo actualizado exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('modelos.index')->with('Error', 'Hubo un error al actualización el modelo, vuelta a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Modelo  $modelo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Modelo $modelo)
    {
        $modelo = Modelo::find($modelo);

        
        
        try {
            $modelo->first()->delete();
            return redirect()->route('modelos.index')->with('Borrado','Modelo borrado exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('modelos.index')->with('Error','Hubo un problema, vuelta a intentarlo.');
        }
    }
}
