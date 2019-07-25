<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBarangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('barang', function (Blueprint $table) {
            $table->string('kode_barang')->primary();
            $table->string('nama')->nullable();
            $table->text('keterangan')->nullable();
            $table->text('foto')->nullable();
            $table->string('status')->nullable();

            $table->bigInteger('id_kategori_barang')->unsigned();
            $table->foreign('id_kategori_barang')->references('id')->on('kategori_barang')->onDelete('CASCADE');

            $table->timestamps();
            $table->timestamp('deleted_at')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('barang');
    }
}
