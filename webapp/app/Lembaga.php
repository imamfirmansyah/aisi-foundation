<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lembaga extends Model
{
    protected $table = 'lembaga';

    protected $fillable = ['id_user'];

    public function user() {
        return $this->belongsTo( User::class,'id_user','id' );
    }
}
