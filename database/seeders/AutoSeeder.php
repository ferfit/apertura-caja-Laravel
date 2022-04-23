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
            'patente'=>'jhl878',
            'condicion'=>'Usado',
            'marca_id'=>'1',
            'modelo_id'=>'1',
            'version'=>'1.6',
            'año'=>'2015',
            'preciocosto' =>'200000',
            'precio'=>'1340000',
            'ciudad'=>'Reconquista',
            'provincia'=>'Santa Fe',
            'estado' => 'Activado',
            'descripcion' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum dignissimos esse unde eveniet nemo harum autem veritatis cupiditate consequuntur odit.'
        ]);
        $auto = Auto::create([
            'patente'=>'abc878',
            'condicion'=>'Usado',
            'marca_id'=>'2',
            'modelo_id'=>'2',
            'version'=>'1.4',
            'año'=>'2010',
            'preciocosto' =>'300000',
            'precio'=>'800000',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'estado' => 'Activado',
            'descripcion' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum dignissimos esse unde eveniet nemo harum autem veritatis cupiditate consequuntur odit.'

        ]);
        $auto = Auto::create([
            'patente'=>'jjl899',
            'condicion'=>'Usado',
            'marca_id'=>'3',
            'modelo_id'=>'3',
            'version'=>'1.4',
            'año'=>'2015',
            'preciocosto' =>'400000',
            'precio'=>'1500000',
            'ciudad'=>'Tigre',
            'provincia'=>'Buenos Aires',
            'estado' => 'Activado',
            'descripcion' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum dignissimos esse unde eveniet nemo harum autem veritatis cupiditate consequuntur odit.'

        ]);
        $auto = Auto::create([
            'patente'=>'dfri008',
            'condicion'=>'0 km',
            'marca_id'=>'4',
            'modelo_id'=>'4',
            'version'=>'1.8',
            'año'=>'2021',
            'preciocosto' =>'500000',
            'precio'=>'800000',
            'ciudad'=>'Reconquista',
            'provincia'=>'Santa Fe',
            'estado' => 'Activado',
            'descripcion' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Earum dignissimos esse unde eveniet nemo harum autem veritatis cupiditate consequuntur odit.'

        ]);
    }
}
