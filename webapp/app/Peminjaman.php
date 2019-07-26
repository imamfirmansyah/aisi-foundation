<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Peminjaman extends Model
{
    protected $table = 'peminjaman';

    public function user() {
        return $this->belongsTo( User::class, 'id_user','id' );
    }

    public function kegiatan() {
        return $this->belongsTo( Kegiatan::class, 'id_kegiatan','id');
    }

    public function barang() {
        return $this->belongsToMany( Barang::class, 'peminjaman_barang', 'id_peminjaman', 'kode_barang');
    }
}
