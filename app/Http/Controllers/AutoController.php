<?php

namespace App\Http\Controllers;

use App\Models\Auto;
use App\Models\Condicion;
use App\Models\Marca;
use App\Models\Modelo;
use App\Models\Version;
use App\Models\Ciudad;
use App\Models\Provincia;
use Illuminate\Http\Request;

class AutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.autos.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $condiciones= Condicion::all();
        $marcas= Marca::all();
        $modelos= Modelo::all();
        $versiones= Version::all();
        $ciudades= Ciudad::all();
        $provincias= Provincia::all();

        return view('admin.autos.create',compact('condiciones','marcas','modelos','versiones','ciudades','provincias'));
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
            'condicion' => 'required',
            'marca' => 'required',
            'modelo' => 'required',
            'version' => 'required',
            'año' => 'required',
            'precio' => 'required',
            'precio' => 'required',
            'ciudad' => 'required',
            'provincia' => 'required'
        ]);
        
        try {
            //Creacion 
            Auto::create([
                'condicion' => $data['condicion'],
                'marca' => $data['marca'],
                'modelo' => $data['modelo'],
                'version' => $data['version'],
                'año' => $data['año'],
                'precio' => $data['precio'],
                'ciudad' => $data['ciudad'],
                'provincia' => $data['provincia']
                ]);
    
            //retorno
            return redirect()->route('autos.index')->with('Creado', 'El auto se creó exitosamente.');
          
        } catch (\Throwable $th) {
            return redirect()->route('autos.index')->with('Error', 'Hubo un problema al crear el auto, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function show(Auto $auto)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function edit(Auto $auto)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Auto $auto)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Auto $auto)
    {
        //
    }
}
