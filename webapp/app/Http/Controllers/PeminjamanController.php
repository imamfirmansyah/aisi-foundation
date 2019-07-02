<?php

namespace App\Http\Controllers;

use App\Barang;
use App\Kegiatan;
use App\Peminjaman;
use App\User;
use Illuminate\Http\Request;

class PeminjamanController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data = Peminjaman::with(['kegiatan','barang','user'])->get();
        return view('peminjaman.index',['data'=>$data]);
    }

    public function detail($id)
    {
        $data['peminjaman'] = Peminjaman::find($id);
        $data['barang'] = Barang::all();
        $data['user'] = User::all();
        $data['kegiatan'] = Kegiatan::all();
        return view('peminjaman.detail',['data'=>$data]);
    }


}
