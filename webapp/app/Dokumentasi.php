<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dokumentasi extends Model
{
    protected $table = 'dokumentasi';
    protected $fillable = [
        'id_kegiatan',
        'keterangan',
        'file'
    ];
    
    public function kegiatan(){
        return $this->belongsTo(Kegiatan::class,'id_kegiatan','id');
    }
}
