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
            'estado'=>'compra',
            'nota'=>'busco auto entre 500.000 y 800.000',
            'origencliente'=>'facebook',
            'user_id' => 1
        ]);
        $user = Cliente::create([
            'nombre'=>'Victoria Gonzalez',
            'celular'=>'1141774133',
            'email'=>'fer@correo.com',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'estado'=>'venta',
            'nota'=>'busco auto entre 500.000 y 800.000',
            'origencliente'=>'facebook',
            'user_id' => 1
        ]);
        $user = Cliente::create([
            'nombre'=>'Sofia Ferreira',
            'celular'=>'1141774133',
            'email'=>'fer@correo.com',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'estado'=>'compra',

            'nota'=>'busco auto entre 500.000 y 800.000',
            'origencliente'=>'facebook',
            'user_id' => 2
        ]);
        $user = Cliente::create([
            'nombre'=>'Diez Jose Luis',
            'celular'=>'692669',
            'email'=>'',
            'ciudad'=>'Reconquista',
            'provincia'=>'Santa Fe',
            'estado'=>'compra',
            'nota'=>'chata 11 a 15 4x4 mejor si es caja automatica',
            'origencliente'=>'facebook',
            'user_id' => 2
        ]);
        $user = Cliente::create([
            'nombre'=>'Nelson A Ceibal',
            'celular'=>'348255002',
            'email'=>'',
            'ciudad'=>'Ceibal',
            'provincia'=>'Santa Fe',
            'estado'=>'venta',
            'nota'=>'Ranger XLT 4x4 2018 - 180 mil km',
            'origencliente'=>'facebook',
            'user_id' => 3
        ]);
        $user = Cliente::create([
            'nombre'=>'Miriam Zarza',
            'celular'=>'3482262574',
            'email'=>'',
            'ciudad'=>'Ceibal',
            'provincia'=>'Santa Fe',
            'estado'=>'venta',
            'nota'=>'Polo, Focus (5 puertas), Yaris - (2017/2018) Hasta $2.000.000 - Entrega Sandero 2014 tech rum -  56 mil km',
            'origencliente'=>'facebook',
            'user_id' => 3
        ]);

    }
}
