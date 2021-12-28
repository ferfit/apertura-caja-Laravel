<?php

namespace Database\Seeders;
use App\Models\Color;


use Illuminate\Database\Seeder;

class ColorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Color = Color::create([
            'nombre'=>'Amarillo'
        ]);        
        $Color = Color::create([
            'nombre'=>'Azul'
        ]);  
        $Color = Color::create([
            'nombre'=>'Blanco'
        ]);        
        $Color = Color::create([
            'nombre'=>'Gris'
        ]);  
        $Color = Color::create([
            'nombre'=>'Marron'
        ]);        
        $Color = Color::create([
            'nombre'=>'Negro'
        ]);  
        $Color = Color::create([
            'nombre'=>'Plata'
        ]);        
        $Color = Color::create([
            'nombre'=>'Rojo'
        ]);  
        $Color = Color::create([
            'nombre'=>'Verde'
        ]);        
    }
}
