<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateClientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clientes', function (Blueprint $table) {
            $table->id();
            $table->string('nombre');
            $table->bigInteger('celular');
            $table->string('email')->nullable();
            $table->string('ciudad');
            $table->string('provincia');
            $table->text('nota');
            $table->enum('estado',['compra','venta','compra-venta']);
            $table->enum('origencliente',['facebook','instagram','google','directo']);
            $table->enum('estadocliente',['Activado','Desactivado']);

            $table->unsignedBigInteger('user_id');
            $table->foreign('user_id')->references('id')->on('users');

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
        Schema::dropIfExists('clientes');
    }
}
