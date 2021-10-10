<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Caja extends Model
{
    use HasFactory;


    //Relación 1 a n
    public function ventas()
    {
        return $this->hasMany('App\Models\Venta');
    }
}
