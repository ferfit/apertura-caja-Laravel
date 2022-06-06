<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Marca extends Model
{
    protected $fillable=['nombre'];
    use HasFactory;

    //Relacion 1 a muchos
    public function autos()
    {
        return $this->hasMany('App\Models\Auto');
    }
    public function clientes()
    {
        return $this->hasMany('App\Models\Auto');
    }


}
