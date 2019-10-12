<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Kegiatan extends Model
{
    use SoftDeletes;

    protected $table = 'kegiatan';
    protected $dates = ['deleted_at'];

    protected $fillable = [
        'id_lembaga',
        'nama',
        'deskripsi',
        'proposal_kegiatan',
        'tgl_kegiatan',
        'status'
    ];

    public function dana() {
        return $this->hasOne( Dana::class, 'id_kegiatan', 'id' );
    }

    public function dokumentasi() {
        return $this->hasMany( Dokumentasi::class, 'id_kegiatan', 'id' );
    }

    public function peminjaman() {
        return $this->hasMany( Peminjaman::class, 'id_kegiatan', 'id' );
    }

    public function lembaga() {
        return $this->belongsTo( Lembaga::class, 'id_lembaga', 'id' );
    }

}
