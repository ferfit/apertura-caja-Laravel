<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Condicion;


class CondicionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $condicion = Condicion::create([
            'nombre'=>'0 km'
        ]);        
        $condicion = Condicion::create([
            'nombre'=>'Usado'
        ]);        
    }
}
