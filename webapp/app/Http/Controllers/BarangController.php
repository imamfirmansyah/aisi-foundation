<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\Barang;
use App\KategoriBarang;

class BarangController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data = Barang::with('kategori_barang')
                            ->orderBy('created_at', 'desc')
                            ->get();

        return view('barang.index', ['data'=>$data]);
    }

    public function create()
    {
        $data = KategoriBarang::all();

        return view( 'barang.create', ['data' => $data] );
    }

    public function detail($id)
    {
        $data = Barang::with('kategori_barang')
                            ->where('kode_barang', $id)
                            ->first();

        return view('barang.detail', ['data'=>$data] );
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
            'nama' => 'required',
            'kategori_barang' => 'required',
            'foto' => 'required|image|mimes:jpeg,png,jpg|max:2048'
        ], $messages );

        $barang = new Barang();

        $barang->nama = $request->get('nama');
        $barang->id_kategori_barang = $request->get('kategori_barang');
        $barang->keterangan = $request->get('keterangan');
        $barang->status = '1';
        $barang->kode_barang = time();
        
        $foto = $request->file('foto');
        $imageName = time().'_'.str_replace(' ','_', $foto->getClientOriginalName());
        $foto->move( public_path('storage/barang'), $imageName );
        $barang->foto = $imageName;
        
        $barang->save();
        
        return redirect('barang')->with('message', 'Data Barang Berhasil ditambahkan');

    }

    public function edit($id) {

        $data['barang'] = Barang::find($id);
        $data['kategori_barang'] = KategoriBarang::all();

        return view('barang.edit', [ 'data' => $data ]);

    }

    public function update(Request $request, $id)
    {
        
        $messages = [
            'required' => ':attribute wajib diisi!',
            'image' => ':attribute harus berupa gambar!',
            'mimes' => ':attribute harus berupa file jpeg, png, jpg',
            'max' => 'maksimal ukuran :attribute sebesar 2Mb'
        ];

        if( $request->hasFile('foto') && $request->file('foto')->isValid())  {
            $request->validate([
                'nama' => 'required',
                'kategori_barang' => 'required',
                'status' => 'required',
                'foto' => 'required|image|mimes:jpeg,png,jpg|max:2048'
            ], $messages );
        } else {
            $request->validate([
                'nama' => 'required',
                'status' => 'required',
                'kategori_barang' => 'required'
            ], $messages );
        }

        $barang = Barang::find($id);
        $barang->nama = $request->get('nama');
        $barang->id_kategori_barang = $request->get('kategori_barang');
        $barang->keterangan = $request->get('keterangan');
        $barang->status = $request->get('status');

        if( $request->hasFile('foto') && $request->file('foto')->isValid())  {
            $oldFileName = $barang->foto;
            
            $foto = $request->file('foto');
            $imageName = time().'_'.str_replace(' ','_', $foto->getClientOriginalName());
            $foto->move( public_path('storage/barang'), $imageName );

            if ( file_exists( public_path('storage/barang/'. $oldFileName ) ) ) {
                unlink( public_path('storage/barang/'. $oldFileName ) );
            }

            $barang->foto = $imageName;
        }

        $barang->save();
        
        return redirect('barang')->with('message', 'Data Barang Berhasil diubah');
    }

    public function delete(Request $request)
    {
        $barang = Barang::find( $request->kode_barang );
        $barang->delete();

        return redirect('barang')->with('message', 'Data Barang Berhasil dihapus');
    }

    public function trash()
    {
        // mengampil data barang yang sudah dihapus
        $data = Barang::onlyTrashed()->get();

        return view('barang.restore', [ 'data' => $data ]);
    }

    public function restore($id)
    {
        $data = Barang::onlyTrashed()->where('kode_barang', $id);
        $data->restore();
        
        return redirect('barang-trash')->with('message', 'Data Barang Berhasil dikembalikan');
    }

    public function force_delete(Request $request)
    {
        $data = Barang::onlyTrashed()->where( 'kode_barang', $request->kode_barang );

        $barang = $data->get();

        if ( file_exists( public_path('storage/barang/'. $barang[0]->foto ) ) ) {
            unlink( public_path('storage/barang/'. $barang[0]->foto ) );
        }

        $data->forceDelete();
 
        return redirect('barang-trash')->with('message', 'Data Barang Berhasil dihapus Permanen');
    }

}