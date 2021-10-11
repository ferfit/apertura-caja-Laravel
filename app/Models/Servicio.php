<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Servicio extends Model
{
    use HasFactory;

    protected $fillable = [
        'nombre'
    ];

    //1 a n

    public function ventas()
    {
        return $this->hasMany('App\Models\Venta');
    }
}
