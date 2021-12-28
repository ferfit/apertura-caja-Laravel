<?php

namespace Database\Seeders;
use App\Models\Direccion;


use Illuminate\Database\Seeder;

class DireccionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Direccion = Direccion::create([
            'nombre'=>'Asistida'
        ]);        
        $Direccion = Direccion::create([
            'nombre'=>'Eléctrica'
        ]);  
        $Direccion = Direccion::create([
            'nombre'=>'Electro-hidráulica'
        ]);        
        $Direccion = Direccion::create([
            'nombre'=>'Hidráulica'
        ]);  
        $Direccion = Direccion::create([
            'nombre'=>'Mecánica'
        ]); 
    }
}
