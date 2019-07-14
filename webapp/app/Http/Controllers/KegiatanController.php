<?php

namespace App\Http\Controllers;

use App\Kegiatan;
use App\Lembaga;
use Illuminate\Http\Request;

class KegiatanController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($type = 'ALL')
    {
        if( $type == 'ALL' ) {
            $data = Kegiatan::with('lembaga')->get();
        } else {
            $data = Kegiatan::with('lembaga')->where('status',$type)->get();
        }

        return view( 'kegiatan.index', ['data'=>$data] );
    }

    public function detail($id)
    {
        $data['kegiatan'] = Kegiatan::with('dokumentasi')->find($id);
        $data['lembaga'] = Lembaga::all();
        return view('kegiatan.detail',['data'=>$data]);
    }


}
