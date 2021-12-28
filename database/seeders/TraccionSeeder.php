<?php

namespace Database\Seeders;
use App\Models\Traccion;


use Illuminate\Database\Seeder;

class TraccionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Traccion = Traccion::create([
            'nombre'=>'4x2'
        ]);        
        $Traccion = Traccion::create([
            'nombre'=>'4x4'
        ]);  
        $Traccion = Traccion::create([
            'nombre'=>'Delantera'
        ]);        
        $Traccion = Traccion::create([
            'nombre'=>'Integral'
        ]);  
        $Traccion = Traccion::create([
            'nombre'=>'Trasera'
        ]);   
    }     
        
}
