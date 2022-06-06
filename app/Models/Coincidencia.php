<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Coincidencia extends Model
{
    use HasFactory;

    protected $fillable = ['cliente_id','auto_id'];

    public function clientes()
    {
        return $this->belongsToMany(Cliente::class,'coincidencias','id');
    }

    public function autos()
    {
        return $this->belongsToMany(Auto::class,'coincidencias','id');
    }
}
