<?php

use App\Http\Controllers\Front\HomeController;
use App\Http\Controllers\Front\ShopController;
use Illuminate\Support\Facades\Route;

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

//User
// Route::get('/',function(){
//     return view('front.index');
// });
Route::get('/',[HomeController::class,'index']);
Route::get('shop/san-pham/{id}',[ShopController::class,'show']);
Route::post('shop/san-pham/{id}',[ShopController::class,'postComment']);
//Admin
