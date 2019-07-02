<?php

namespace App\Http\Controllers;

use App\Dana;
use App\Kegiatan;
use Illuminate\Http\Request;

class DanaController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data = Dana::with('kegiatan')->get();
        return view('dana.index',['data'=>$data]);
    }

    public function detail($id)
    {
        $data['dana'] = Dana::find($id);
        $data['kegiatan'] = Kegiatan::all();
        return view('dana.detail',['data'=>$data]);
    }


}
