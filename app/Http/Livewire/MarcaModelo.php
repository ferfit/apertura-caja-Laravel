<?php

namespace App\Http\Livewire;
use App\Models\Marca;
use App\Models\Modelo;
use App\Models\Auto;
use App\Models\Cliente;

use Livewire\Component;

class MarcaModelo extends Component
{
    public $marcas , $modelos;

    public  $marca='';
    public  $modelo='';

    public $auto;

    public $cliente;




    public function mount(Auto $auto,Cliente $cliente){
        $this->marcas = Marca::all();
        $this->modelos = Modelo::all();
        $this->auto = $auto;
        $this->cliente = $cliente;
    }

    public function updatedMarca($value){
        $this->modelos = Modelo::where('marca_id',$value)->get();
    }

    public function render()
    {
        return view('livewire.marca-modelo');
    }
}
