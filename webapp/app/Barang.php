<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Barang extends Model
{   
    use SoftDeletes;

    protected $table = 'barang';
    protected $dates = ['deleted_at'];

    protected $primaryKey = 'kode_barang';
    protected $keyType = 'string';
    public $incrementing = false;
    
    protected $fillable = [
        'kode_barang',
        'nama',
        'jenis_barang',
        'keterangan',
        'foto',
        'status'
    ];

    public function peminjaman() {
        return $this->hasMany( Peminjaman::class, 'id_barang', 'id' );
    }

    public function kategori_barang() {
        return $this->belongsTo( KategoriBarang::class, 'id_kategori_barang','id');
    }
}
