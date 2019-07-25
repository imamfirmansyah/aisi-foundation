@extends('layouts.dashboard')

@section('pageTitle', 'Barang dan Inventaris')
@section('pageHeader', 'Ubah Kategori')
@section('breadcrumb', 'Ubah Kategori')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section aisi-form">
        <form method="POST" action="{{ route('kategori_barang.update', ['id' => $data->id] ) }}">
            @method('PUT')
            @csrf
            
            <!-- Headline -->
            <div class="add-listing-headline">
                <h3><i class="sl sl-icon-doc"></i> Informasi Kategori</h3>
            </div>

            <!-- Title -->
            <div class="row with-forms">
                <div class="col-md-12">
                    <h5>Nama</h5>
                    <input type="text" name="nama" value="{{ $data->nama }}">
                    @if ($errors->has('nama'))
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $errors->first('nama') }}</strong>
                    </span>
                    @endif
                </div>
            </div>

            <div class="row with-forms">
                <div class="col-md-6">
                    <input type="submit" class="submit button" value="Simpan">
                </div>
                <div class="col-md-6 text-right">
                    <a class="button" href="{{ route('kategori_barang.index') }}">Batal</a>
                </div>
            </div>
        
        </form>
    </div>
    <!-- Section / End -->

@endsection
@push('customJs')

@endpush
