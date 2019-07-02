<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lembaga extends Model
{
    protected $table = 'lembagas';

    public function user(){
        return $this->belongsTo(User::class,'id_user','id');
    }
}
