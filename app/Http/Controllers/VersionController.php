<?php

namespace App\Http\Controllers;

use App\Models\Version;
use Illuminate\Http\Request;

class VersionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.versiones.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.versiones.create');
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
            //Crear 
            Version::create([
                'nombre' => $data['nombre']
            ]);

            //Redirección
            return redirect()->route('versiones.index')->with('Creado', 'versión creada exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('versiones.index')->with('Error', 'Hubo un problema al crear la versión, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Version  $version
     * @return \Illuminate\Http\Response
     */
    public function show(Version $version)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Version  $version
     * @return \Illuminate\Http\Response
     */
    public function edit(Version $versione)
    {
        return view('admin.versiones.edit',compact('versione'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Version  $version
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Version $versione)
    {
        //Validación
        $data = request()->validate([
            'nombre' => 'required'
        ]);



        try {
            //Actualiza
            $versione->nombre = $data['nombre'];
            $versione->save();

            //Redirección
            return redirect()->route('versiones.index')->with('Actualizado', 'Versión actualizada exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('versiones.index')->with('Error', 'Hubo un error al actualización la versión, vuelta a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Version  $version
     * @return \Illuminate\Http\Response
     */
    public function destroy(Version $versione)
    {
        $version = Version::find($versione);

        
        
        try {
            $version->first()->delete();
            return redirect()->route('versiones.index')->with('Borrado','versión borrada exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('versiones.index')->with('Error','Hubo un problema, vuelta a intentarlo.');
        }
    }
}
