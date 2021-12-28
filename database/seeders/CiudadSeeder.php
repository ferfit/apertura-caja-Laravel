<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Ciudad;


class CiudadSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Ciudad = Ciudad::create([
            'nombre'=>'Reconquista'
        ]);        
        $Ciudad = Ciudad::create([
            'nombre'=>'Tigre'
        ]);  
        $Ciudad = Ciudad::create([
            'nombre'=>'Godoz Cruz'
        ]);        
        $Ciudad = Ciudad::create([
            'nombre'=>'San Fernando'
        ]); 
    }
}
