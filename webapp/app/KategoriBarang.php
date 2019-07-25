<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class KategoriBarang extends Model
{
    use SoftDeletes;

    protected $table = 'kategori_barang';
    protected $dates = ['deleted_at'];
    
    protected $fillable = [
        'nama'
    ];

    public function barang() {
        return $this->hasMany( Barang::class, 'id_kategori_barang', 'id' );
    }
}
