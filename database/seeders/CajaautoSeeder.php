<?php

namespace Database\Seeders;
use App\Models\Cajaauto;


use Illuminate\Database\Seeder;

class CajaautoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Cajaauto = Cajaauto::create([
            'nombre'=>'Automática'
        ]);        
        $Cajaauto = Cajaauto::create([
            'nombre'=>'Automática/Secuencial'
        ]);  
        $Cajaauto = Cajaauto::create([
            'nombre'=>'Manual'
        ]);  
    }
}
