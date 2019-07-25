@extends('layouts.dashboard')

@section('pageTitle', 'Barang dan Inventaris')
@section('pageHeader', 'Ubah Barang')
@section('breadcrumb', 'Ubah Barang')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section aisi-form">
        <form method="POST" action="{{ route('barang.update', ['id' => $data['barang']->kode_barang] ) }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf
            
            <!-- Headline -->
            <div class="add-listing-headline">
                <h3><i class="sl sl-icon-doc"></i> Informasi Barang</h3>
            </div>

            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5>Nama</h5>
                    <input type="text" name="nama" value="{{ $data['barang']->nama }}">
                    @if ($errors->has('nama'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('nama') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Jenis</h5>
                    <select name="kategori_barang" class="chosen-select-no-single">
                        <option value="" label="blank">Pilih Jenis</option>
                        @foreach( $data['kategori_barang'] as $item )
                        <option value="{{ $item->id }}" {{ $data['barang']->id_kategori_barang == $item->id ? 'selected' : '' }}>{{ $item->nama }}</option>
                        @endforeach
                    </select>
                    @if ($errors->has('kategori_barang'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('kategori_barang') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Keterangan</h5>
                    <textarea name="keterangan" cols="40" rows="3">{{ $data['barang']->keterangan }}</textarea>
                </div>
                <div class="col-md-12">
                    <h5>Foto Barang</h5>
                    <img width="260" height="auto" src="{{ url( 'storage/barang/'. $data['barang']->foto ) }}">
                    <input type="file" name="foto" class="aisi-input-file">
                    @if ($errors->has('foto'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('foto') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Status Barang</h5>
                    <select name="status" class="chosen-select-no-single" >
                        <option value="" label="blank">Pilih status</option>
                        <option value="1" {{ ($data['barang']->status) ? 'selected' : '' }}>AKTIF</option>
                        <option value="0" {{ !($data['barang']->status) ? 'selected' : '' }}>TIDAK AKTIF</option>
                    </select>
                    @if ($errors->has('status'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('status') }}</strong>
                    </span>
                    @endif
                </div>
            </div>

            <div class="row with-forms">
                <div class="col-md-6">
                    <input type="submit" class="submit button" value="Simpan">
                </div>
                <div class="col-md-6 text-right">
                    <a class="button" href="{{ route('barang.index') }}">Batal</a>
                </div>
            </div>
        
        </form>
    </div>
    <!-- Section / End -->

@endsection
@push('customJs')

@endpush
