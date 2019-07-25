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
        Schema::create('dana', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_kegiatan')->unsigned();
            $table->foreign('id_kegiatan')->references('id')->on('kegiatan')->onDelete('CASCADE');
            
            $table->decimal('jumlah_pengajuan',8,0)->nullable();
            $table->decimal('jumlah_pencairan',8,0)->nullable();
            $table->text('keterangan')->nullable();
            $table->date('tgl_pengajuan')->nullable();
            $table->date('tgl_pencairan')->nullable();
            $table->string('status')->nullable();
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
        Schema::dropIfExists('dana');
    }
}
