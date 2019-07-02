<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dana extends Model
{
    protected $table = 'danas';

    public function kegiatan(){
        return $this->belongsTo(Kegiatan::class,'id_kegiatan','id');
    }
}
