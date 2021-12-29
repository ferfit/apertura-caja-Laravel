<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use Illuminate\Http\Request;

class ClienteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.clientes.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.clientes.create');
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
            'celular' => 'required',
            'email' => 'nullable',
            'ciudad' => 'required',
            'provincia' => 'required',
            'nota' => 'required',
            'estado' => 'required'
        ]);
        
        try {
            //Creacion 
            Cliente::create([
                'nombre' => $data['nombre'],
                'celular' => $data['celular'],
                'email' => $data['email'],
                'ciudad' => $data['ciudad'],
                'provincia' => $data['provincia'],
                'nota' => $data['nota'],
                'estado' => $data['estado']
                ]);
    
            //retorno
            return redirect()->route('clientes.index')->with('Creado', 'El cliente se creó exitosamente.');
          
        } catch (\Throwable $th) {
            return redirect()->route('clientes.index')->with('Error', 'Hubo un problema al crear el cliente, vuelta a intentarlo.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function show(Cliente $cliente)
    {
        return view('admin.clientes.show',compact('cliente'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function edit(Cliente $cliente)
    {
        return view('admin.clientes.edit',compact('cliente'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Cliente $cliente)
    {
        //Validación
        $data = request()->validate([
            'nombre' => 'required',
            'celular' => 'required',
            'email' => 'nullable',
            'ciudad' => 'required',
            'provincia' => 'required',
            'nota' => 'required',
            'estado' => 'required'
        ]);

        //Actualización
        try {
            $cliente->nombre = $data['nombre'];
            $cliente->celular = $data['celular'];
            $cliente->email = $data['email'];
            $cliente->ciudad = $data['ciudad'];
            $cliente->provincia = $data['provincia'];
            $cliente->nota = $data['nota'];
            $cliente->estado = $data['estado'];
            $cliente->save();

            return redirect()->route('clientes.index')->with('Actualizado','Cliente actualizado exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('clientes.index')->with('Error','Hubo un problema al actualizar el cliente, vuelva a intentarlo.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cliente $cliente)
    {
        $cliente = Cliente::find($cliente);
        
        try {

            $cliente->first()->delete();
        
            return redirect()->route('clientes.index')->with('Borrado','El cliente se borró exitosamente.');

        } catch (\Throwable $th) {
            
            return redirect()->route('clientes.index')->with('Error','Hubo un problema, vuelva a intentarlo.');

        }
    }
}
