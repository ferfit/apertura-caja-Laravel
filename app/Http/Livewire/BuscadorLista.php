<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Marca;
use App\Models\Modelo;
use App\Models\Condicion;

class BuscadorLista extends Component
{
    public $marcas, $modelos, $condiciones;

    public  $marca;


    public function mount(){
        $this->marcas = Marca::all();
        $this->modelos = Modelo::all();
        $this->condiciones = Condicion::all();
    }

    public function updatedMarca($value){
        $this->modelos = Modelo::where('marca_id',$value)->get();
    }


    public function render()
    {
        return view('livewire.buscador-lista');
    }
}
