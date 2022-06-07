<?php

namespace App\Http\Controllers;

use App\Services\AutoService;
use App\Models\Cliente;
use App\Models\Marca;
use App\Models\Modelo;
use App\Models\Tipo;
use App\Models\Coincidencia;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;




class ClienteController extends Controller
{
    private $autoService;

    public function __construct(AutoService $autoService)
    {
        $this->autoService = $autoService;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $coincidencias = count(Coincidencia::all());

        return view('admin.clientes.index', compact('coincidencias'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $marcas = Marca::all();
        $modelos = Modelo::all();
        $tipos = Tipo::all();

        return view('admin.clientes.create', compact('marcas', 'modelos', 'tipos'));
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
            'estado' => 'required',
            'origencliente' => 'required',
            'marca' => 'nullable',
            'modelo' => 'nullable',
            'precioEstimado' => 'nullable',
            'tipo' => 'nullable',
        ]);



        /*try {*/
        //Creacion
        if ($data['estado'] == 'compra') {
            $cliente = Cliente::create([
                'nombre' => $data['nombre'],
                'celular' => $data['celular'],
                'email' => $data['email'],
                'ciudad' => $data['ciudad'],
                'provincia' => $data['provincia'],
                'nota' => $data['nota'],
                'estado' => $data['estado'],
                'origencliente' => $data['origencliente'],
                'estadocliente' => 'Activado',
                'user_id' => auth()->user()->id,
                'marca_id' => $data['marca'],
                'modelo_id' => $data['modelo'],
                'precioEstimado' => $data['precioEstimado'],
                'tipo' => $data['tipo']
            ]);
        } else {
            $cliente = Cliente::create([
                'nombre' => $data['nombre'],
                'celular' => $data['celular'],
                'email' => $data['email'],
                'ciudad' => $data['ciudad'],
                'provincia' => $data['provincia'],
                'nota' => $data['nota'],
                'estado' => $data['estado'],
                'origencliente' => $data['origencliente'],
                'estadocliente' => 'Activado',
                'user_id' => auth()->user()->id,
                'marca_id' => null,
                'modelo_id' => null,
                'precioEstimado' => null,
                'tipo' => null
            ]);
        }

        //Buscar coincidencias
        if ($data['estado'] == 'compra') {

            $autos =  $this->autoService->buscarCoincidencias($data);

            if ($autos && count($autos) > 0) {

                foreach ($autos as $auto) {

                    Coincidencia::create([
                        'cliente_id' => $cliente->id,
                        'auto_id' => $auto->id,
                    ]);
                }

                return redirect()->route('clientes.index')->with('Creado-Coincidencias', 'Se encontraron coincidencias.');
            }

            return redirect()->route('clientes.index')->with('Creado', 'El cliente se creó exitosamente.');
        }

        //retorno

        /*} catch (\Throwable $th) {
            return redirect()->route('clientes.index')->with('Error', 'Hubo un problema al crear el cliente, vuelta a intentarlo.');
        }*/
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function show(Cliente $cliente)
    {
        return view('admin.clientes.show', compact('cliente'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Cliente  $cliente
     * @return \Illuminate\Http\Response
     */
    public function edit(Cliente $cliente)
    {
        $marcas = Marca::all();
        $modelos = Modelo::all();
        $tipos = Tipo::all();

        return view('admin.clientes.edit', compact('cliente', 'marcas', 'modelos', 'tipos'));
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
            'estado' => 'required',
            'origencliente' => 'required',
            'marca' => 'nullable',
            'modelo' => 'nullable',
            'precioEstimado' => 'nullable',
            'tipo' => 'nullable',
        ]);

        //return $data;


        try {
            $cliente->nombre = $data['nombre'];
            $cliente->celular = $data['celular'];
            $cliente->email = $data['email'];
            $cliente->ciudad = $data['ciudad'];
            $cliente->provincia = $data['provincia'];
            $cliente->nota = $data['nota'];
            $cliente->estado = $data['estado'];
            $cliente->origencliente = $data['origencliente'];

            if ($data['estado'] == 'venta') {
                $cliente->marca_id =  null;
                $cliente->modelo_id =  null;
                $cliente->precioEstimado =  null;
                $cliente->tipo =  null;
            } else {
                $cliente->marca_id = $data['marca'];
                $cliente->modelo_id = $data['modelo'];
                $cliente->precioEstimado = $data['precioEstimado'];
                $cliente->tipo = $data['tipo'];
            }

            $cliente->save();



            return redirect()->route('clientes.index')->with('Actualizado', 'Cliente actualizado exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('clientes.index')->with('Error', 'Hubo un problema al actualizar el cliente, vuelva a intentarlo.');
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


        /*try {*/

        //Cambia estado del auto
        $cliente->estadocliente = 'Desactivado';
        $cliente->save();

        //Elimina coincidencias
        $coincidencias = Coincidencia::where('cliente_id', $cliente->id)->get();

        if ($coincidencias) {
            foreach ($coincidencias as $c) {
                $c->delete();
            }
        }

        return redirect()->route('clientes.index')->with('Borrado', 'El cliente se borró exitosamente.');
        /*} catch (\Throwable $th) {

            return redirect()->route('clientes.index')->with('Error', 'Hubo un problema, vuelva a intentarlo.');
        }*/
    }
}
