<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use App\Kegiatan;
use App\Lembaga;
use App\Dana;
use App\Dokumentasi;
use App\User;
use Illuminate\Http\Request;

class KegiatanController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');

        $data_kegiatan = Kegiatan::where('status','DITERIMA')
                        ->get();
        
        $months_ago = strtotime('-1 months');

        foreach ($data_kegiatan as $key => $val) {
            /* check tgl_kegiatan jika 1 bulan tidak ada update laporan */
            if(  strtotime( $val->tgl_kegiatan ) < $months_ago ) {
                /* update flag status to TANPA_LAPORAN */
                $kegiatan = Kegiatan::find($val->id);
                $kegiatan->status = 'TANPA_LAPORAN';
                $kegiatan->save();

                /* force unverified user */
                $data_lembaga   = Lembaga::where('id', $val->id_lembaga)->first();
                $data_user      = User::where('id', $data_lembaga->user->id)->first();
                
                $data_user->validate_status = 0;
                $data_user->save();
            }
        }
    }

    public function index($type = 'ALL')
    {
        if( $type == 'ALL' ) {
            if ( Auth::user()->role === 'STAFF' || Auth::user()->role === 'ADMIN' ) {
                $data = Kegiatan::with('lembaga')->get();
            } else {
                $data = Kegiatan::where('id_lembaga', Auth::user()->lembaga->id)
                                    ->with('lembaga')->get();
            }
        } else {
            if ( Auth::user()->role === 'STAFF' || Auth::user()->role === 'ADMIN' ) {
                $data = Kegiatan::with('lembaga')->where('status',$type)->get();
            } else {
                $data = Kegiatan::where('id_lembaga', Auth::user()->lembaga->id)
                                ->where('status',$type)
                                ->with('lembaga')->get();
            }
        }

        return view( 'kegiatan.index', ['data'=>$data] );
    }

    public function create()
    {
        return view('kegiatan.create');
    }

    public function detail($id)
    {
        $data = Kegiatan::with('dokumentasi')
                            ->with('lembaga')
                            ->with('dana')
                            ->find($id);

        return view('kegiatan.detail',['data'=>$data]);
    }

    public function save(Request $request)
    {
        $messages = [
            'required' => ':attribute wajib diisi!',
            'mimes' => ':attribute harus berupa file pdf',
            'max' => 'maksimal ukuran :attribute sebesar 5Mb',
            'after' => 'pengajuan :attribute tidak benar'
        ];

        $request->validate([
            'nama' => 'required',
            'tgl_kegiatan' => 'required|date|after:tomorrow',
            'deskripsi' => 'required',
            'proposal_kegiatan' => 'required|mimes:pdf|max:5120',
        ], $messages );

        $kegiatan = new Kegiatan();

        $kegiatan->nama = $request->get('nama');
        $kegiatan->id_lembaga = $request->get('id_lembaga');
        $kegiatan->deskripsi = $request->get('deskripsi');
        $kegiatan->tgl_kegiatan = $request->get('tgl_kegiatan');
        $kegiatan->status = 'PENGAJUAN';

        $proposal_kegiatan = $request->file('proposal_kegiatan');
        $fileName = time().'_'.str_replace(' ','_', $proposal_kegiatan->getClientOriginalName());
        $proposal_kegiatan->move( public_path('storage/proposal'), $fileName );
        $kegiatan->proposal_kegiatan = $fileName;

        $kegiatan->save();

        return redirect('kegiatan/ALL')->with('message', 'Data Kegiatan Berhasil ditambahkan');

    }

    public function edit($id) {

        $data['kegiatan'] = Kegiatan::find($id);
        $data['dokumentasi'] = Dokumentasi::where('id_kegiatan', $id)->get();

        return view('kegiatan.edit', [ 'data' => $data ]);

    }

    public function update(Request $request, $id)
    {
        $messages = [
            'required' => ':attribute wajib diisi!',
            'mimes' => ':attribute harus berupa file pdf',
            'max' => 'maksimal ukuran :attribute sebesar 5Mb',
            'after' => 'pengajuan :attribute tidak benar'
        ];

        if( $request->hasFile('proposal_kegiatan') && $request->file('proposal_kegiatan')->isValid())  {
            $request->validate([
                'nama' => 'required',
                'tgl_kegiatan' => 'required|date|after:tomorrow',
                'deskripsi' => 'required',
                'proposal_kegiatan' => 'required|mimes:pdf|max:5120',
            ], $messages );
        } else {
            $request->validate([
                'nama' => 'required',
                'tgl_kegiatan' => 'required|date|after:tomorrow',
                'deskripsi' => 'required',
            ], $messages );
        }

        $kegiatan = Kegiatan::find($id);
        $kegiatan->nama = $request->get('nama');
        $kegiatan->id_lembaga = $request->get('id_lembaga');
        $kegiatan->deskripsi = $request->get('deskripsi');
        $kegiatan->tgl_kegiatan = $request->get('tgl_kegiatan');

        if ( Auth::user()->role === 'ADMIN' ) {
            $kegiatan->status = $request->get('status');
            $kegiatan->pesan = $request->get('pesan');

            $cek_data = Dokumentasi::where('id_kegiatan', $id)->first();

            if ( $request->get('status') === 'DITERIMA' && $cek_data === null) {
                Dokumentasi::create([
                    'id_kegiatan' => $id
                ]);

                Dana::create([
                    'id_kegiatan' => $id,
                    'tgl_pengajuan' => date('Y-m-d'),
                    'status' => 'PROSES'
                ]);
            }
        }

        if( $request->hasFile('proposal_kegiatan') && $request->file('proposal_kegiatan')->isValid())  {
            $oldFileName = $kegiatan->proposal_kegiatan;
            
            $proposal_kegiatan = $request->file('proposal_kegiatan');
            $fileName = time().'_'.str_replace(' ','_', $proposal_kegiatan->getClientOriginalName());
            $proposal_kegiatan->move( public_path('storage/proposal'), $fileName );

            if ( file_exists( public_path('storage/proposal/'. $oldFileName ) ) ) {
                unlink( public_path('storage/proposal/'. $oldFileName ) );
            }

            $kegiatan->proposal_kegiatan = $fileName;
        }

        /* dokumentasi */
        if ( $request->get('keterangan') || $request->get('file') ) {      
            $kegiatan->status = 'DENGAN_LAPORAN';

            $kegiatan->dokumentasi()->where( 'id_kegiatan', $id )->update([
                'keterangan' => $request->get('keterangan'),
                'file' => $request->get('link_file'),
            ]);
        }

        $kegiatan->save();

        return redirect('kegiatan/ALL')->with('message', 'Data Kegiatan Berhasil diubah');
    }

    public function delete(Request $request)
    {
        $kegiatan = Kegiatan::find( $request->id );
        $kegiatan->delete();

        return redirect('kegiatan/ALL')->with('message', 'Data Kegiatan Berhasil dihapus');
    }

    public function trash()
    {
        // mengampil data barang yang sudah dihapus
        $data = Kegiatan::onlyTrashed()->get();

        return view('kegiatan.restore', [ 'data' => $data ]);
    }

    public function restore($id)
    {
        $data = Kegiatan::onlyTrashed()->where('id', $id);
        $data->restore();
        
        return redirect('kegiatan-trash')->with('message', 'Data Kegiatan Berhasil dikembalikan');
    }

    public function force_delete(Request $request)
    {
        $data = Kegiatan::onlyTrashed()->where( 'id', $request->id );
        $data->forceDelete();

        return redirect('kegiatan-trash')->with('message', 'Data Kegiatan Berhasil dihapus Permanen');
    }

public function cetak_laporan_kegiatan($id) {
    $data = Kegiatan::with('dokumentasi')
            ->with('lembaga')
            ->with('dana')
            ->find($id);

    return view('kegiatan.cetak',['data'=>$data]);
}
}
