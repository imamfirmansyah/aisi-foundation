@extends('login_layouts.template')

@section('pageTitle', 'Login')

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
                        <h3>Login ke Dashboard</h3>
                    </div>
                    <div class="aisi-login-content">
                        <form method="POST" action="{{ route('login') }}">
                            @csrf

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <div class="input-with-icon medium-icons">
                                        <input id="email" type="email" placeholder="Email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>
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

                            <div class="form-group row align-items-center d-flex margin-top-20">
                                <div class="col-md-6">
                                    <div class="checkboxes">
                                        <input type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                                        <label for="remember">
                                            {{ __('Ingat Saya') }}
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-6 text-right">
                                    <p class="margin-bottom-0">
                                        @if (Route::has('password.request'))
                                        <span class="lost_password">    
                                            <a class="forgot-password" href="{{ route('password.request') }}">
                                                {{ __('Lupa Password?') }}
                                            </a>
                                        </span>
                                        @endif
                                    </p>
                                </div>
                            </div>

                            <div class="form-group row margin-top-35">
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="button fullwidth">
                                        {{ __('Login') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="aisi-login-footer">
                        <p>Tidak Memiliki Akun? <a href="{{ route('register') }}">Registrasi disini!</a></p>
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
