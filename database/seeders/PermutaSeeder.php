<?php

namespace Database\Seeders;
use App\Models\Permuta;


use Illuminate\Database\Seeder;

class PermutaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Permuta = Permuta::create([
            'nombre'=>'Acepto permuta'
        ]);        
        $Permuta = Permuta::create([
            'nombre'=>'No acepto'
        ]);  

    }
}
