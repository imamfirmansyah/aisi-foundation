<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;

use App\User;

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

        if (Schema::hasTable('users'))
        {
            View::share('jml_user_lembaga', User::where('role','LEMBAGA')->count() );
            View::share('jml_user_umum', User::where('role','UMUM')->count() );
            View::share('jml_semua_user', User::count() );
        }
    }
}
