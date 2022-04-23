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
use App\Models\Dato;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\DB;
use Image;
use Illuminate\Support\Str;



class AutoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $autos = Auto::where('estado','Activado')->paginate(2);


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
            'permutas'
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

            'patente' => 'required',
            'condicion' => 'required',
            'marca' => 'required',
            'modelo' => 'required',
            'version' => 'required',
            'año' => 'required',
            'precio' => 'required',
            'preciocosto' => 'required',
            'ciudad' => 'required',
            'provincia' => 'required',
            'imagenPortada' => 'nullable|mimes:jpg,png,jpeg',
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
            'descripcion' => 'nullable',

        ]);

        //obtenemos la ruta de la imagen y la almacenamos con el metodo "store"
        if(request('imagenPortada')){

            $nombre = Str::random(20).$request->file('imagenPortada')->getClientOriginalName();

            $ruta = storage_path().'/app/public/autos/'.$nombre;

           Image::make($data['imagenPortada'])
            ->resize(500, null, function ($constraint) {
                $constraint->aspectRatio();
            })
            ->save($ruta);

            $ruta_imagenPortada = '\autos/'.$nombre;

        } else {
            $ruta_imagenPortada = null;
        }



        try {
            //Creacion
            $auto = Auto::create([
                'patente' => $data['patente'],
                'condicion' => $data['condicion'],
                'marca_id' => $data['marca'],
                'modelo_id' => $data['modelo'],
                'version' => $data['version'],
                'año' => $data['año'],
                'preciocosto' => $data['preciocosto'],
                'precio' => $data['precio'],
                'ciudad' => $data['ciudad'],
                'provincia' => $data['provincia'],
                'estado' => 'Activado',
                'imagenPortada' => $ruta_imagenPortada,
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
                'descripcion' => $data['descripcion'],
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
            'permutas'
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
            'condicion' => 'required',
            'marca' => 'required',
            'modelo' => 'required',
            'version' => 'required',
            'año' => 'required',
            'preciocosto' => 'required',
            'precio' => 'required',
            'ciudad' => 'required',
            'provincia' => 'required',
            'imagenPortada' => 'nullable',
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
            'descripcion' => 'nullable'
        ]);

        if(request('imagenPortadaNueva')){

            $nombre = Str::random(20).$request->file('imagenPortadaNueva')->getClientOriginalName();

            $ruta = storage_path().'/app/public/autos/'.$nombre;

           Image::make($data['imagenPortadaNueva'])
            ->resize(500, null, function ($constraint) {
                $constraint->aspectRatio();
            })
            ->save($ruta);

            $ruta_imagenPortada = '\autos/'.$nombre;

        } else {
            $ruta_imagenPortada= $auto->imagenPortada;
        }


        //Actualización
        try {
            $auto->condicion = $data['condicion'];
            $auto->marca_id = $data['marca'];
            $auto->modelo_id = $data['modelo'];
            $auto->version = $data['version'];
            $auto->año = $data['año'];
            $auto->preciocosto = $data['preciocosto'];
            $auto->precio = $data['precio'];
            $auto->ciudad = $data['ciudad'];
            $auto->provincia = $data['provincia'];
            $auto->tipo = $data['tipo'];
            $auto->imagenPortada = $ruta_imagenPortada;
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

            //elimina la imagen de portada
            Storage::delete('public/'.$auto->imagenPortada);

            //Eliminar el archivo del servidor
            $fotos = $auto->files;

            foreach ($fotos as $foto) {
                Storage::delete($foto->url);
            }

            //Borra de la base de datos
            foreach ($fotos as $foto) {
                DB::delete('delete from files where id ='.$foto->id);
            }



            //Cambia estado del auto
            $auto->estado = 'Desactivado';
            $auto->save();



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
