<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Auto extends Model
{

    protected $fillable = [
        'patente',
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
        'imagenPortada',
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
        'permuta',
        'descripcion'

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

    //Query Scope

    public function scopeMarca($query,$marca)
    {
        if($marca) return $query->where('marca','=',$marca);
    }

    public function scopeModelo($query,$modelo)
    {
        if($modelo) return $query->where('modelo','=',$modelo);
    }

    public function scopeCondicion($query,$condicion)
    {
        if($condicion) return $query->where('condicion','=',$condicion);
    }



}
