<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Marca;


class MarcaSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Marca = Marca::create([
            'nombre'=>'Volkswagen'
        ]);        
        $Marca = Marca::create([
            'nombre'=>'BMW'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Mercedes Benz'
        ]);        
        $Marca = Marca::create([
            'nombre'=>'Renault'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Fiat'
        ]);        
        $Marca = Marca::create([
            'nombre'=>'Ford'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Honda'
        ]);        
        $Marca = Marca::create([
            'nombre'=>'Audi'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Toyota'
        ]);        
        $Marca = Marca::create([
            'nombre'=>'Chevrolet'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Nissan'
        ]);        
        $Marca = Marca::create([
            'nombre'=>'Volvo'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Jeep'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Peuget'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Suzuki'
        ]);  
        $Marca = Marca::create([
            'nombre'=>'Hyundai'
        ]);  
    }
}
