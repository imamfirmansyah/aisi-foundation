@extends('layouts.dashboard')

@section('pageTitle', 'Barang dan Inventaris')
@section('pageHeader', 'Tambah Barang')
@section('breadcrumb', 'Tambah Barang')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section aisi-form">
        <form method="POST" action="{{ route('barang.save') }}" enctype="multipart/form-data">
            @csrf
            <!-- Headline -->
            <div class="add-listing-headline">
                <h3><i class="sl sl-icon-doc"></i> Informasi Barang</h3>
            </div>
            
            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5>Nama</h5>
                    <input type="text" name="nama" value="{{ old('nama') }}" placeholder="Nama Barang">
                    @if ($errors->has('nama'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('nama') }}</strong>
                    </span>
                    @endif
                </div>
                <div class="col-md-12">
                    <h5>Kategori Barang</h5>
                    <select name="kategori_barang" class="chosen-select-no-single">
                        <option value="" label="blank">Pilih Kategori</option>
                        @foreach( $data as $item )
                        <option value="{{ $item->id }}" {{ old('kategori_barang') == $item->id ? 'selected' : '' }}>{{ $item->nama }}</option>
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
                    <textarea name="keterangan" cols="40" rows="3" placeholder="Keterangan Barang">{{ old('keterangan') }}</textarea>
                </div>
                <div class="col-md-12">
                    <h5>Foto Barang</h5>
                    <input type="file" name="foto" class="aisi-input-file">
                    @if ($errors->has('foto'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('foto') }}</strong>
                    </span>
                    @endif
                </div>
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
