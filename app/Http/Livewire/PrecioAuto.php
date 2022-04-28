<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Auto;
use App\Models\Cliente;

class PrecioAuto extends Component
{


    public $auto, $costo='0', $venta='0', $ganancia='0',$carro;


    public function updatedCarro($value){
        $auto = Auto::where('id',$value)->get();
        $this->costo = $auto->first()->preciocosto;
        $this->venta = $auto->first()->precio;
        $this->ganancia = $this->venta - $this->costo;
    }

    public function updatedCosto($value){
        if($value>0){
            $this->ganancia = $this->venta - $this->costo;
        }
    }
    public function updatedVenta($value){
        if($value  > 0){
            $this->ganancia = $this->venta - $this->costo;
        }
    }


    public function render()
    {

        $autos = Auto::where('estado','Activado')->get();

        return view('livewire.precio-auto', compact('autos'));


    }
}
