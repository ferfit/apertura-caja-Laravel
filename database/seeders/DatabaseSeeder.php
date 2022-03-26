<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call(UsuarioSeeder::class);
        $this->call(ClienteSeeder::class);
        $this->call(AutoSeeder::class);
        $this->call(CondicionSeeder::class);
        //$this->call(MarcaSeeder::class);
        //$this->call(ModeloSeeder::class);
        $this->call(VersionSeeder::class);
        $this->call(CiudadSeeder::class);
        $this->call(ProvinciaSeeder::class);
        $this->call(TipoSeeder::class);
        $this->call(CombustibleSeeder::class);
        $this->call(TipomotorSeeder::class);
        $this->call(TraccionSeeder::class);
        $this->call(CajaautoSeeder::class);
        $this->call(ColorSeeder::class);
        $this->call(TapizadoSeeder::class);
        $this->call(DireccionSeeder::class);
        $this->call(ValorSeeder::class);
        $this->call(PermutaSeeder::class);
        $this->call(GastosSeeder::class);
    }
}
