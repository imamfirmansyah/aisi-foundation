<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

use App\Barang;
use App\KategoriBarang;
use App\Kegiatan;
use App\Peminjaman;
use App\User;

class PeminjamanController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data = Peminjaman::with(['kegiatan','barang','user'])->get();

        return view('peminjaman.index', ['data'=>$data]);
    }

    public function create()
    {
        $data['barang'] = Barang::with('kategori_barang')
                                    ->where('status', 1)
                                    ->get();

        $data['kategori_barang'] = KategoriBarang::all();

        // $data['kegiatan'] = User::with('kegiatan')->get();
        // $data['kegiatan'] = Kegiatan::where( 'id_lembaga', Auth::user()->lembaga->id )->get();
        $data['kegiatan'] = Kegiatan::get();

        return view( 'peminjaman.create', [ 'data' => $data ] );
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
            'max' => 'maksimal ukuran :attribute sebesar 2Mb',
        ];

        $request->validate([
            'tgl_peminjaman' => 'required|after:tomorrow'
        ], $messages );

        $tgl_pinjam = explode(" - ", $request->get('tgl_peminjaman') )[0];
        $tgl_kembali = explode(" - ", $request->get('tgl_peminjaman') )[1];

        dd($request->all());
        // $barang->nama = $request->get('nama');
    }

}
