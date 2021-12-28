<?php

namespace App\Http\Controllers;

use App\Models\Auto;
use App\Models\Condicion;
use App\Models\Marca;
use App\Models\Modelo;
use App\Models\Version;
use App\Models\Ciudad;
use App\Models\Provincia;
use App\Models\Tipo;
use App\Models\Combustible;
use App\Models\Tipomotor;
use App\Models\Traccion;
use App\Models\Cajaauto;
use App\Models\Color;
use App\Models\Tapizado;
use App\Models\Direccion;
use App\Models\Valor;
use App\Models\Permuta;
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

        $tipos= Tipo::all();
        $combustibles= Combustible::all();
        $tipomotores= Tipomotor::all();
        $tracciones= Traccion::all();
        $cajaautos= Cajaauto::all();
        $colores= Color::all();
        $tapizados= Tapizado::all();
        $direcciones= Direccion::all();
        $valores= Valor::all();
        $permutas= Permuta::all();

        return view('admin.autos.create',compact(   'condiciones','marcas','modelos','versiones','ciudades','provincias',
                                                    'tipos','combustibles','tipomotores','tracciones','cajaautos','colores','tapizados','direcciones',
                                                    'valores','permutas' ));
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
            'provincia' => 'required',
            'tipo' => 'nullable',
            'kilometraje' => 'nullable',
            'combustible' => 'nullable',
            'tipomotor' => 'nullable',
            'traccion' => 'nullable',
            'cajaauto' => 'nullable',
            'color' => 'nullable',
            'tapizado' => 'nullable',
            'direccion' => 'nullable',
            'valor' => 'nullable',
            'permuta' => 'nullable'
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
                'provincia' => $data['provincia'],
                'tipo' => $data['tipo'],
                'kilometraje' => $data['kilometraje'],
                'combustible' => $data['combustible'],
                'tipomotor' => $data['tipomotor'],
                'traccion' => $data['traccion'],
                'cajaauto' => $data['cajaauto'],
                'color' => $data['color'],
                'tapizado' => $data['tapizado'],
                'direccion' => $data['direccion'],
                'valor' => $data['valor'],
                'permuta' => $data['permuta'],
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
        $condiciones= Condicion::all();
        $marcas= Marca::all();
        $modelos= Modelo::all();
        $versiones= Version::all();
        $ciudades= Ciudad::all();
        $provincias= Provincia::all();

        $tipos= Tipo::all();
        $combustibles= Combustible::all();
        $tipomotores= Tipomotor::all();
        $tracciones= Traccion::all();
        $cajaautos= Cajaauto::all();
        $colores= Color::all();
        $tapizados= Tapizado::all();
        $direcciones= Direccion::all();
        $valores= Valor::all();
        $permutas= Permuta::all();

        return view('admin.autos.edit',compact( 'auto','condiciones','marcas','modelos','versiones','ciudades','provincias',
                                                'tipos','combustibles','tipomotores','tracciones','cajaautos','colores','tapizados','direcciones',
                                                'valores','permutas'));
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
            'provincia' => 'required',
            'tipo' => 'nullable',
            'kilometraje' => 'nullable',
            'combustible' => 'nullable',
            'tipomotor' => 'nullable',
            'traccion' => 'nullable',
            'cajaauto' => 'nullable',
            'color' => 'nullable',
            'tapizado' => 'nullable',
            'direccion' => 'nullable',
            'valor' => 'nullable',
            'permuta' => 'nullable'
        ]);

        //Actualización
        try {
            $auto->condicion = $data['condicion'];
            $auto->marca = $data['marca'];
            $auto->modelo = $data['modelo'];
            $auto->version = $data['version'];
            $auto->año = $data['año'];
            $auto->precio = $data['precio'];
            $auto->ciudad = $data['ciudad'];
            $auto->provincia = $data['provincia'];
            $auto->tipo = $data['tipo'];
            $auto->kilometraje = $data['kilometraje'];
            $auto->combustible = $data['combustible'];
            $auto->tipomotor = $data['tipomotor'];
            $auto->traccion = $data['traccion'];
            $auto->cajaauto = $data['cajaauto'];
            $auto->color = $data['color'];
            $auto->tapizado = $data['tapizado'];
            $auto->direccion = $data['direccion'];
            $auto->valor = $data['valor'];
            $auto->permuta = $data['permuta'];
            $auto->save();

            return redirect()->route('autos.index')->with('Actualizado','Auto actualizado exitosamente.');
            
        } catch (\Throwable $th) {
            return redirect()->route('autos.index')->with('Error','Hubo un problema al actualizar el auto, vuelva a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function destroy(Auto $auto)
    {
        $auto = Auto::find($auto);
        
        try {

            $auto->first()->delete();
        
            return redirect()->route('autos.index')->with('Borrado','El auto se borró exitosamente.');

        } catch (\Throwable $th) {
            
            return redirect()->route('autos.index')->with('Error','Hubo un problema, vuelva a intentarlo.');

        }
    }
}
