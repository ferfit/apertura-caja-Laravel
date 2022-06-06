<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    protected $fillable = [
        'nombre',
        'celular',
        'email',
        'ciudad',
        'provincia',
        'nota',
        'estado',
        'origencliente',
        'user_id',
        'marca_id',
        'modelo_id',
        'precioEstimado',
        'tipo'
    ];

    use HasFactory;

    //relacion 1 a muchos inversa-----------------------------
    public function marca(){
        return $this->belongsTo('App\Models\Marca');
    }

    public function modelo(){
        return $this->belongsTo('App\Models\Modelo');
    }
    //relacion muchos a muchos-----------------------------
    public function coincidencias()
    {
        return $this->belongsToMany(Coincidencia::class,'coincidencias','cliente_id','auto_id');
    }
}
