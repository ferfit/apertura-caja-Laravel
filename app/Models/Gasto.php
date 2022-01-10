<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gasto extends Model
{
    protected $fillable = ['nombre','caja_id','monto'];
    use HasFactory;


    //1 a muchos inversa
    public function caja(){
        return $this->belongsTo('App\Models\Caja');
    }

}
