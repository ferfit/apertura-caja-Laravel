<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dato extends Model
{
    protected $fillable = [
        'nombre',
        'telefonofijo',
        'telefonowhatsapp',
        'direccion',
        'email'
    ];

    use HasFactory;
}
