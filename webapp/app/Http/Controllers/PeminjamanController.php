<?php

namespace App\Http\Controllers;

use App\Barang;
use App\Kegiatan;
use App\Peminjaman;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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

    public function create()
    {
        $data['barang'] = Barang::where('status', 1)->get();
        // $data['kegiatan'] = User::with('kegiatan')->get();
        // $data['kegiatan'] = Kegiatan::where( 'id_lembaga', Auth::user()->lembaga->id )->get();
        $data['kegiatan'] = Kegiatan::get();

        return view( 'peminjaman.create', [ 'data'=>$data ] );
    }

    public function detail($id)
    {
        $data['peminjaman'] = Peminjaman::find($id);
        $data['barang'] = Barang::all();
        $data['user'] = User::all();
        $data['kegiatan'] = Kegiatan::all();
        return view('peminjaman.detail',['data'=>$data]);
    }

    public function save(Request $request)
    {
        $messages = [
            'required' => ':attribute wajib diisi!',
            'image' => ':attribute harus berupa gambar!',
            'mimes' => ':attribute harus berupa file jpeg, png, jpg',
            'max' => 'maksimal ukuran :attribute sebesar 2Mb'
        ];

        $request->validate([
            'tgl_peminjaman' => 'required'
        ], $messages );
    }

}
