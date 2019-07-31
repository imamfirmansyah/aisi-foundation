<?php

namespace App\Http\Controllers;

use App\Kegiatan;
use App\Peminjaman;
use App\User;
use App\Dana;
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

        $data['total_member'] = User::count();
        $data['total_kegiatan'] = Kegiatan::where('status', 'DITERIMA')->count();
        $data['total_dana'] = Dana::count();
        $data['total_peminjaman'] = Peminjaman::count();

        return view('dashboard', ['data' => $data]);
    }

}
