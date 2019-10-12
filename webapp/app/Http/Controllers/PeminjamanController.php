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

use DB;

class PeminjamanController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data = Peminjaman::with(['kegiatan','barang','user'])->get();
        // $data = Peminjaman::with(['barang', 'user']);

        return view('peminjaman.index', ['data'=>$data]);
    }

    public function jadwal()
    {
        $data = Peminjaman::with(['kegiatan','barang','user'])->get();

        return view('peminjaman.jadwal', ['data'=>$data]);
    }

    public function create()
    {
        // $data['kegiatan'] = User::with('kegiatan')->get();
        // $data['kegiatan'] = Kegiatan::where( 'id_lembaga', Auth::user()->lembaga->id )->get();
        $data['kegiatan'] = Kegiatan::get();

        return view( 'peminjaman.create', [ 'data' => $data ] );
    }

    public function detail($id)
    {

        $data = Peminjaman::where('id', $id)
                    ->with(['kegiatan','barang','user'])->first();

        // $data['peminjaman'] = Peminjaman::find($id);
        // $data['barang'] = Barang::all();
        // $data['user'] = User::all();
        // $data['kegiatan'] = Kegiatan::all();

        return view('peminjaman.detail',['data'=>$data]);
    }

    public function set(Request $request)
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
        $data['tgl_peminjaman'] = $request->tgl_peminjaman;
        $data['tgl_pengembalian'] = $request->tgl_pengembalian;
        $data['keterangan'] = $request->keterangan;
        $data['barang'] = [];

        DB::enableQueryLog();          
        $barangs = Barang::with(['kategori_barang','peminjaman','lastPeminjaman'])
            ->whereDoesntHave('peminjaman')
            ->orWhereHas('lastPeminjaman')
            ->where('barang.status', 1)
            ->get();

        $barangs = DB::getQueryLog();
        $barangs = end($barangs);
        dd($barangs);

        return json_encode($barangs);

        foreach($barangs as $barang){
            if(($barang->lastPeminjaman->count() > 0 && $barang->lastPeminjaman[0]->tgl_pinjam >= $data['tgl_peminjaman']) || $barang->status == 'DIPINJAM'){
                continue;
            }
            $data['barang'][] = $barang;
        }

        //return json_encode($data['barang']);

        $data['kategori_barang'] = KategoriBarang::all();

        return view('peminjaman.select',['data'=>$data]);
    }

    public function save(Request $request)
    {
        $tgl_pinjam = $request->get('tgl_peminjaman');
        $tgl_kembali = $request->get('tgl_pengembalian');

        //dd($request->all());

        if(count($request->barang) == 0){
            return redirect()->back()->with('error','Minimal pinjam satu barang');
        }

        foreach($request->barang as $barang){
            $checkPeminjaman = Peminjaman::with('barang')->whereHas('barang', function ($query) use ($barang){
                $query->where('barang.kode_barang',$barang);
            })
            ->where('tgl_pinjam','>=', $tgl_pinjam)
            ->where('status','DIPINJAM')
            ->count();

            if($checkPeminjaman>0){
                return redirect()->route('peminjaman.create')->with('error','Barang dengan kode : '.$barang.' sedang di pinjam');
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

    public function edit($id)
    {
        $peminjaman = Peminjaman::find($id);
        return view('peminjaman.edit',['peminjaman'=>$peminjaman]);
    }

    public function setEdit(Request $request)
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

        $data['tgl_peminjaman'] = $request->tgl_peminjaman;
        $data['tgl_pengembalian'] = $request->tgl_pengembalian;
        $data['keterangan'] = $request->keterangan;
        $data['barang'] = [];

        $data['id_peminjaman'] = $request->id;
        $data['currentBarang'] = [];

        if(!empty($request->id)){
            $peminjaman = Peminjaman::with(['barang'])->find($request->id);
            foreach ($peminjaman->barang as $barang){
                $data['currentBarang'][] = $barang->kode_barang;
            }
        }

        $barangs = Barang::with(['kategori_barang','lastPeminjaman'])
            ->whereDoesntHave('lastPeminjaman')
            ->orWhereHas('lastPeminjaman')
            ->where('barang.status', 1)
            ->get();

        foreach($barangs as $barang){
            if(($barang->lastPeminjaman->count() > 0 && $barang->lastPeminjaman[0]->tgl_pinjam >= $data['tgl_peminjaman']) || $barang->status == 'DIPINJAM'){
                if($barang->lastPeminjaman[0]->id_user != Auth::user()->id){
                    continue;
                }

                if ( $barang->lastPeminjaman[0]->pivot->id_peminjaman != $data['id_peminjaman'] ) {
                    continue;
                }

            }
            $data['barang'][] = $barang;
        }

        //return json_encode($data['barang']);

        $data['kategori_barang'] = KategoriBarang::all();

        return view('peminjaman.select-edit',['data'=>$data]);
    }

    public function update(Request $request)
    {
        $tgl_pinjam = $request->get('tgl_peminjaman');
        $tgl_kembali = $request->get('tgl_pengembalian');

        //dd($request->all());

        if(count($request->barang) == 0){
            return redirect()->back()->with('error','Minimal pinjam satu barang');
        }

        foreach($request->barang as $barang){
            $checkPeminjaman = Peminjaman::with('barang')->whereHas('barang', function ($query) use ($barang){
                $query->where('barang.kode_barang',$barang);
            })
            ->where('tgl_pinjam','>', $tgl_pinjam)
            ->where('status','DIPINJAM')
            ->count();

            if($checkPeminjaman>0){
                return redirect()->route('peminjaman.edit',['id'=>$request->id_peminjaman])->with('error','Barang dengan kode : '.$barang.' sedang di pinjam');
            }
        }

        $peminjaman = Peminjaman::with('barang')->find($request->id_peminjaman);
        $peminjaman->keterangan = $request->keterangan;
        $peminjaman->tgl_pinjam = $tgl_pinjam;
        $peminjaman->tgl_kembali = $tgl_kembali;
        $peminjaman->save();

        $peminjaman->barang()->detach();
        $peminjaman->barang()->attach($request->barang);

        return redirect()->route('peminjaman.index')->with('success', 'Berhasil mengajukan peminjaman!');
    }

    public function delete(Request $request)
    {
        Peminjaman::find($request->id)->delete();
        return redirect()->route('peminjaman.index')->with('message', 'Data Peminjaman Berhasil dihapus');
    }

    public function selesai(Request $request)
    {
        $peminjaman = Peminjaman::find($request->id);
        $peminjaman->status = "DIKEMBALIKAN";
        $peminjaman->save();

        return redirect()->route('peminjaman.index')->with('message', 'Data Peminjaman Berhasil dihapus');
    }    
}
