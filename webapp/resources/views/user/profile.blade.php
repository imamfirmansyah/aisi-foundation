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
            <div class="user-profile-titlebar">
                <div class="user-profile-avatar"><img src="images/user-profile-avatar.jpg" alt=""></div>
                <div class="user-profile-name">
                    <h2>{{ Auth::user()->nama }}</h2>
                    <div class="star-rating" data-rating="5">
                        <div class="rating-counter"><a href="#listing-reviews">(60 reviews)</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
<div class="row">
    <!-- Sidebar -->
    <div class="col-lg-4 col-md-4 margin-top-0">
        <!-- Verified Badge -->
        @if (Auth::user()->validate_status === 1)
        <div class="verified-badge with-tip" style="background-color: #4a90e2;" data-tip-content="Akun ini telah terverifikasi dan dapat menggunakan fasilitas yang ada di Sistem Informasi">
            <i class="sl sl-icon-user-following"></i> Akun Terverifikasi
        </div>
        @else
        <div class="verified-badge with-tip" style="background-color: #f3103c;" data-tip-content="Akun ini belum terverifikasi dan tidak dapat menggunakan fasilitas yang ada di Sistem Informasi">
            <i class="sl sl-icon-user-unfollow"></i> Akun Belum Terverifikasi
        </div>
        @endif

        <!-- Contact -->
        <div class="boxed-widget margin-top-30 margin-bottom-50 aisi-border">
            <h3>Informasi Kontak</h3>
            <ul class="listing-details-sidebar">
                <li><i class="sl sl-icon-phone"></i> {{ Auth::user()->no_hp }}</li>
                <li><i class="fa fa-envelope-o"></i> <a href="mailto:{{ Auth::user()->email }}">{{ Auth::user()->email }}</a></li>
                <li><i class="fa {{ Auth::user()->jenis_kelamin == 1 ? 'fa-male' : 'fa-female' }}"></i> {{ Auth::user()->jenis_kelamin == 1 ? 'Pria' : 'Wanita' }}</li>
                <li><i class="fa fa-home"></i> {{ Auth::user()->alamat }}</li>
                <li>Terdaftar Sebagai Kategori : <strong>{{ Auth::user()->role }}</strong></li>
            </ul>
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
