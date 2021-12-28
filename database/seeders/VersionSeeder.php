<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Version;


class VersionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $Version = Version::create([
            'nombre'=>'1.0'
        ]);        
        $Version = Version::create([
            'nombre'=>'1.4'
        ]);  
        $Version = Version::create([
            'nombre'=>'1.6'
        ]);        
        $Version = Version::create([
            'nombre'=>'1.8'
        ]);  
        $Version = Version::create([
            'nombre'=>'2.0'
        ]); 
    }
}
