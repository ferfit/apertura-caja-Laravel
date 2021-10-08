<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
    use HasFactory;

    protected $fillable = [
        'nombre'
    ];

    //Relación 1 a n
    public function ventas()
    {
        $this->hasMany('App\Models\Venta');
    }
}
