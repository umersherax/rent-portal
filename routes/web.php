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


/*Route::get('/Hello', function () {
    return view('gello');
   
 });
  Route::get('/users/{id}/{name}',function($id,$name){
    return 'This is user id '.$id.' and username '.$name;
 });*/

 Route::get('/', 'PostsController@index');
 Route::get('/mindx', 'PostsController@mindx');
 Route::get('/about', 'PagesController@about');
 Route::get('/services', 'PagesController@services');
 Route::post('/update','PostsController@update')->name("post_update");
 Route::post('/posts/search', 'PostsController@search');
 Route::get('/posts/search', 'PostsController@search');
 Route::resource('/posts','PostsController');
 Route::resource('/categories','CategoriesController');
 Route::get('/categories', 'CategoriesController@index')->name('cat');

 //Route::get('/search','PostsController@search');



 Route::get('/search', 'PostsController@search');

// Route::get('/search','CategoriesController@search');
 
 Route::post('sort','PostsController@sort');
 Route::post('/reg','PostsController@reg');
 Route::post('filter','PostsController@filter');
 
Route::get('Mshow/{id}', 'PostsController@Mshow');
Route::get('Mcats/{id}', 'PostsController@Mcats');



Auth::routes(['verify' => true]);

Route::get('/home', 'HomeController@index');
Route::get('login/google', 'Auth\LoginController@redirectToProvider');
Route::get('login/google/callback', 'Auth\LoginController@handleProviderCallback');
Route::get('/{id}', 'PostsController@category')->name('test');
Route::post('/{id}', 'PostsController@sortcat')->name('testcat');


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
