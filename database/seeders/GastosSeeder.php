<?php

namespace Database\Seeders;
use App\Models\Gasto;


use Illuminate\Database\Seeder;

class GastosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $gasto = Gasto::create([
            'nombre'=>'limpieza tapizados',
            'monto' => 5000,
            'auto_id' => 4
        ]);
        $gasto = Gasto::create([
            'nombre'=>'Lavado',
            'monto' => 1000,
            'auto_id' => 4
        ]);
        $gasto = Gasto::create([
            'nombre'=>'Saca bollo',
            'monto' => 10000,
            'auto_id' => 4
        ]);
    }
}
