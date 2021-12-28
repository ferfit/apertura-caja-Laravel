<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Valor;


class ValorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Valor = Valor::create([
            'nombre'=>'Fijo'
        ]);        
        $Valor = Valor::create([
            'nombre'=>'Negociable'
        ]);  
    }
}
