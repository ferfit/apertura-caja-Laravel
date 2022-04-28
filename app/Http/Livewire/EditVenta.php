<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Auto;
use App\Models\Venta;

class EditVenta extends Component
{

    public $venta, $autocomprado, $precio_costo, $precio_venta,$precio_ganancia;

    public function mount(Venta $venta){

        $this->precio_costo = $venta->precio_costo;
        $this->precio_venta = $venta->precio_venta;
        $this->precio_ganancia = $venta->precio_venta-$venta->precio_costo;
    }

    public function updatedAutocomprado($value){
        $auto = Auto::where('id',$value)->get();
        $this->precio_costo = $auto->first()->preciocosto;
        $this->precio_venta = $auto->first()->precio;
        $this->precio_ganancia = $this->precio_venta - $this->precio_costo;
    }

      public function updatedPrecioCosto($value){
          if($value>0){
            $this->precio_ganancia = $this->precio_venta - $this->precio_costo;
          }
    }

    public function updatedPrecioVenta($value){
        if($value>0){
            $this->precio_ganancia = $this->precio_venta - $this->precio_costo;
        }
    }


    public function render()
    {
        $autos = Auto::where('estado','Activado')->get();

        return view('livewire.edit-venta', compact('autos'));

    }
}
