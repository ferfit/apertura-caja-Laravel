<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Auto;
use App\Models\Cliente;

class PrecioAuto extends Component
{


    public $auto, $costo, $venta, $ganancia,$carro;


    public function updatedCarro($value){
        $auto = Auto::where('id',$value)->get();
        $this->costo = $auto->first()->preciocosto;
        $this->venta = $auto->first()->precio;
        $this->ganancia = $this->venta - $this->costo;
    }

    public function updatedCosto($value){
        $this->ganancia = $this->venta - $this->costo;
    }
    public function updatedVenta($value){
        $this->ganancia = $this->venta - $this->costo;
    }


    public function render()
    {

        $autos = Auto::all();

        return view('livewire.precio-auto', compact('autos'));


    }
}
