<?php

use App\Http\Controllers\Front\BlogController;
use App\Http\Controllers\Front\CartController;
use App\Http\Controllers\Front\HomeController;
use App\Http\Controllers\Front\ShopController;
use App\Http\Controllers\Front\UserController;
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

//Ajax
Route::prefix('ajax')->group(function(){
    Route::get('shop/load-comment/{productId}',[ShopController::class,'loadComment']);
    Route::post('shop/post-comment',[ShopController::class,'postComment']);
    Route::get('load-cart-total',[CartController::class,'loadCartTotal']);
    Route::get('coupon',[CartController::class,'checkCoupon']);
});
//Front
Route::get('/',[HomeController::class,'index']);
Route::get('gioi-thieu',[HomeController::class,'about']);

Route::get('lien-he',[HomeController::class,'contact']);
Route::post('lien-he',[HomeController::class,'sendContact']);

Route::get('dang-nhap',[HomeController::class,'viewLogin']);
Route::post('dang-nhap',[UserController::class,'login']);

Route::get('dang-ky',[HomeController::class,'viewSignup']);
Route::post('dang-ky',[UserController::class,'signup']);

Route::post('log-out',[UserController::class,'logout']);

Route::prefix('gio-hang')->group(function(){
    Route::get('',[CartController::class,'viewCart']);
    Route::get('add',[CartController::class,'add']);
    Route::get('update',[CartController::class,'update']);
    Route::get('remove',[CartController::class,'remove']);
    Route::get('destroy',[CartController::class,'destroyCart']);
});

Route::prefix('shop')->group(function(){
    Route::get('san-pham/{id}',[ShopController::class,'show']);
    Route::get('',[ShopController::class,'index']);
    Route::get('danh-muc/{alias}',[ShopController::class,'category']);
});

Route::prefix('blog')->group(function(){
    Route::get('',[BlogController::class,'index']);
    Route::get('{alias}',[BlogController::class,'show']);
});
//Admin
