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
                    <h5>Jenis</h5>
                    <select name="jenis_barang" class="chosen-select-no-single">
                        <option value="" label="blank">Pilih Jenis</option>
                        <option value="ATK" {{ old('jenis_barang') === "ATK" ? 'selected' : '' }}>ATK</option>
                        <option value="ELEKTRONIK" {{ old('jenis_barang') === "ELEKTRONIK" ? 'selected' : '' }}>ELEKTRONIK</option>
                        <option value="RUANGAN" {{ old('jenis_barang') === "RUANGAN" ? 'selected' : '' }}>RUANGAN</option>
                        <option value="LAIN-LAIN" {{ old('jenis_barang') === "LAIN-LAIN" ? 'selected' : '' }}>LAIN-LAIN</option>
                    </select>
                    @if ($errors->has('jenis_barang'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('jenis_barang') }}</strong>
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
