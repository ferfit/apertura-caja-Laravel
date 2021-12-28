<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Modelo;

class ModeloSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Modelo = Modelo::create([
            'nombre'=>'207'
        ]);        
        $Modelo = Modelo::create([
            'nombre'=>'208'
        ]);  
        $Modelo = Modelo::create([
            'nombre'=>'Toro'
        ]);        
        $Modelo = Modelo::create([
            'nombre'=>'A8'
        ]);  
        $Modelo = Modelo::create([
            'nombre'=>'Palio'
        ]);        
        $Modelo = Modelo::create([
            'nombre'=>'Focus'
        ]);  
        $Modelo = Modelo::create([
            'nombre'=>'Gol'
        ]); 
    }
}
