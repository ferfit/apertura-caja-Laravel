<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Auto extends Model
{

    protected $fillable =[
        'condicion',
        'marca',
        'modelo',
        'version',
        'año',
        'precio',
        'preciocosto',
        'ciudad',
        'provincia',
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
}
