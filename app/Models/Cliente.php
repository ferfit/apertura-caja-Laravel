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
        'user_id'
    ];

    use HasFactory;
}
