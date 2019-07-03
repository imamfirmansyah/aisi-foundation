<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dana extends Model
{
    protected $table = 'dana';

    public function kegiatan(){
        return $this->belongsTo(Kegiatan::class,'id_kegiatan','id');
    }
}
