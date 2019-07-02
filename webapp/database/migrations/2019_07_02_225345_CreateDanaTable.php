<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDanaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('danas', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('id_kegiatan');
            $table->decimal('jumlah_pengajuan',8,0)->nullable();
            $table->decimal('jumlah_pencairan',8,0)->nullable();
            $table->text('keterangan')->nullable();
            $table->date('tgl_pengajuan')->nullable();
            $table->date('tgl_pencairan')->nullable();
            $table->string('status')->nullable();
            $table->timestamps();
            $table->timestamp('deletedAt')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('danas');
    }
}
