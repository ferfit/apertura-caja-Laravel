<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Provincia;


class ProvinciaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Provincia = Provincia::create([
            'nombre'=>'Buenos Aires'
        ]);        
        $Provincia = Provincia::create([
            'nombre'=>'Santa Fe'
        ]);  
        $Provincia = Provincia::create([
            'nombre'=>'Mendoza'
        ]);        
        $Provincia = Provincia::create([
            'nombre'=>'Salta'
        ]);  
        $Provincia = Provincia::create([
            'nombre'=>'Jujuy'
        ]); 
    }
}
