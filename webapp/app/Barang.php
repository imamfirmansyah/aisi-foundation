<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Barang extends Model
{   
    use SoftDeletes;

    protected $table = 'barang';
    protected $dates = ['deleted_at'];
    
    protected $fillable = [
        'kode_barang',
        'nama',
        'jenis_barang',
        'keterangan',
        'foto',
        'status'
    ];

    public function peminjaman() {
        return $this->hasMany(Peminjaman::class,'id_barang','id');
    }
}
