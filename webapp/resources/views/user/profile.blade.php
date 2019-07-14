@extends('layouts.dashboard')

@section('pageTitle', 'My Profile')
@section('pageHeader', 'My Profile')
@section('breadcrumb', 'My Profile')

@push('customCss')

@endpush

@section('content')
<div id="titlebar" class="gradient">
    <div class="row">
        <div class="col-md-12">
            <div class="user-profile-titlebar aisi-profile-titlebar">
                <div class="user-profile-avatar"><img src="{{ Auth::user()->foto !== "" ? url( 'storage/avatar/'. Auth::user()->foto ) : url( 'images/avatar-boy.png' )  }}" alt=""></div>
                <div class="user-profile-name">
                    <h2>{{ Auth::user()->nama }}</h2>
                </div>
            </div>
        </div>
    </div>
</div>
    
<div class="row">
    <!-- Sidebar -->
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4">
                <!-- Verified Badge -->
                @if (Auth::user()->validate_status === 1)
                <div class="verified-badge with-tip" style="background-color: #4a90e2;" data-tip-content="Akun ini telah terverifikasi dan dapat menggunakan fasilitas yang ada di Sistem Informasi">
                    <i class="sl sl-icon-user-following"></i> Akun Terverifikasi
                </div>
                @else
                <div class="verified-badge with-tip" style="background-color: #f3103c;" data-tip-content="Untuk Verifikasi Akun, Silahkan Lengkapi Informasi Profil">
                    <i class="sl sl-icon-user-unfollow"></i> Akun Belum Terverifikasi
                </div>
                @endif

                @if( session()->has('message') )
                <div class="notification success closeable margin-top-20">
                    <p>{{ session()->get('message') }}</p>
                    <a class="close" href="#"></a>
                </div>
                @endif    
            </div>
        </div>
    </div>

    <div class="{{ !empty( Auth::user()->lembaga->id ) ? "col-md-12" : "col-md-6" }} margin-top-0">
        <!-- Contact -->
        <div class="boxed-widget margin-top-20 margin-bottom-50 aisi-border">
            <div class="row">
                <div class="{{ !empty( Auth::user()->lembaga->id ) ? "col-md-6" : "col-md-12" }}">
                    <h3>Informasi Pesonal</h3>
                    <ul class="listing-details-sidebar">
                        <li><i class="sl sl-icon-phone"></i> No Telp : {{ Auth::user()->no_hp }}</li>
                        <li><i class="fa fa-envelope-o"></i> Email : <a href="mailto:{{ Auth::user()->email }}">{{ Auth::user()->email }}</a></li>
                        <li><i class="fa {{ Auth::user()->jenis_kelamin === 1 ? 'fa-male' : 'fa-female' }}"></i> {{ Auth::user()->jenis_kelamin === 1 ? 'Pria' : 'Wanita' }}</li>
                        <li><i class="fa fa-home"></i> Alamat : {{ Auth::user()->alamat }}</li>
                        <li>Terdaftar Sebagai : <strong>{{ Auth::user()->role }}</strong></li>
                    </ul>
                </div>
                @if( !empty( Auth::user()->lembaga->id ) )
                <div class="col-md-6">
                    <h3>Informasi Lembaga</h3>
                    <ul class="listing-details-sidebar">
                        <li><i class="fa fa-group"></i> {{ Auth::user()->lembaga->nama }}</li>
                        <li><i class="sl sl-icon-phone"></i> No Telp : {{ Auth::user()->lembaga->no_hp }}</li>
                        <li><i class="fa fa-envelope-o"></i> Email : <a href="mailto:{{ Auth::user()->email }}">{{ Auth::user()->lembaga->email }}</a></li>
                        <li><i class="fa fa-home"></i> Alamat : {{ Auth::user()->lembaga->alamat }}</li>
                        <li>Keterangan Singkat : <strong>{{ Auth::user()->lembaga->keterangan }}</strong></li>
                    </ul>
                </div>
                @endif
            </div>

            <a href="{{ route('user.detail', ['id' => Auth::user()->id]) }}" class="send-message-to-owner button ">
                <i class="sl sl-icon-pencil"></i> Update Profile
            </a>
        </div>
        <!-- Contact / End-->
    </div>

    <!-- Sidebar / End -->

    {{-- <div class="col-lg-8 col-md-8">
        <div class="dashboard-list-box margin-top-0">
            <h4 class="gray">{{ __('Reset Password') }}</h4>
            
            <div class="dashboard-list-box-static">
                <form method="POST" action="{{ route('password.update') }}">
                    @csrf

                    <!-- Change Password -->
                    <div class="my-profile">
                        <label class="margin-top-0">{{ __('E-Mail Address') }}</label>
                        <input type="email"name="email" value="{{ Auth::user()->email }}" disabled>

                        <label class="margin-top-0">Current Password</label>
                        <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                        @if ($errors->has('password'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                        @endif

                        <label>New Password</label>
                        <input type="password">

                        <label>Confirm New Password</label>
                        <input type="password">

                        <button class="button margin-top-15">Change Password</button>
                    </div>

                </form>
            </div>
        </div>
    </div> --}}
</div>
@endsection

@push('customJs')

@endpush
