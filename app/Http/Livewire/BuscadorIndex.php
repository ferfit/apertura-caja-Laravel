<?php

namespace App\Http\Livewire;
use App\Models\Marca;
use App\Models\Modelo;
use App\Models\Condicion;

use Livewire\Component;

class BuscadorIndex extends Component
{

    public $marcas, $modelos, $condiciones;

    public  $marca;

    public $search;

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
        $marcas = Marca::all();
        return view('livewire.buscador-index');
    }
}
