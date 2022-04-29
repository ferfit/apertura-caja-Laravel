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
            $table->string('titulo');
            $table->string('patente')->nullable();
            $table->string('condicion');

            $table->unsignedBigInteger('marca_id');
            $table->foreign('marca_id')->references('id')->on('marcas');

            $table->unsignedBigInteger('modelo_id');
            $table->foreign('modelo_id')->references('id')->on('modelos');

            $table->string('version');
            $table->integer('año');
            $table->float('preciocosto', 10, 2)->nullable();
            $table->float('precio', 10, 2)->nullable();
            $table->string('sucursal')->nullable();
            $table->string('ciudad');
            $table->string('provincia');
            $table->enum('estado', ['Activado', 'Desactivado']);
            $table->string('imagenPortada')->nullable();
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
            $table->text('descripcion')->nullable();
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
