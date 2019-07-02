@extends('layouts.dashboard')

@section('pageTitle', 'Detail Member')
@section('pageHeader', empty($data->id) ? 'Tambah Member' : 'Edit Member')

@push('customCss')

@endpush

@section('content')

    <!-- Profile -->
    <div class="col-lg-6 col-md-12">
        <div class="dashboard-list-box margin-top-0">
            <h4 class="gray">Informasi Member</h4>
            <div class="dashboard-list-box-static">

                <!-- Avatar -->
                <div class="edit-profile-photo">
                    <img src="{{ url('images/user-avatar.jpg') }}" alt="">
                    <div class="change-photo-btn">
                        <div class="photoUpload">
                            <span><i class="fa fa-upload"></i> Upload Photo</span>
                            <input type="file" class="upload" />
                        </div>
                    </div>
                </div>

                <!-- Details -->
                <div class="my-profile">

                    <label>Nama</label>
                    <input value="{{ @$data->nama }}" type="text">

                    <label>No Hp</label>
                    <input value="{{ @$data->no_hp }}" type="text">

                    <label>Email</label>
                    <input value="{{ @$data->email }}" type="text">

                    <label>Alamat</label>
                    <textarea name="notes" id="notes" cols="30" rows="10">{{ @$data->alamat }}</textarea>

                    <label>Jenis Kelamin</label>
                    <select class="chosen-select-no-single" >
                        <option label="blank">Pilih Role</option>
                        <option {{ @$data->jenis_kelamin == 1 ? 'selected' : '' }}>Pria</option>
                        <option {{ @$data->jenis_kelamin == 0 ? 'selected' : '' }}>Wanita</option>
                    </select>

                    <label>Role</label>
                    <select class="chosen-select-no-single" >
                        <option label="blank">Pilih Role</option>
                        <option {{ @$data->role == 'ADMIN' ? 'selected' : '' }}>ADMIN</option>
                        <option {{ @$data->role == 'STAFF' ? 'selected' : '' }}>STAFF</option>
                        <option {{ @$data->role == 'UMUM' ? 'selected' : '' }}>UMUM</option>
                        <option {{ @$data->role == 'LEMBAGA' ? 'selected' : '' }}>LEMBAGA</option>
                    </select>
                </div>

                <a class="button margin-top-15">Simpan</a>
                <a class="button margin-top-15" href="{{ route('user.index',['type'=>'ALL']) }}">Batal</a>

            </div>
        </div>
    </div>

    @if(!empty(@$data->lembaga->id))
    <!-- Change Password -->
    <div class="col-lg-6 col-md-12">
        <div class="dashboard-list-box margin-top-0">
            <h4 class="gray">Informasi Lembaga</h4>
            <div class="dashboard-list-box-static">

                <!-- Change Password -->
                <div class="my-profile">
                    <label>Nama</label>
                    <input value="{{ @$data->lembaga->nama }}" type="text">

                    <label>Email</label>
                    <input value="{{ @$data->lembaga->email }}" type="text">

                    <label>No Hp</label>
                    <input value="{{ @$data->lembaga->no_hp }}" type="text">

                    <label>Alamat</label>
                    <textarea name="notes" id="notes" cols="30" rows="10">{{ @$data->lembaga->alamat }}</textarea>

                    <label>Keterangan</label>
                    <textarea name="notes" id="notes" cols="30" rows="10">{{ @$data->lembaga->keterangan }}</textarea>

                </div>

            </div>
        </div>
    </div>
    @endif

@endsection
@push('customJs')

@endpush
