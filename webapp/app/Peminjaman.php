<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Peminjaman extends Model
{
    protected $table = 'peminjaman';

    public function user() {
        return $this->belongsTo( User::class, 'id_user','id' );
    }

    public function barang() {
        return $this->belongsTo(Barang::class,'id_barang','id');
    }

    public function kegiatan() {
        return $this->belongsTo(Kegiatan::class,'id_kegiatan','id');
    }
}
