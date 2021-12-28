<?php

namespace Database\Seeders;
use App\Models\Tipo;


use Illuminate\Database\Seeder;

class TipoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Tipo = Tipo::create([
            'nombre'=>'Auto/Camioneta'
        ]);        
        $Tipo = Tipo::create([
            'nombre'=>'Camión'
        ]);  
        $Tipo = Tipo::create([
            'nombre'=>'Cuatriciclo'
        ]);        
        $Tipo = Tipo::create([
            'nombre'=>'Moto'
        ]);  
        $Tipo = Tipo::create([
            'nombre'=>'Náutica'
        ]);        
        $Tipo = Tipo::create([
            'nombre'=>'Otros'
        ]);  
    }
}
