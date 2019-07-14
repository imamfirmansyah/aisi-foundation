@extends('layouts.dashboard')

@section('pageTitle', 'Detail Member')
@section('pageHeader', empty( $data->id ) ? 'Tambah Member' : 'Edit Profile')
@section('breadcrumb', empty( $data->id ) ? 'Tambah Member' : 'Edit Profile')
@push('customCss')

@endpush

@section('content')
    <div class="row">
{{--         @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif --}}
        <form method="POST" action="{{ route('user.update', ['id' => $data->id] ) }}" enctype="multipart/form-data">
            @method('PUT')
            @csrf
        <div class="col-lg-6 col-md-12">
            <div class="dashboard-list-box margin-top-0">
                <h4 class="gray">Informasi Member</h4>
                
                <div class="dashboard-list-box-static aisi-form">
                    <!-- Avatar -->
                    <div class="edit-profile-photo">
                        <img class="margin-bottom-10" width="260" height="auto" src="{{ $data->foto !== null ? url( 'storage/avatar/'. $data->foto ) : url( 'images/avatar-boy.png' )  }}">
                        <input type="file" name="foto" class="aisi-input-file">
                        @if ($errors->has('foto'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('foto') }}</strong>
                        </span>
                        @endif
                    </div>

                    <!-- Details -->
                    <div class="my-profile">

                        <label>Nama</label>
                        <input name="nama" value="{{ $data->nama }}" type="text">
                        @if ($errors->has('nama'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('nama') }}</strong>
                        </span>
                        @endif

                        <label>No Hp</label>
                        <input name="no_hp" value="{{ $data->no_hp }}" type="text">
                        @if ($errors->has('no_hp'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('no_hp') }}</strong>
                        </span>
                        @endif

                        <label>Email</label>
                        <input name="email" value="{{ $data->email }}" type="text" disabled>
                        
                        <label>Alamat</label>
                        <textarea name="alamat" cols="30" rows="10">{{ $data->alamat }}</textarea>
                        @if ($errors->has('alamat'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('alamat') }}</strong>
                        </span>
                        @endif

                        <label>Jenis Kelamin</label>
                        <select name="jenis_kelamin" class="chosen-select-no-single" >
                            <option value="" label="blank">Pilih Jenis Kelamin</option>
                            <option value="1" {{ $data->jenis_kelamin == 1 ? 'selected' : '' }}>Pria</option>
                            <option value="0" {{ $data->jenis_kelamin == 0 ? 'selected' : '' }}>Wanita</option>
                        </select>
                        @if ($errors->has('jenis_kelamin'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('jenis_kelamin') }}</strong>
                        </span>
                        @endif
                        
                        @if ( Auth::user()->role === 'STAFF')
                        <label>Role</label>
                        <select name="role" class="chosen-select-no-single" >
                            <option value="" label="blank">Pilih Role</option>
                            <option value="ADMIN" {{ $data->role === 'ADMIN' ? 'selected' : '' }}>ADMIN</option>
                            <option value="STAFF" {{ $data->role === 'STAFF' ? 'selected' : '' }}>STAFF</option>
                            <option value="UMUM" {{ $data->role === 'UMUM' ? 'selected' : '' }}>UMUM</option>
                            {{-- <option value="LEMBAGA" {{ $data->role === 'LEMBAGA' ? 'selected' : '' }}>LEMBAGA</option> --}}
                        </select>

                        <label>Status Validasi</label>
                        <select name="validate_status" class="chosen-select-no-single" >
                            <option value="" label="blank">Status</option>
                            <option value="1" {{ $data->validate_status == '1' ? 'selected' : '' }}>TERVALIDASI</option>
                            <option value="0" {{ $data->validate_status == '0' ? 'selected' : '' }}>BELUM TERVALIDASI</option>
                        </select>
                        @endif
                    </div>
                    
                    <div class="row with-forms">
                        <div class="col-md-6">
                            <input type="submit" class="submit button margin-top-15" value="Simpan">
                        </div>
                        <div class="col-md-6 text-right">
                            <a class="button margin-top-15" href="{{ route('user.profile') }}">Batal</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
    @if( !empty( $data->lembaga->id ) )
        <div class="col-lg-6 col-md-12">
            <div class="dashboard-list-box margin-top-0">
                <h4 class="gray">Informasi Lembaga</h4>

                <div class="dashboard-list-box-static aisi-form">

                    <!-- Change Password -->
                    <div class="my-profile">
                        <label class="margin-top-0">Nama</label>
                        <input name="nama_lembaga" value="{{ $data->lembaga->nama }}" type="text">
                        @if ($errors->has('nama_lembaga'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('nama_lembaga') }}</strong>
                        </span>
                        @endif

                        <label>Email</label>
                        <input name="email_lembaga" value="{{ $data->lembaga->email }}" type="text">
                        @if ($errors->has('email_lembaga'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('email_lembaga') }}</strong>
                        </span>
                        @endif

                        <label>No Hp</label>
                        <input name="no_hp_lembaga" value="{{ $data->lembaga->no_hp }}" type="text">
                        @if ($errors->has('no_hp_lembaga'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('no_hp_lembaga') }}</strong>
                        </span>
                        @endif

                        <label>Alamat</label>
                        <textarea name="alamat_lembaga" id="notes" cols="30" rows="10">{{ $data->lembaga->alamat }}</textarea>
                        @if ($errors->has('alamat_lembaga'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('alamat_lembaga') }}</strong>
                        </span>
                        @endif

                        <label>Keterangan</label>
                        <textarea name="keterangan_lembaga" id="notes" cols="30" rows="10">{{ $data->lembaga->keterangan }}</textarea>

                        @if ($errors->has('keterangan_lembaga'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('keterangan_lembaga') }}</strong>
                        </span>
                        @endif

                    </div>
                </div>
            </div>
        </div>
    @endif
    </form>
</div>

@endsection
@push('customJs')

@endpush
