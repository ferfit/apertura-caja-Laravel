<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Cliente;


class ClienteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = Cliente::create([
            'nombre'=>'Fernando Pereyra',
            'celular'=>'1141774133',
            'email'=>'fer@correo.com',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'nota'=>'busco auto entre 500.000 y 800.000'
        ]);
        $user = Cliente::create([
            'nombre'=>'Victoria Gonzalez',
            'celular'=>'1141774133',
            'email'=>'fer@correo.com',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'nota'=>'busco auto entre 500.000 y 800.000'
        ]);
        $user = Cliente::create([
            'nombre'=>'Sofia Ferreira',
            'celular'=>'1141774133',
            'email'=>'fer@correo.com',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'nota'=>'busco auto entre 500.000 y 800.000'
        ]);
    }
}
