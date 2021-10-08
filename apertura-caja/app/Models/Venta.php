<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Venta extends Model
{
    use HasFactory;

    //Relacion 1:n inversa
    public function servicio(){
        return $this->belongsTo('App\Models\Servicio');
    }

    public function empleado(){
        return $this->belongsTo('App\Models\Empleado');
    }
}


