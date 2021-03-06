<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateKegiatanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kegiatan', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('id_lembaga')->unsigned();
            $table->foreign('id_lembaga')->references('id')->on('lembaga')->onDelete('CASCADE');

            $table->string('nama')->nullable();
            $table->string('deskripsi')->nullable();
            $table->text('proposal_kegiatan')->nullable();
            $table->date('tgl_kegiatan')->nullable();
            $table->string('status')->nullable();
            $table->text('pesan')->nullable();
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
        Schema::dropIfExists('kegiatan');
    }
}
