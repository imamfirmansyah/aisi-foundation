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
                        <h3>Registrasi</h3>
                    </div>
                    <div class="aisi-login-content">
                        <form method="POST" action="{{ route('register') }}">
                            @csrf

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <div class="input-with-icon medium-icons">
                                        <input id="name" type="text" placeholder="Nama" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required>
                                        <i class="im im-icon-Male"></i>
                                    </div>

                                    @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>

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

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <div class="input-with-icon medium-icons">    
                                        <input id="password-confirm" type="password" placeholder="Konfirmasi Password" class="form-control" name="password_confirmation" required>
                                        <i class="im im-icon-Lock-2"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-6">
                                    <div class="interactive-effect">
                                        <div class="radio">
                                            <input type="radio" name="remember[]" value="1">
                                            <label for="remember">
                                                Remember Me
                                                <span class="radio-label"></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="radio">
                                            <input type="radio" name="remember[]" value="0">
                                            <label for="remember">
                                                Remember Me 1
                                                <span class="radio-label"></span>
                                            </label>
                                        </div>
                                </div>
                            </div>
                            
                            <div class="form-group row margin-top-35">
                                <div class="col-md-12 text-center">
                                    <button type="submit" class="button fullwidth">
                                        {{ __('Registrasi') }}
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="aisi-login-footer">
                        <p>Sudah Memiliki Akun? <a href="{{ route('login') }}">Login disini!</a></p>
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

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Register') }} xxxx</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
