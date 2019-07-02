@extends('layouts.dashboard')

@section('pageTitle', 'My Profile')
@section('pageHeader', 'My Profile')

@push('customCss')

@endpush

@section('content')

    <!-- Profile -->
    <div class="col-lg-6 col-md-12">
        <div class="dashboard-list-box margin-top-0">
            <h4 class="gray">Informasi Profile</h4>
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
                    <input value="{{ \Auth::user()->nama }}" type="text">

                    <label>No Hp</label>
                    <input value="{{ \Auth::user()->no_hp }}" type="text">

                    <label>Email</label>
                    <input value="{{ \Auth::user()->email }}" type="text">

                    <label>Alamat</label>
                    <textarea name="notes" id="notes" cols="30" rows="10">{{ \Auth::user()->alamat }}</textarea>

                    <label>Jenis Kelamin</label>
                    <select class="chosen-select-no-single" >
                        <option label="blank">Pilih Kelamin</option>
                        <option {{ \Auth::user()->jenis_kelamin == 1 ? 'selected' : '' }}>Pria</option>
                        <option {{ \Auth::user()->jenis_kelamin == 0 ? 'selected' : '' }}>Wanita</option>
                    </select>

                    <label>Role</label>
                    <select class="chosen-select-no-single" >
                        <option label="blank">Pilih Role</option>
                        <option {{ \Auth::user()->role == 'ADMIN' ? 'selected' : '' }}>ADMIN</option>
                        <option {{ \Auth::user()->role == 'STAFF' ? 'selected' : '' }}>STAFF</option>
                        <option {{ \Auth::user()->role == 'UMUM' ? 'selected' : '' }}>UMUM</option>
                        <option {{ \Auth::user()->role == 'LEMBAGA' ? 'selected' : '' }}>LEMBAGA</option>
                    </select>
                </div>

                <a class="button margin-top-15">Simpan</a>
                <a class="button margin-top-15" href="{{ route('user.index',['type'=>'ALL']) }}">Batal</a>

            </div>
        </div>
    </div>

    <!-- Change Password -->
    <div class="col-lg-6 col-md-12">
        <div class="dashboard-list-box margin-top-0">
            <h4 class="gray">Change Password</h4>
            <div class="dashboard-list-box-static">

                <!-- Change Password -->
                <div class="my-profile">
                    <label class="margin-top-0">Current Password</label>
                    <input type="password">

                    <label>New Password</label>
                    <input type="password">

                    <label>Confirm New Password</label>
                    <input type="password">

                    <button class="button margin-top-15">Change Password</button>
                </div>

            </div>
        </div>
    </div>

@endsection
@push('customJs')

@endpush
