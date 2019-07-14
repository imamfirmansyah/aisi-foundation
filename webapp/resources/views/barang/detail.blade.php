@extends('layouts.dashboard')

@section('pageTitle', 'Barang dan Inventaris')
@section('pageHeader', empty( $data->id ) ? 'Tambah Barang' : 'Edit Barang')
@section('breadcrumb', empty( $data->id ) ? 'Tambah Barang' : 'Edit Barang')

@push('customCss')

@endpush

@section('content')
    
    <div class="row">
        <div class="col-md-12">
            <div class="listing-item-container list-layout">
                <div class="listing-item">

                    <!-- Image -->
                    <div class="listing-item-image">
                        <img src="{{ url('storage/barang/'.$data->foto) }}" alt="{{ $data->nama }}">
                        <span class="tag">{{ $data->jenis_barang }}</span>
                    </div>

                    <!-- Content -->
                    <div class="listing-item-content">
                        <div class="listing-badge {{ $data->status ? "now-open" : "now-closed" }}">{{ $data->status ? "AKTIF" : "TIDAK AKTIF" }}</div>

                        <div class="listing-item-inner">
                            <h3>{{ $data->nama }}</h3>
                            <span>{{ $data->keterangan }}</span>
                            <p>Kode Barang <strong>{{ $data->kode_barang}}</strong></p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="button" href="{{ route('barang.index') }}">Kembali</a>
        </div>
    </div>
@endsection
@push('customJs')

@endpush
