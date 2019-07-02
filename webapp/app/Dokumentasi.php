<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumentasi extends Model
{
    protected $table = 'dokumentasis';

    public function kegiatan(){
        return $this->belongsTo(Kegiatan::class,'id_kegiatan','id');
    }
}
