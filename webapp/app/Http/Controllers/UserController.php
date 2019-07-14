<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;

use App\User;
use App\Lembaga;

use Illuminate\Http\Request;

class UserController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($type = 'ALL')
    {
        if( $type == 'ALL' ) {
            $data = User::all();
        } else {
            $data = User::where('role',$type)->get();
        }
        return view('user.index', ['data'=>$data]);
    }

    public function detail($id)
    {
        $data = User::with('lembaga')->find($id);
        
        return view('user.detail', [ 'data'=>$data ]);
    }

    public function update(Request $request, $id)
    {
        $messages = [
            'required' => ':attribute wajib diisi!',
            'numeric' => ':attribute harus berupa angka',
            'image' => ':attribute harus berupa gambar!',
            'mimes' => ':attribute harus berupa file jpeg, png, jpg',
            'max' => 'maksimal ukuran :attribute sebesar 2Mb',
            'email' => ':attribute harus menggunakan email yg benar'
        ];

        if( $request->hasFile('foto') && $request->file('foto')->isValid())  {
            $request->validate([
                /* user validation rules */
                'nama' => 'required',
                'alamat' => 'required',
                'jenis_kelamin' => 'required',
                'no_hp' => 'required|numeric',
                'foto' => 'required|image|mimes:jpeg,png,jpg|max:2048'            
            ], $messages );
        } else {

            $validate_rules = array(
                /* user validation rules */
                'nama' => 'required',
                'alamat' => 'required',
                'jenis_kelamin' => 'required',
                'no_hp' => 'required|numeric'
            );

            if ( Auth::user()->role === 'LEMBAGA' ) {
                $validate_rules_lembaga = array(
                   /* lembaga validation rules */
                   'nama_lembaga' => 'required',
                   'email_lembaga' => 'required|email',
                   'no_hp_lembaga' => 'required|numeric',
                   'alamat_lembaga' => 'required',
                   'keterangan_lembaga' => 'required',
                );
            }

            $request->validate( Auth::user()->role === 'LEMBAGA' ? array_merge( $validate_rules, $validate_rules_lembaga ) : $validate_rules, $messages );
        }

        // dd($request->all());

        /* user */
        $user = User::find($id);
        
        $user->nama = $request->get('nama');
        $user->alamat = $request->get('alamat');
        $user->jenis_kelamin = $request->get('jenis_kelamin');
        $user->no_hp = $request->get('no_hp');

        if ( Auth::user()->role === 'STAFF' ) {
            $user->role = $request->get('role');
            $user->validate_status = $request->get('validate_status');
        }

        if( $request->hasFile('foto') && $request->file('foto')->isValid())  {
            $oldFileName = $user->foto;
            
            $foto = $request->file('foto');
            $imageName = time().'_'.str_replace(' ','_', $foto->getClientOriginalName());
            $foto->move( public_path('storage/avatar'), $imageName );

            if ( file_exists( public_path('storage/avatar/'. $oldFileName ) && $oldFileName !== "avatar-boy.png" ) ) {
                unlink( public_path('storage/avatar/'. $oldFileName ) );
            }

            $user->foto = $imageName;
        }

        /* lembaga */
        $user->lembaga()->where( 'id_user', $id )->update([
            'nama' => $request->get('nama_lembaga'),
            'email' => $request->get('email_lembaga'),
            'alamat' => $request->get('alamat_lembaga'),
            'no_hp' => $request->get('no_hp_lembaga'),
            'keterangan' => $request->get('keterangan_lembaga')
        ]);
        
        $user->save();

        if ( Auth::user()->role === 'STAFF' ) {
            return redirect('user/ALL')->with('message', 'Data Member Berhasil diubah');
        } else {
            return redirect('user-profile')->with('message', 'Data Profil Berhasil diubah');
        }
    }

    public function profile()
    {
        return view('user.profile');
    }

}
