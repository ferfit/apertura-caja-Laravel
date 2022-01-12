<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAutosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('autos', function (Blueprint $table) {
            $table->id();
            $table->string('condicion');
            $table->string('marca');
            $table->string('modelo');
            $table->string('version');
            $table->integer('año');
            $table->float('preciocosto',10,2);
            $table->float('precio',10,2);
            $table->string('ciudad');
            $table->string('provincia');
            $table->enum('estado',['Activado','Desactivado']);
            $table->string('tipo')->nullable();
            $table->bigInteger('kilometraje')->nullable();
            $table->string('combustible')->nullable();
            $table->string('tipomotor')->nullable();
            $table->string('traccion')->nullable();
            $table->string('cajaauto')->nullable();
            $table->string('color')->nullable();
            $table->string('tapizado')->nullable();
            $table->string('direccion')->nullable();
            $table->string('valor')->nullable();
            $table->string('permuta')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('autos');
    }
}
