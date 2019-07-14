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

    public function edit($id)
    {
        $data = Dana::find($id);

        return view('dana.edit', [ 'data' => $data ]);
    }

    public function update(Request $request, $id)
    {   
        $messages = [
            'required' => ':attribute wajib diisi!',
            'after' => 'pengajuan :attribute tidak benar',
            'numeric' => ':attribute harus berupa angka',
            'after' => 'tanggal :attribute tidak benar'
        ];

        $request->validate([
            'jumlah_pengajuan' => 'required|numeric',
            'jumlah_pencairan' => 'required|numeric',
            'tgl_pencairan' => 'required|date|after:tomorrow',
            'keterangan' => 'required',
            'status' => 'required',
        ], $messages );

        $dana = Dana::find($id);

        $dana->jumlah_pengajuan = $request->get('jumlah_pengajuan');
        $dana->jumlah_pencairan = $request->get('jumlah_pencairan');
        $dana->tgl_pencairan = $request->get('tgl_pencairan');
        $dana->keterangan = $request->get('keterangan');
        $dana->status = $request->get('status');

        $dana->save();

        return redirect('dana')->with('message', 'Data Dana Berhasil diubah');
    }
}
