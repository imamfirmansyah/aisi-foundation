<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Auth;

use App\User;
use App\Kegiatan;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        if (Schema::hasTable('user'))
        {
            View::share('jml_user_lembaga', User::where('role','LEMBAGA')->count() );
            View::share('jml_user_umum', User::where('role','UMUM')->count() );
            View::share('jml_semua_user', User::count() );
        }

        if ( Schema::hasTable('user') ) {
            View::share('jml_pengajuan_kegiatan', Kegiatan::where('status','PENGAJUAN')->count() );
            View::share('jml_kegiatan_diterima', Kegiatan::where('status','DITERIMA')->count() );
            View::share('jml_kegiatan_ditolak', Kegiatan::where('status','DITOLAK')->count() );
            View::share('jml_semua_kegiatan', Kegiatan::count() );
        } 
    }
}
