<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

use App\KategoriBarang;

class KategoriBarangController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $data = KategoriBarang::all();

        return view( 'kategori_barang.index', [ 'data' => $data ] );
    }

    public function create()
    {
        return view( 'kategori_barang.create' );
    }

    public function save(Request $request)
    {
        $messages = [
            'required' => ':attribute wajib diisi!',
        ];

        $request->validate([
            'nama' => 'required',
        ], $messages );

        $kategori_barang = new KategoriBarang();
        $kategori_barang->nama = $request->get('nama');
        $kategori_barang->save();
        
        return redirect('kategori-barang')->with('message', 'Data Kategori Berhasil ditambahkan');
    }

    public function edit($id) {

        $data = KategoriBarang::find($id);
        return view( 'kategori_barang.edit', [ 'data' => $data ]);

    }

    public function update(Request $request, $id)
    {   
        $messages = [
            'required' => ':attribute wajib diisi!',
        ];

        $request->validate([
            'nama' => 'required',
        ], $messages );

        $kategori_barang = KategoriBarang::find($id);
        $kategori_barang->nama = $request->get('nama');

        $kategori_barang->save();
        
        return redirect('kategori-barang')->with('message', 'Data Barang Berhasil diubah');
    }

    public function delete(Request $request)
    {
        $kategori_barang = KategoriBarang::find( $request->id );
        $kategori_barang->delete();

        return redirect('kategori-barang')->with('message', 'Data Barang Berhasil dihapus');
    }

    public function trash()
    {
        // mengampil data barang yang sudah dihapus
        $data = KategoriBarang::onlyTrashed()->get();

        return view('kategori_barang.restore', [ 'data' => $data ]);
    }

    public function restore($id)
    {
        $data = KategoriBarang::onlyTrashed()->where('id', $id);
        $data->restore();
        
        return redirect('kategori-barang-trash')->with('message', 'Data Barang Berhasil dikembalikan');
    }

    public function force_delete(Request $request)
    {
        $data = KategoriBarang::onlyTrashed()->where( 'id', $request->id );
        $data->forceDelete();

        return redirect('kategori-barang-trash')->with('message', 'Data Barang Berhasil dihapus Permanen');
    }
}
