<?php

namespace App\Http\Controllers;

use App\Kegiatan;
use App\Peminjaman;
use Illuminate\Http\Request;

class DashboardController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data['kegiatan'] = Kegiatan::with('lembaga')->orderBy('created_at','desc')->limit(10)->get();
        $data['peminjaman'] = Peminjaman::with(['kegiatan','user','barang'])->orderBy('created_at','desc')->limit(10)->get();
        return view('dashboard',['data'=>$data]);
    }

}
