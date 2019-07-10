<?php

namespace App\Http\Controllers;

use App\User;
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
        
        return view('user.detail', ['data'=>$data]);
    }

    public function profile()
    {
        return view('user.profile');
    }

}
