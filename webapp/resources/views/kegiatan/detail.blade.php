@extends('layouts.dashboard')

@section('pageTitle', 'Detail Kegiatan')
@section('pageHeader', 'Detail Kegiatan')
@section('breadcrumb', 'Detail Kegiatan')

@push('customCss')

@endpush

@section('content')
    <div class="row">
        <div class="col-md-12">
            {{-- {{ dd($data) }} --}}
            

            <!-- Content -->
            <h3>Nama Kegiatan : {{ $data->nama }}</h3>
            <span>Deskripsi Kegiatan : {{ $data->deskripsi }}</span>
            <p>
                Tanggal Kegiatan : <strong>{{ $data->tgl_kegiatan }}</strong><br>
                Status : <strong>{{ $data->status }}</strong> <br>
                File Proposal : <a href="{{ url('storage/proposal/'. $data->proposal_kegiatan ) }}">{{ $data->proposal_kegiatan }}</a> <br>
            </p>
            @if($data->status === 'DITERIMA')
            <p>
                <strong>Informasi Dokumentasi</strong> <br>
                Link Dokumentasi : {!! $data['dokumentasi'][0]->file !== null ? '<a target="_blank" href="'. $data['dokumentasi'][0]->file .'">Menuju Link</a>' : 'Belum Tersedia' !!}<br>
                Keterangan Dokumentasi : {{ $data['dokumentasi'][0]->keterangan !== null ? $data['dokumentasi'][0]->keterangan : "Belum Tersedia" }} <br>
            </p>
            <p>
                <strong>Status Pengajuan Dana : {{ $data->dana->status }}</strong>
                    @if($data->dana->status === 'DISETUJUI')
                    <ul>
                        <li>Jumlah Pengajuan : Rp. {{ number_format($data->dana->jumlah_pengajuan) }}</li>
                        <li>Jumlah Pencairan : Rp. {{ number_format($data->dana->jumlah_pencairan) }}</li>
                        <li>Tanggal Pengajuan : {{ $data->dana->tgl_pengajuan }}</li>
                        <li>Tanggal Pencairan : {{ $data->dana->tgl_pencairan }}</li>
                        <li>Keterangan : {{ $data->dana->keterangan }}</li>
                    </ul>
                    @endif
            </p>
            @endif
            <a class="button" href="{{ route('kegiatan.index', ['type'=>'ALL']) }}">Kembali</a>
        </div>
    </div>
    
@endsection
@push('customJs')

@endpush
