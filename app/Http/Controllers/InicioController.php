<?php

namespace App\Http\Controllers;
use App\Models\Auto;
use App\Models\Condicion;
use App\Models\Marca;
use App\Models\Modelo;
use Illuminate\Contracts\Pagination\Paginator;


use Illuminate\Http\Request;

class InicioController extends Controller
{
    public function index (){

        $autos = Auto::all();
        $marcas = Marca::all();
        $modelos = Modelo::orderBy('nombre','asc')->get();
        $condiciones = Condicion::all();

        return view('welcome',compact('autos','marcas','modelos','condiciones'));

    }

    public function buscador(Request $request){

        $marcas = Marca::all();
        $modelos = Modelo::orderBy('nombre','asc')->get();
        $condiciones = Condicion::all();

        //return $request;

        $marca = $request->marca;
        $modelo = $request->modelo;
        $condicion = $request->condicion;

        $autos =Auto::marca($marca)->modelo($modelo)->condicion($condicion)->paginate(2);
        $total = count($autos);


        return view('lista-de-autos-filtrado',compact('autos','marcas','modelos','condiciones','total'));

        //return "ok";

    }

    public function listadoDeAutos(){

        $autos = Auto::paginate(2);

        $total = count($autos);

        $marcas = Marca::all();
        $modelos = Modelo::orderBy('nombre','asc')->get();
        $condiciones = Condicion::all();

        return view('lista-de-autos',compact('autos','marcas','modelos','condiciones','total'));

    }
}
