@extends('layouts.auth')

@section('pageTitle', __('Registrasi'))

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
                                        <input id="nama" type="text" placeholder="Nama" class="form-control{{ $errors->has('nama') ? ' is-invalid' : '' }}" name="nama" value="{{ old('nama') }}" required>
                                        <i class="im im-icon-Male"></i>
                                    </div>

                                    @if ($errors->has('nama'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('nama') }}</strong>
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
                                <div class="col-md-12 text-center">
                                    <div class="radios">
                                        <div class="radio">
                                            <input type="radio" id="radio-lembaga" name="role" value="LEMBAGA">
                                            <label for="radio-lembaga">
                                                <div class="checker"></div>Lembaga
                                            </label>
                                        </div>

                                        <div class="radio">
                                            <input type="radio" id="radio-umum" name="role" value="UMUM">
                                            <label for="radio-umum">
                                                <div class="checker"></div>Umum
                                            </label>
                                        </div>
                                    </div>

                                    @if ($errors->has('role'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('role') }}</strong>
                                    </span>
                                    @endif
                                </div>
                            </div>
                            
                            <div class="form-group row margin-top-10">
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
@endsection
