<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Tipomotor;


class TipomotorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Tipomotor = Tipomotor::create([
            'nombre'=>'2T'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'3 Cilindros'
        ]);  
        $Tipomotor = Tipomotor::create([
            'nombre'=>'4 Cilindros'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'4T'
        ]);  
        $Tipomotor = Tipomotor::create([
            'nombre'=>'5 Cilindros'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'6 Cilindros en línea'
        ]);  
        $Tipomotor = Tipomotor::create([
            'nombre'=>'Aspirado'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'Biturbo'
        ]);  
        $Tipomotor = Tipomotor::create([
            'nombre'=>'Bóxer'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'Bóxer Turbo'
        ]);  
        $Tipomotor = Tipomotor::create([
            'nombre'=>'Turbo'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'Twin Turbo'
        ]);  
        $Tipomotor = Tipomotor::create([
            'nombre'=>'V12'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'V6'
        ]);  
        $Tipomotor = Tipomotor::create([
            'nombre'=>'V6 BiTurbo'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'V6 Turbo'
        ]);  
        $Tipomotor = Tipomotor::create([
            'nombre'=>'v6 TwinTurbo'
        ]);        
        $Tipomotor = Tipomotor::create([
            'nombre'=>'V8'
        ]);  
    }
}
