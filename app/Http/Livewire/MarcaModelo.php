<?php

namespace App\Http\Livewire;
use App\Models\Marca;
use App\Models\Modelo;
use App\Models\Auto;

use Livewire\Component;

class MarcaModelo extends Component
{
    public $marcas , $modelos;

    public  $marca='';
    public  $modelo='';

    public $auto;




    public function mount(Auto $auto){
        $this->marcas = Marca::all();
        $this->modelos = Modelo::all();
        $this->auto = $auto;
    }

    public function updatedMarca($value){
        $this->modelos = Modelo::where('marca_id',$value)->get();
    }

    public function render()
    {
        return view('livewire.marca-modelo');
    }
}
