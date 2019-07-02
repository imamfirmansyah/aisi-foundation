<?php

namespace App\Http\Controllers;

use App\Barang;
use Illuminate\Http\Request;

class BarangController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
         $data = Barang::all();
         return view('barang.index',['data'=>$data]);
    }

    public function detail($id)
    {
        $data = Barang::find($id);
        return view('barang.detail',['data'=>$data]);
    }


}
