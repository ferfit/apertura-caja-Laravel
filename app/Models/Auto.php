<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Auto extends Model
{

    protected $fillable = [
        'condicion',
        'marca',
        'modelo',
        'version',
        'año',
        'precio',
        'preciocosto',
        'ciudad',
        'provincia',
        'estado',
        'tipo',
        'kilometraje',
        'combustible',
        'tipomotor',
        'traccion',
        'cajaauto',
        'color',
        'tapizado',
        'direccion',
        'valor',
        'permuta'
    ];

    use HasFactory;

    //Relacion 1 a muchos
    public function gastos()
    {
        return $this->hasMany('App\Models\Gasto');
    }
    //Relacion 1 a muchos
    public function files()
    {
        return $this->hasMany('App\Models\File');
    }



}
