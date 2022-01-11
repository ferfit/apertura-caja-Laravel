<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Venta extends Model
{
    use HasFactory;

    protected $fillable = [
        'titulo',
        'cliente_id',
        'auto_id',
        'precio_costo',
        'precio_venta',
        'precio_ganancia'
    ];

    //Relacion 1:n inversa
    public function servicio(){
        return $this->belongsTo('App\Models\Servicio');
    }

    public function empleado(){
        return $this->belongsTo('App\Models\Empleado');
    }

    public function caja(){
        return $this->belongsTo('App\Models\Caja');
    }


    //Relación 1 a 1
    //relación 1 a 1 inversa
    public function auto()
    {
        return $this->belongsTo('App\Models\Auto');
    }
    public function cliente()
    {
        return $this->belongsTo('App\Models\Cliente');
    }

    /* public function auto() {
    return $this->hasOne('App\Models\Auto');

    } */
}


