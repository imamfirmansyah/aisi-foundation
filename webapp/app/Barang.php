<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    protected $table = 'barang';

    public function peminjaman(){
        return $this->hasMany(Peminjaman::class,'id_barang','id');
    }
}
