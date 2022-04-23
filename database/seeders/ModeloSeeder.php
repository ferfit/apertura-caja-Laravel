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
            'nombre'=>'207',
            'marca_id' => 1
        ]);
        $Modelo = Modelo::create([
            'nombre'=>'208',
            'marca_id' => 2
        ]);
        $Modelo = Modelo::create([
            'nombre'=>'Toro',
            'marca_id' => 3
        ]);
        $Modelo = Modelo::create([
            'nombre'=>'A8',
            'marca_id' => 4
        ]);
        $Modelo = Modelo::create([
            'nombre'=>'Palio',
            'marca_id' => 1
        ]);
        $Modelo = Modelo::create([
            'nombre'=>'Focus',
            'marca_id' => 2
        ]);
        $Modelo = Modelo::create([
            'nombre'=>'Gol',
            'marca_id' => 3
        ]);
    }
}
