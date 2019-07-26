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


        $tgl_pinjam = $request->get('tgl_peminjaman');
        $tgl_kembali = $request->get('tgl_peminjaman');

        //dd($request->all());

        foreach($request->barang as $barang){
            $checkPeminjaman = Peminjaman::with('barang')->whereHas('barang', function ($query) use ($barang){
                $query->where('barang.kode_barang',$barang);
            })
            ->where('tgl_pinjam','>=', $tgl_pinjam)
            ->where('status','DIPINJAM')
            ->count();

            if($checkPeminjaman>0){
                return back()->with('error','Barang dengan kode : '.$barang.' sedang di pinjam');
            }
        }

        $peminjaman = new Peminjaman();
        $peminjaman->id_user = Auth::user()->id;
        $peminjaman->keterangan = $request->keterangan;
        $peminjaman->tgl_pinjam = $tgl_pinjam;
        $peminjaman->tgl_kembali = $tgl_kembali;
        $peminjaman->status = 'DIPINJAM';
        $peminjaman->save();

        $peminjaman->barang()->attach($request->barang);

        return redirect()->route('peminjaman.index')->with('success', 'Berhasil mengajukan peminjaman!');
    }

}
