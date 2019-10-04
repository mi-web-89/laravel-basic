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

Route::get('/', function () {
  return view('welcome');
});

Route::get('hallo', function() {
  return 'hallo, selamat data di toturial laravel www.malasngoding.com';
});

Route::get('pegawai', 'PegawaiController@index');
Route::get('pegawai/formulir', 'PegawaiController@formulir');
Route::post('pegawai/proses', 'pegawaiController@proses');

Route::get('blog', 'blogController@home');
Route::get('blog/about', 'blogController@about');
Route::get('blog/contact', 'blogController@contact');

Route::get('member', 'memberController@index');
Route::get('member/input', 'memberController@input');
Route::post('member/store', 'memberController@store');
Route::get('member/edit/{id}', 'memberController@edit');
Route::post('member/update', 'memberController@update');
Route::get('member/delete/{id}','memberController@delete');
Route::get('member/search', 'memberController@search');

Route::get('item', 'itemController@index');
Route::get('item/input', 'itemController@input');
Route::post('item/store', 'itemController@store');
Route::get('item/edit/{id}', 'itemController@edit');
Route::put('item/update/{id}', 'itemController@update');
Route::get('item/delete/{id}', 'itemController@delete');
Route::get('item/trash', 'itemController@trash');
Route::get('item/restore/{id}', 'itemController@restore');
Route::get('item/restore-all', 'itemController@restore_all');
Route::get('item/delete-permanently/{id}', 'itemController@delete_permanent');
Route::get('item/delete-all-permanently', 'itemController@delete_all_permanent');

Route::get('supplier', 'SupplierController@index');

Route::get('login', 'AuthMemberController@showLoginForm')->name('login');
Route::post('login', 'AuthMemberController@login');
Route::get('register', 'AuthMemberController@showRegisterForm')->name('register');
Route::post('register', 'AuthMemberController@register');
Route::get('home', 'AuthMemberController@index');
Route::get('logout', 'AuthMemberController@logout');
