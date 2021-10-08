<?php

namespace App\Http\Controllers;

use App\Models\Servicio;
use Illuminate\Http\Request;

class ServicioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $servicios = Servicio::all();

        return view('admin.servicios.index',compact('servicios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.servicios.create');
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

        //Crea servicios
        try {
            Servicio::create([
                'nombre' => $data['nombre']
            ]);

            //Redirección
            return redirect()->route('servicios.index')->with('Creado','Servicio creado exitosamente.');

        } catch (\Throwable $th) {
            //Redirección
            return redirect()->route('servicios.index')->with('Error','Hubo un problema al crear el servicio, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Servicio  $servicio
     * @return \Illuminate\Http\Response
     */
    public function show(Servicio $servicio)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Servicio  $servicio
     * @return \Illuminate\Http\Response
     */
    public function edit(Servicio $servicio)
    {
        return view('admin.servicios.edit',compact('servicio'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Servicio  $servicio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Servicio $servicio)
    {
        //Validación
        $data = request()->validate([
            'nombre' => 'required'
        ]);

        //Actualización
        try {
            $servicio->nombre = $data['nombre'];
            $servicio->save();

            return redirect()->route('servicios.index')->with('Actualizado','Servicio actualizado exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('servicios.index')->with('Error','Hubo un problema al actualizar el servicio, vuelva a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Servicio  $servicio
     * @return \Illuminate\Http\Response
     */
    public function destroy(Servicio $servicio)
    {
        $servicio = Servicio::find($servicio);
        
        try {

            $servicio->first()->delete();
        
            return redirect()->route('servicios.index')->with('Borrado','El servicio se borro exitosamente.');

        } catch (\Throwable $th) {
            
            return redirect()->route('servicios.index')->with('Error','Hubo un problema, vuelta a intentarlo.');

        }
        

    }
}
