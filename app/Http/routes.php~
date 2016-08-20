<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/




Route::get('/', 'HomeController@listhotels');
Route::get('/home', 'HomeController@index');

Route::auth();
Route::get('/hoteldetail/{id}', 'HomeController@showhotel');
Route::post('/comments' , 'HomeController@comments' );

Route::group(['prefix' => 'admin' , 'middleware' => ['auth', 'admin'] ], function () {
    
    Route::get('/list', 'HomeController@adminlist');
    Route::get('/addhotel', 'HomeController@addhotelform');
    Route::post('/addhotel', 'HomeController@addhotel');
    Route::get('/', 'HomeController@index');
});
