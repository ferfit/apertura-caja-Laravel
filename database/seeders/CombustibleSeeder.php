<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Combustible;


class CombustibleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Combustible = Combustible::create([
            'nombre'=>'Diesel'
        ]);        
        $Combustible = Combustible::create([
            'nombre'=>'Eléctrico'
        ]);  
        $Combustible = Combustible::create([
            'nombre'=>'GNC/Nafta'
        ]);        
        $Combustible = Combustible::create([
            'nombre'=>'Nafta'
        ]);  
        $Combustible = Combustible::create([
            'nombre'=>'Híbrido'
        ]);  
    }
}
