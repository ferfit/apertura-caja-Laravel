<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    protected $fillable = ['url','auto_id'];

    use HasFactory;

    //Relacion 1:n inversa
    public function auto(){
        return $this->belongsTo('App\Models\Auto');
    }
}
