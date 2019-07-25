@extends('layouts.auth')

@section('pageTitle', __('Reset Password'))

@push('customCss')
<link rel="stylesheet" href="{{ url('css/login.css')}}">
@endpush

@section('content')
<div class="aisi-login-container">
    <div class="container-fluid">
        <div class="row align-items-center">
            <div class="col-md-auto left-aisi-container">

                <div class="aisi-login-inner">
                    <div class="aisi-login-header">
                        <div class="logo-aisi">
                            <img src="{{ asset('images/logo-aisi.png') }}" alt="logo aisi foundation">
                        </div>
                        <h3>{{ __('Reset Password') }}</h3>
                    </div>
                    <div class="aisi-login-content">
                        <form method="POST" action="{{ route('password.update') }}">
                            @csrf

                            <input type="hidden" name="token" value="{{ $token }}">

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <div class="input-with-icon medium-icons">
                                        <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ $email ?? old('email') }}" required autofocus>
                                        <i class="im im-icon-Mail"></i>
                                    </div>

                                    @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <div class="input-with-icon medium-icons">
                                        <input id="password" type="password" placeholder="Password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
                                        <i class="im im-icon-Lock-2"></i>
                                    </div>

                                    @if ($errors->has('password'))
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <div class="input-with-icon medium-icons">
                                        <input id="password-confirm" type="password" placeholder="Konfirmasi Password" class="form-control" name="password_confirmation" required>
                                        <i class="im im-icon-Lock-2"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row margin-top-20">
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="button fullwidth">
                                        {{ __('Reset Password') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="aisi-login-footer">
                        <p>Kembali ke Halaman<a href="{{ route('login') }}">Login</a></p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md right-aisi-container">
                <div class="aisi-hero-background">
                    <div class="overlay-aisi-background"></div>
                    <div class="aisi-hero-content">    
                        <h1>Yayasan AISI Foundation</h1>
                        <p>Mitra Yang Profesional Dan Mandiri Dalam Pengembangan Potensi Pelajar</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection