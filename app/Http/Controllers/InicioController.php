<?php

namespace App\Http\Controllers;

use App\Models\Auto;
use App\Models\Condicion;
use App\Models\Marca;
use App\Models\Modelo;



use Illuminate\Http\Request;

class InicioController extends Controller
{
    public function index()
    {

        $autos = Auto::all();
        $marcas = Marca::all();
        $modelos = Modelo::orderBy('nombre', 'asc')->get();
        $condiciones = Condicion::all();

        return view('welcome', compact('autos', 'marcas', 'modelos', 'condiciones'));
    }

    public function buscador(Request $request)
    {

        $marcas = Marca::all();
        $modelos = Modelo::orderBy('nombre', 'asc')->get();
        $condiciones = Condicion::all();

        $marca = $request->marca;
        $modelo = $request->modelo;
        $condicion = $request->condicion;

        $autos = Auto::where('estado','Activado')->marca($marca)->modelo($modelo)->condicion($condicion)->paginate(20);
        $autos->appends(['marca' => $marca, 'modelo' => $modelo, 'condicion' => $condicion]);

        return view('lista-de-autos', compact('autos', 'marcas', 'modelos', 'condiciones'));
    }

    public function contacto()
    {
        return view('contacto');
    }

    public function verAuto(Auto $auto){
        return view('ver-auto',compact('auto'));
    }
}
