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

Route::match(['get','post'],'/admin','AdminController@login');

Auth::routes();

Route::group(['middleware' => ['auth']],function(){
	Route::get('/admin/dashboard','AdminController@dashboard');	
	Route::get('/admin/settings','AdminController@settings');
	Route::get('/admin/check-pwd','AdminController@chkPassword');
	Route::match(['get','post'],'/admin/update-pwd','AdminController@updatePassword');

	//Categorie routes admin
	Route::match(['get','post'],'/admin/add-category','CategoryController@addCategory');
	Route::match(['get','post'],'/admin/edit-category/{id}','CategoryController@editCategory');
	Route::match(['get','post'],'/admin/delete-category/{id}','CategoryController@deleteCategory');
	Route::get('/admin/view-categories','CategoryController@viewCategories');

	// Products Routes
	Route::match(['get','post'],'/admin/add-product','AdminProductsController@addProduct');
	Route::get('/admin/view-products','AdminProductsController@viewProducts');
	Route::match(['get','post'],'/admin/edit-product/{id}','AdminProductsController@editProduct');
});

Route::get('/logout', 'AdminController@logout');


// HomeController routes
Route::get('/', 'HomeController@index');

// ProductsController routes
Route::get('/assortment', 'ProductsController@index');
Route::get('/product/{product}', 'ProductsController@show');
Route::get('assortment', 'ProductsController@search');
Route::get('/profile' , 'ProductsController@profile');
Route::get('/contact' , 'ProductsController@contact');

// ReviewController routes
Route::post('addReview', 'ReviewsController@store');

// Auth routes
Auth::routes();