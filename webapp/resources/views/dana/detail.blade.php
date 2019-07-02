@extends('layouts.dashboard')

@section('pageTitle', 'Pengajuan Dana')
@section('pageHeader', empty($data['dana']->id) ? 'Tambah Pengajuan Dana' : 'Edit Pengajuan Dana')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section">

        <!-- Headline -->
        <div class="add-listing-headline">
            <h3><i class="sl sl-icon-doc"></i> Informasi Pengajuan Dana</h3>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Kegiatan</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih Kegiatan</option>
                    @foreach($data['kegiatan'] as $key => $kegiatan)
                    <option {{ @$kegiatan->id == @$data['dana']->id_kegiatan ? 'selected' : '' }}>{{ $kegiatan->judul }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-6">
                <h5>Keterangan</h5>
                <input class="search-field" type="text" value="{{ @$data['dana']->keterangan }}"/>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Jumlah Pengajuan</h5>
                <input class="search-field" type="text" value="{{ @$data['dana']->jumlah_pengajuan }}"/>
            </div>
            <div class="col-md-6">
                <h5>Jumlah Pencairan</h5>
                <input class="search-field" type="text" value="{{ @$data['dana']->jumlah_pencairan }}"/>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Tanggal Pengajuan</h5>
                <input class="search-field" type="text" value="{{ @$data['dana']->tgl_pengajuan }}"/>
            </div>
            <div class="col-md-6">
                <h5>Tanggal Pencairan</h5>
                <input class="search-field" type="text" value="{{ @$data['dana']->tgl_pencairan }}"/>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Status</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih status</option>
                    <option {{ @$data['dana']->status == 'PROSES' ? 'selected' : '' }}>PROSES</option>
                    <option {{ @$data['dana']->status == 'DITOLAK' ? 'selected' : '' }}>DITOLAK</option>
                    <option {{ @$data['dana']->status == 'DISETUJUI' ? 'selected' : '' }}>DISETUJUI</option>
                </select>
            </div>
        </div>

        <a class="button margin-top-15">Simpan</a>
        <a class="button margin-top-15" href="{{ route('dana.index') }}">Batal</a>

    </div>
    <!-- Section / End -->

@endsection
@push('customJs')

@endpush
