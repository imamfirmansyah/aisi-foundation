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

/* -- barang dan inventaris -- */
Route::get('/barang','BarangController@index')->name('barang.index');
Route::get('/barang-create','BarangController@create')->name('barang.create');
Route::get('/barang-edit/{id}','BarangController@edit')->name('barang.edit');
Route::put('/barang-update/{id}','BarangController@update')->name('barang.update');
Route::get('/barang-detail/{id}','BarangController@detail')->name('barang.detail');
Route::post('/barang-save','BarangController@save')->name('barang.save');
Route::post('/barang-delete','BarangController@delete')->name('barang.delete');
Route::get('/barang-trash', 'BarangController@trash')->name('barang.trash');
Route::get('/barang-restore/{id}', 'BarangController@restore')->name('barang.restore');
Route::post('/barang-force-delete', 'BarangController@force_delete')->name('barang.force.delete');

/* -- katgori barang -- */
Route::get('/kategori-barang','KategoriBarangController@index')->name('kategori_barang.index');
Route::get('/kategori-barang-create','KategoriBarangController@create')->name('kategori_barang.create');
Route::post('/kategori-barang-save','KategoriBarangController@save')->name('kategori_barang.save');
Route::get('/kategori-barang-edit/{id}','KategoriBarangController@edit')->name('kategori_barang.edit');
Route::put('/kategori-barang-update/{id}','KategoriBarangController@update')->name('kategori_barang.update');
Route::post('/kategori-barang-delete','KategoriBarangController@delete')->name('kategori_barang.delete');
Route::get('/kategori-barang-trash', 'KategoriBarangController@trash')->name('kategori_barang.trash');
Route::get('/kategori-barang-restore/{id}', 'KategoriBarangController@restore')->name('kategori_barang.restore');
Route::post('/kategori-barang-force-delete', 'KategoriBarangController@force_delete')->name('kategori_barang.force.delete');

Route::get('/user/{type}','UserController@index')->name('user.index');
Route::get('/user-profile','UserController@profile')->name('user.profile');
Route::get('/user-detail/{id}','UserController@detail')->name('user.detail');
Route::post('/user-save','UserController@save')->name('user.save');
Route::post('/user-delete','UserController@delete')->name('user.delete');
Route::put('/user-update/{id}','UserController@update')->name('user.update');

Route::get('/dana','DanaController@index')->name('dana.index');
Route::get('/dana-detail/{id}','DanaController@detail')->name('dana.detail');
Route::post('/dana-save','DanaController@save')->name('dana.save');
Route::post('/dana-delete','DanaController@delete')->name('dana.delete');
Route::get('/dana-edit/{id}','DanaController@edit')->name('dana.edit');
Route::put('/dana-update/{id}','DanaController@update')->name('dana.update');
Route::get('/dana-grafik','DanaController@grafik')->name('dana.grafik');

Route::get('/kegiatan/{type}','KegiatanController@index')->name('kegiatan.index');
Route::get('/kegiatan-create','KegiatanController@create')->name('kegiatan.create');
Route::get('/kegiatan-detail/{id}','KegiatanController@detail')->name('kegiatan.detail');
Route::post('/kegiatan-save','KegiatanController@save')->name('kegiatan.save');
Route::post('/kegiatan-delete','KegiatanController@delete')->name('kegiatan.delete');
Route::post('/kegiatan-save','KegiatanController@save')->name('kegiatan.save');
Route::get('/kegiatan-edit/{id}','KegiatanController@edit')->name('kegiatan.edit');
Route::put('/kegiatan-update/{id}','KegiatanController@update')->name('kegiatan.update');

Route::get('/peminjaman','PeminjamanController@index')->name('peminjaman.index');
Route::get('/peminjaman-create','PeminjamanController@create')->name('peminjaman.create');
Route::get('/peminjaman-detail/{id}','PeminjamanController@detail')->name('peminjaman.detail');
Route::post('/peminjaman-save','PeminjamanController@save')->name('peminjaman.save');
Route::post('/peminjaman-delete','PeminjamanController@delete')->name('peminjaman.delete');

Route::get('/test-email', 'HomeController@sendEmail')->name('sendEmail');
