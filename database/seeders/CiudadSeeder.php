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
            'nombre'=>'Avellaneda'
        ]);
        $Ciudad = Ciudad::create([
            'nombre'=>'Vera'
        ]);
        $Ciudad = Ciudad::create([
            'nombre'=>'Romang'
        ]);
        $Ciudad = Ciudad::create([
            'nombre'=>'Romang'
        ]);
        $Ciudad = Ciudad::create([
            'nombre'=>'Malabrigo'
        ]);
        $Ciudad = Ciudad::create([
            'nombre'=>'Arroyo Ceibal'
        ]);
        $Ciudad = Ciudad::create([
            'nombre'=>'Berna'
        ]);
        $Ciudad = Ciudad::create([
            'nombre'=>'Margarita'
        ]);
        $Ciudad = Ciudad::create([
            'nombre'=>'Guadalupe Norte'
        ]);
    }
}
