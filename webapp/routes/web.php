<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'DashboardController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/dashboard', 'DashboardController@index')->name('dashboard');

Route::get('/barang','BarangController@index')->name('barang.index');
Route::get('/barang-detail/{id}','BarangController@detail')->name('barang.detail');
Route::post('/barang-save','BarangController@save')->name('barang.save');
Route::post('/barang-delete','BarangController@delete')->name('barang.delete');

Route::get('/user/{type}','UserController@index')->name('user.index');
Route::get('/user-profile','UserController@profile')->name('user.profile');
Route::get('/user-detail/{id}','UserController@detail')->name('user.detail');
Route::post('/user-save','UserController@save')->name('user.save');
Route::post('/user-delete','UserController@delete')->name('user.delete');

Route::get('/dana','DanaController@index')->name('dana.index');
Route::get('/dana-detail/{id}','DanaController@detail')->name('dana.detail');
Route::post('/dana-save','DanaController@save')->name('dana.save');
Route::post('/dana-delete','DanaController@delete')->name('dana.delete');

Route::get('/kegiatan/{type}','KegiatanController@index')->name('kegiatan.index');
Route::get('/kegiatan-detail/{id}','KegiatanController@detail')->name('kegiatan.detail');
Route::post('/kegiatan-save','KegiatanController@save')->name('kegiatan.save');
Route::post('/kegiatan-delete','KegiatanController@delete')->name('kegiatan.delete');

Route::get('/peminjaman','PeminjamanController@index')->name('peminjaman.index');
Route::get('/peminjaman-detail/{id}','PeminjamanController@detail')->name('peminjaman.detail');
Route::post('/peminjaman-save','PeminjamanController@save')->name('peminjaman.save');
Route::post('/peminjaman-delete','PeminjamanController@delete')->name('peminjaman.delete');

