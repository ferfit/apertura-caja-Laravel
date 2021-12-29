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
            'password'=>hash::make('laesquina')              
        ]);
        $user = User::create([
            'name'=>'Lucas Goi',
            'email'=>'lucaspaduangoi@gmail.com',
            'password'=>hash::make('Sistema2022')              
        ]);
    }
}
