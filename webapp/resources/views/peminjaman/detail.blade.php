@extends('layouts.dashboard')

@section('pageTitle', 'Peminjaman Inventaris')
@section('pageHeader', empty($data['dana']->id) ? 'Tambah Peminjaman' : 'Edit Peminjaman')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section">

        <!-- Headline -->
        <div class="add-listing-headline">
            <h3><i class="sl sl-icon-doc"></i> Informasi Peminjaman</h3>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Member</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih Member</option>
                    @foreach($data['user'] as $key => $user)
                    <option {{ @$user->id == @$data['peminjaman']->id_user ? 'selected' : '' }}>{{ $user->nama }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-6">
                <h5>Barang</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih Barang</option>
                    @foreach($data['barang'] as $key => $barang)
                        <option {{ @$barang->id == @$data['peminjaman']->id_barang ? 'selected' : '' }}>{{ $barang->nama }}</option>
                    @endforeach
                </select>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Kegiatan</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih Kegiatan</option>
                    @foreach($data['kegiatan'] as $key => $kegiatan)
                        <option {{ @$kegiatan->id == @$data['peminjaman']->id_kegiatan ? 'selected' : '' }}>{{ $kegiatan->judul }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-6">
                <h5>Keterangan</h5>
                <textarea class="WYSIWYG" name="summary" cols="40" rows="3" id="summary" spellcheck="true">{{ @$data['peminjaman']->keterangan }}</textarea>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Tanggal Pinjam</h5>
                <input class="search-field" type="text" value="{{ @$data['peminjaman']->tgl_pinjam }}"/>
            </div>
            <div class="col-md-6">
                <h5>Tanggal Kembali</h5>
                <input class="search-field" type="text" value="{{ @$data['peminjaman']->tgl_kembali }}"/>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Status</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih status</option>
                    <option {{ @$data['peminjaman']->status == 'ACTIVE' ? 'selected' : '' }}>ACTIVE</option>
                    <option {{ @$data['peminjaman']->status == 'INACTIVE' ? 'selected' : '' }}>INACTIVE</option>
                </select>
            </div>
        </div>

        <a class="button margin-top-15">Simpan</a>
        <a class="button margin-top-15" href="{{ route('peminjaman.index') }}">Batal</a>

    </div>
    <!-- Section / End -->

@endsection
@push('customJs')

@endpush
