<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Models\Empleado;
use PhpParser\Node\Stmt\TryCatch;

class EmpleadoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $empleados = Empleado::orderBy('id','DESC')->paginate(10);
        return view('admin.empleados.index', compact('empleados'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.empleados.create');
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
            //Crear empleado
            Empleado::create([
                'nombre' => $data['nombre']
            ]);

            //Redirección
            return redirect()->route('empleados.index')->with('ok', 'Empleado creado exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('empleados.index')->with('error', 'Hubo un problema al crear el empleado, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function show(Empleado $empleado)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function edit(Empleado $empleado)
    {
        return view('admin.empleados.edit',compact('empleado'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Empleado $empleado)
    {
        //Validación 
        $data = request()->validate([
            'nombre' => 'required'
        ]);

        try {
            //Actualizar empleado
            $empleado->nombre = $data['nombre'];
            $empleado->save();
            
            //Redirección
            return redirect()->route('empleados.index')->with('ok', 'Empleado actualizado exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('empleados.index')->with('error', 'Hubo un error al actualización el empleado, vuelta a intentarlo.');
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Empleado  $empleado
     * @return \Illuminate\Http\Response
     */
    public function destroy(Empleado $empleado)
    {
        $empleado = Empleado::find($empleado);

        
        
        try {
            $empleado->first()->delete();
            return redirect()->route('empleados.index')->with('ok','Empleado borrado exitosamente.');

        } catch (\Throwable $th) {
            return redirect()->route('empleados.index')->with('error','Hubo un problema, vuelta a intentarlo.');
        }
    }
}
