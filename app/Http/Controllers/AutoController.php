<?php

namespace App\Http\Controllers;

use App\Models\Auto;
use App\Models\Condicion;
use App\Models\Marca;
use App\Models\Modelo;
use App\Models\Version;
use App\Models\ciudad;
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
use App\Models\Sucursal;
use App\Models\Dato;
use App\Models\Coincidencia;
use App\Services\ClienteService;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Image;
use Illuminate\Support\Str;



class AutoController extends Controller
{
    private $clienteService;

    public function __construct(ClienteService $clienteService)
    {
        $this->clienteService = $clienteService;
    }


    public function index()
    {
        $autos = Auto::where('estado', 'Activado')->paginate(2);


        return view('admin.autos.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $condiciones = Condicion::all();
        $marcas = Marca::all();
        $modelos = Modelo::all();
        $versiones = Version::orderBy('nombre', 'ASC')->get();
        $ciudades = ciudad::all();
        $provincias = Provincia::all();

        $tipos = Tipo::all();
        $combustibles = Combustible::all();
        $tipomotores = Tipomotor::all();
        $tracciones = Traccion::all();
        $cajaautos = Cajaauto::all();
        $colores = Color::all();
        $tapizados = Tapizado::all();
        $direcciones = Direccion::all();
        $valores = Valor::all();
        $permutas = Permuta::all();
        $sucursales = Sucursal::all();

        return view('admin.autos.create', compact(
            'condiciones',
            'marcas',
            'modelos',
            'versiones',
            'ciudades',
            'provincias',
            'tipos',
            'combustibles',
            'tipomotores',
            'tracciones',
            'cajaautos',
            'colores',
            'tapizados',
            'direcciones',
            'valores',
            'permutas',
            'sucursales'
        ));
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

            'titulo' => 'required',
            'patente' => 'nullable',
            'condicion' => 'required',
            'marca' => 'required',
            'modelo' => 'required',
            'version' => 'required',
            'año' => 'required',
            'precio' => 'nullable',
            'preciocosto' => 'nullable',
            'sucursal' => 'nullable',
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
            'permuta' => 'nullable',
            'vtv' => 'nullable',
            'consignacion' => 'nullable',
            'descripcion' => 'nullable',

        ]);




        try {
            //Creacion
            $auto = Auto::create([
                'titulo' => $data['titulo'],
                'patente' => $data['patente'],
                'condicion' => $data['condicion'],
                'marca_id' => $data['marca'],
                'modelo_id' => $data['modelo'],
                'version' => $data['version'],
                'año' => $data['año'],
                'preciocosto' => $data['preciocosto'],
                'precio' => $data['precio'],
                'sucursal' => $data['sucursal'],
                'ciudad' => $data['ciudad'],
                'provincia' => $data['provincia'],
                'estado' => 'Activado',
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
                'vtv' => $data['vtv'],
                'consignacion' => $data['consignacion'],
                'descripcion' => $data['descripcion'],
            ]);


            $clientes = $this->clienteService->buscarCoincidenciasClientes($data);

            if ($clientes && count($clientes)>0) {
                foreach ($clientes as $cliente) {

                    Coincidencia::create([
                        'cliente_id' => $cliente->id,
                        'auto_id' => $auto->id,
                    ]);
                }

                return redirect()->route('autos.index')->with('Creado', 'Se encontraron coincidencias.');
            }

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
        return view('admin.autos.show', compact('auto'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Auto  $auto
     * @return \Illuminate\Http\Response
     */
    public function edit(Auto $auto)
    {
        $condiciones = Condicion::all();
        $marcas = Marca::all();
        $modelos = Modelo::all();
        $versiones = Version::all();
        $ciudades = ciudad::all();
        $provincias = Provincia::all();

        $tipos = Tipo::all();
        $combustibles = Combustible::all();
        $tipomotores = Tipomotor::all();
        $tracciones = Traccion::all();
        $cajaautos = Cajaauto::all();
        $colores = Color::all();
        $tapizados = Tapizado::all();
        $direcciones = Direccion::all();
        $valores = Valor::all();
        $permutas = Permuta::all();
        $sucursales = Sucursal::all();

        return view('admin.autos.edit', compact(
            'auto',
            'condiciones',
            'marcas',
            'modelos',
            'versiones',
            'ciudades',
            'provincias',
            'tipos',
            'combustibles',
            'tipomotores',
            'tracciones',
            'cajaautos',
            'colores',
            'tapizados',
            'direcciones',
            'valores',
            'permutas',
            'sucursales'
        ));
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

            'titulo' => 'required',
            'patente' => 'nullable',
            'condicion' => 'required',
            'marca' => 'required',
            'modelo' => 'required',
            'version' => 'required',
            'año' => 'required',
            'preciocosto' => 'nullable',
            'precio' => 'nullable',
            'sucursal' => 'nullable',
            'ciudad' => 'required',
            'provincia' => 'required',
            'imagenPortadaNueva' => 'nullable',
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
            'permuta' => 'nullable',
            'vtv' => 'nullable',
            'consignacion' => 'nullable',
            'descripcion' => 'nullable'
        ]);



        //Actualización
        try {
            $auto->titulo = $data['titulo'];
            $auto->patente = $data['patente'];
            $auto->condicion = $data['condicion'];
            $auto->marca_id = $data['marca'];
            $auto->modelo_id = $data['modelo'];
            $auto->version = $data['version'];
            $auto->año = $data['año'];
            $auto->preciocosto = $data['preciocosto'];
            $auto->precio = $data['precio'];
            $auto->sucursal = $data['sucursal'];
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
            $auto->vtv = $data['vtv'];
            $auto->consignacion = $data['consignacion'];
            $auto->descripcion = $data['descripcion'];
            $auto->save();

            return redirect()->route('autos.index')->with('Actualizado', 'Auto actualizado exitosamente.');
        } catch (\Throwable $th) {
            return redirect()->route('autos.index')->with('Error', 'Hubo un problema al actualizar el auto, vuelva a intentarlo.');
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
        try {

            //Elimina el archivo del servidor
            $fotos = $auto->files;

            foreach ($fotos as $foto) {
                Storage::delete($foto->url);
            }

            //Borra de la base de datos
            foreach ($fotos as $foto) {
                DB::delete('delete from files where id =' . $foto->id);
            }

            //borra coincidencia se borra automatico por la relacion de tablas

            //Cambia estado del auto
            $auto->estado = "Desactivado";
            $auto->save();

            //Elimina coincidencia
            $coincidencias = Coincidencia::where('auto_id', $auto->id)->get();

            if ($coincidencias) {
                foreach ($coincidencias as $c) {
                    $c->delete();
                }
            }

            return redirect()->route('autos.index')->with('Borrado', 'El auto se borró exitosamente.');
        } catch (\Throwable $th) {

            return redirect()->route('autos.index')->with('Error', 'Hubo un problema, vuelva a intentarlo.');
        }
    }

    public function pdf(Auto $auto)
    {


        try {


            $dato = Dato::first();
            //return $auto->marca;die();
            $pdf = PDF::loadView('admin.autos.pdf', compact('auto', 'dato'));
            return $pdf->download('vehiculo.pdf');
        } catch (\Throwable $th) {

            return redirect()->route('datos.index')->with('Error', 'Debe configurar los datos generales de la empresa.');
        }
    }
}
