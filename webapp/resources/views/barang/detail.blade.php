@extends('layouts.dashboard')

@section('pageTitle', 'Barang dan Inventaris')
@section('pageHeader', empty($data->id) ? 'Tambah Barang' : 'Edit Barang')

@push('customCss')

@endpush

@section('content')

    <!-- Section -->
    <div class="add-listing-section">

        <!-- Headline -->
        <div class="add-listing-headline">
            <h3><i class="sl sl-icon-doc"></i> Informasi Barang</h3>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Kode</h5>
                <input class="search-field" type="text" value="{{ @$data->kode_barang }}"/>
            </div>
            <div class="col-md-6">
                <h5>Nama</h5>
                <input class="search-field" type="text" value="{{ @$data->nama }}"/>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Jenis</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih Jenis</option>
                    <option {{ @$data->status == 'ATK' ? 'selected' : '' }}>ATK</option>
                    <option {{ @$data->status == 'ELEKTRONIK' ? 'selected' : '' }}>ELEKTRONIK</option>
                    <option {{ @$data->status == 'RUANGAN' ? 'selected' : '' }}>RUANGAN</option>
                </select>
            </div>
            <div class="col-md-6">
                <h5>Keterangan</h5>
                <textarea class="WYSIWYG" name="summary" cols="40" rows="3" id="summary" spellcheck="true">{{ @$data->keterangan }}</textarea>
            </div>
        </div>

        <!-- Title -->
        <div class="row with-forms">
            <div class="col-md-6">
                <h5>Status</h5>
                <select class="chosen-select-no-single" >
                    <option label="blank">Pilih status</option>
                    <option {{ @$data->status == 'ACTIVE' ? 'selected' : '' }}>ACTIVE</option>
                    <option {{ @$data->status == 'INACTIVE' ? 'selected' : '' }}>INACTIVE</option>
                </select>
            </div>
            <div class="col-md-6">
                <h5>Foto</h5>
                <div class="edit-profile-photo">
                    <img src="{{ url('images/user-avatar.jpg') }}" alt="">
                    <div class="change-photo-btn">
                        <div class="photoUpload">
                            <span><i class="fa fa-upload"></i> Upload Photo</span>
                            <input type="file" class="upload" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <a class="button margin-top-15">Simpan</a>
        <a class="button margin-top-15" href="{{ route('barang.index') }}">Batal</a>

    </div>
    <!-- Section / End -->

@endsection
@push('customJs')

@endpush
