<?php

use Illuminate\Support\Facades\Route;



Route::get('/admin/books/create', 'Admin\BookController@create');
Route::get('/admin/books', 'Admin\BookController@index');
Route::post('/admin/books', 'Admin\BookController@store');
