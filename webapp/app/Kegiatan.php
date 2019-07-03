<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kegiatan extends Model
{
    protected $table = 'kegiatan';

    public function dana(){
        return $this->hasOne(Dana::class,'id_kegiatan','id');
    }

    public function dokumentasi(){
        return $this->hasMany(Dokumentasi::class,'id_kegiatan','id');
    }

    public function peminjaman(){
        return $this->hasMany(Peminjaman::class,'id_kegiatan','id');
    }

    public function lembaga(){
        return $this->belongsTo(Lembaga::class, 'id_lembaga', 'id');
    }

}
