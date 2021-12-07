<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Venta extends Model
{
    use HasFactory;

    protected $fillable = [
        'cliente',
        'servicio_id',
        'medio_pago',
        'precio',
        'porcentaje',
        'comision_empleado',
        'empleado_id',
        'caja_id'
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
}


