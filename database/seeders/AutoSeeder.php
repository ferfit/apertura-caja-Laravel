<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Auto;


class AutoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $auto = Auto::create([
            'condicion'=>'Usado',
            'marca'=>'Ford',
            'modelo'=>'Focus',
            'version'=>'1.6',
            'año'=>'2015',
            'preciocosto' =>'200000',
            'precio'=>'1340000',
            'ciudad'=>'Reconquista',
            'provincia'=>'Santa Fe',
            'estado' => 'Activado'
        ]);
        $auto = Auto::create([
            'condicion'=>'Usado',
            'marca'=>'Peugeot',
            'modelo'=>'207',
            'version'=>'1.4',
            'año'=>'2010',
            'preciocosto' =>'300000',
            'precio'=>'800000',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'estado' => 'Activado'
        ]);
        $auto = Auto::create([
            'condicion'=>'Usado',
            'marca'=>'Peugeot',
            'modelo'=>'208',
            'version'=>'1.4',
            'año'=>'2015',
            'preciocosto' =>'400000',
            'precio'=>'1500000',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'estado' => 'Activado'
        ]);
        $auto = Auto::create([
            'condicion'=>'0 km',
            'marca'=>'Fiat',
            'modelo'=>'Toro',
            'version'=>'1.8',
            'año'=>'2021',
            'preciocosto' =>'500000',
            'precio'=>'800000',
            'ciudad'=>'Reconquista',
            'provincia'=>'Santa Fe',
            'estado' => 'Activado'
        ]);
    }
}