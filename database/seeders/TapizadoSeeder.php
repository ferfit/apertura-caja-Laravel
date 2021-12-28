<?php

namespace Database\Seeders;
use App\Models\Tapizado;


use Illuminate\Database\Seeder;

class TapizadoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Tapizado = Tapizado::create([
            'nombre'=>'Alcántara'
        ]);        
        $Tapizado = Tapizado::create([
            'nombre'=>'Cuero'
        ]);  
        $Tapizado = Tapizado::create([
            'nombre'=>'Cuero y alcántara'
        ]);        
        $Tapizado = Tapizado::create([
            'nombre'=>'Cuero y tela'
        ]);  
        $Tapizado = Tapizado::create([
            'nombre'=>'Tela'
        ]);   
    }
}
