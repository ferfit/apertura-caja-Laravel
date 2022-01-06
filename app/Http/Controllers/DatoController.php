<?php

namespace App\Http\Controllers;

use App\Models\Dato;
use Illuminate\Http\Request;

class DatoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $datos = Dato::all();

        return view('admin.datos.index',compact('datos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.datos.create');
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
            'telefonofijo' => 'required',
            'telefonowhatsapp' => 'required',
            'direccion' => 'required',
            'email' => 'required'
        ]);

        try {
            //Creacion
            Dato::create([
                'nombre' => $data['nombre'],
                'telefonofijo' => $data['telefonofijo'],
                'telefonowhatsapp' => $data['telefonowhatsapp'],
                'direccion' => $data['direccion'],
                'email' => $data['email']

            ]);

            //retorno
            return redirect()->route('datos.index')->with('Creado', 'Los datos se guardaron exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('datos.index')->with('Error', 'Hubo un problema al guardar los datos, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Dato  $dato
     * @return \Illuminate\Http\Response
     */
    public function show(Dato $dato)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Dato  $dato
     * @return \Illuminate\Http\Response
     */
    public function edit(Dato $dato)
    {
        return view('admin.datos.edit',compact('dato'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Dato  $dato
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Dato $dato)
    {
        //Validación
        $data = request()->validate([
            'nombre' => 'required',
            'telefonofijo' => 'required',
            'telefonowhatsapp' => 'required',
            'direccion' => 'required',
            'email' => 'required'
        ]);

        //Actualización
        try {

            $dato->nombre = $data['nombre'];
            $dato->telefonofijo = $data['telefonofijo'];
            $dato->telefonowhatsapp = $data['telefonowhatsapp'];
            $dato->direccion = $data['direccion'];
            $dato->email = $data['email'];
            $dato->save();

            return redirect()->route('datos.index')->with('Actualizado','Datos actualizados exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('datos.index')->with('Error','Hubo un problema al actualizar los datos, vuelva a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Dato  $dato
     * @return \Illuminate\Http\Response
     */
    public function destroy(Dato $dato)
    {
        //
    }
}
