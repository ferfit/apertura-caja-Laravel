<?php

namespace App\Http\Controllers;

use App\Models\Marca;
use Illuminate\Http\Request;

class MarcaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.marcas.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.marcas.create');
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
            Marca::create([
                'nombre' => $data['nombre']
            ]);

            //Redirección
            return redirect()->route('marcas.index')->with('Creado', 'Marca creada exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('marcas.index')->with('Error', 'Hubo un problema al crear la marca, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function show(Marca $marca)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function edit(Marca $marca)
    {
        return view('admin.marcas.edit',compact('marca'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Marca $marca)
    {
        //Validación
        $data = request()->validate([
            'nombre' => 'required'
        ]);



        try {
            //Actualiza modelo
            $marca->nombre = $data['nombre'];
            $marca->save();

            //Redirección
            return redirect()->route('marcas.index')->with('Actualizado', 'marca actualizada exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('marcas.index')->with('Error', 'Hubo un error al actualización la marca, vuelta a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Marca  $marca
     * @return \Illuminate\Http\Response
     */
    public function destroy(Marca $marca)
    {
        try {
            $marca->delete();
            return redirect()->route('marcas.index')->with('Borrado','Marca borrada exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('marcas.index')->with('Error','Hubo un problema, vuelta a intentarlo.');
        }
    }
}
