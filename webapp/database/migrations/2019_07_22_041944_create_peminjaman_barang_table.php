<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePeminjamanBarangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peminjaman_barang', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->bigInteger('id_peminjaman')->unsigned();
            $table->foreign('id_peminjaman')
                    ->references('id')
                    ->on('peminjaman')
                    ->onDelete('CASCADE');
            
            $table->string('kode_barang');
            $table->foreign('kode_barang')
                    ->references('kode_barang')
                    ->on('barang')
                    ->onDelete('CASCADE');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('peminjaman_barang');
    }
}
