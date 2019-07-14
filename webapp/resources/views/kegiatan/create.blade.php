@extends('layouts.dashboard')

@section('pageTitle', 'Tambah Kegiatan')
@section('pageHeader', 'Tambah Kegiatan')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section">

        <!-- Headline -->
        <div class="add-listing-headline">
            <h3><i class="sl sl-icon-doc"></i> Informasi Kegiatan</h3>
        </div>


        <a class="button margin-top-15">Simpan</a>
        <a class="button margin-top-15" href="{{ route('kegiatan.index',['type'=>'ALL']) }}">Batal</a>

    </div>
    <!-- Section / End -->

@endsection
@push('customJs')

@endpush
