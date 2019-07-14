<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Dana extends Model
{
    protected $table = 'dana';
    protected $fillable = [
        'id_kegiatan',
        'jml_pencairan',
        'keterangan',
        'tgl_pengajuan',
        'tgl_pencairan',
        'status'
    ];

    public function kegiatan(){
        return $this->belongsTo(Kegiatan::class,'id_kegiatan','id');
    }
}
