<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gasto extends Model
{
    protected $fillable = ['nombre','monto','auto_id'];

    use HasFactory;

    //Relacion 1:n inversa
    public function auto(){
        return $this->belongsTo('App\Models\Auto');
    }


}
