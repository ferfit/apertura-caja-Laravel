<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;


class UsuarioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::create([
            'name'=>'Fernando Pereyra',
            'email'=>'fer@correo.com',
            'password'=>hash::make('laesquina'),
            'rol' => 'administrador',
            'estado' => 'Activado'
        ]);
        $user = User::create([
            'name'=>'Lucas Goi',
            'email'=>'lucaspaduangoi@gmail.com',
            'password'=>hash::make('Sistema2022'),
            'rol' =>'administrador',
            'estado' => 'Activado'
        ]);
        $user = User::create([
            'name'=>'usuario vendedor',
            'email'=>'vendedor@correo.com',
            'password'=>hash::make('12345'),
            'rol' =>'vendedor',
            'estado' => 'Activado'
        ]);
    }
}
