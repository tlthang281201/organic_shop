<?php

use App\Http\Controllers\Admin\BlogController as AdminBlogController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\CouponController;
use App\Http\Controllers\Admin\CustomerController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\OrderController as AdminOrderController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ShipperController;
use App\Http\Controllers\Front\BlogController;
use App\Http\Controllers\Front\CartController;
use App\Http\Controllers\Front\CheckOutController;
use App\Http\Controllers\Front\HomeController;
use App\Http\Controllers\Front\OrderController;
use App\Http\Controllers\Front\ShopController;
use App\Http\Controllers\Front\UserController;
use App\Models\OrderDetail;
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
    Route::get('load-coupon-used',[CartController::class,'loadCoupon']);
    Route::get('remove-coupon',[CartController::class,'removeCoupon']);
    Route::get('load-district',[CheckOutController::class,'loadDistrict']);
    Route::get('load-ward',[CheckOutController::class,'loadWard']);
});
//Front
Route::get('/',[HomeController::class,'index']);
Route::get('gioi-thieu',[HomeController::class,'about']);

Route::get('lien-he',[HomeController::class,'contact']);
Route::post('lien-he',[HomeController::class,'sendContact']);

Route::get('dang-nhap',[HomeController::class,'viewLogin'])->name('login');
Route::post('dang-nhap',[UserController::class,'login']);
Route::get('dang-ky',[HomeController::class,'viewSignup']);
Route::post('dang-ky',[UserController::class,'signup']);
Route::post('log-out',[UserController::class,'logout']);

Route::prefix('thong-tin-ca-nhan')->middleware('CheckMemberLogin')->group(function(){
    Route::get('',[UserController::class,'personalInfo']);
    Route::post('',[UserController::class,'updateInfo']);
    Route::get('don-hang',[OrderController::class,'index']);
    Route::get('doi-mat-khau',[UserController::class,'viewChangePassword']);
    Route::post('doi-mat-khau',[UserController::class,'changePassword']);
    Route::get('don-hang/{id}',[OrderController::class,'show']);
});

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

Route::prefix('check-out')->middleware('CheckMemberLogin')->group(function(){
    Route::get('',[CheckOutController::class,'index']);
    Route::get('vnPayCheck',[CheckOutController::class,'vnPayCheck']);
    Route::post('add-order',[CheckOutController::class,'addOrder']);
    Route::get('result',[CheckOutController::class,'result']);
});

Route::prefix('blog')->group(function(){
    Route::get('',[BlogController::class,'index']);
    Route::get('{alias}',[BlogController::class,'show']);
});

//Admin
Route::prefix('admin')->group(function(){
    Route::get('dashboard',[DashboardController::class,'index']);
    Route::get('danh-sach-san-pham',[ProductController::class,'index']);
    Route::get('danh-sach-danh-muc',[CategoryController::class,'index']);
    Route::get('danh-sach-don-hang',[AdminOrderController::class,'index']);
    Route::get('danh-sach-tin-tuc',[AdminBlogController::class,'index']);
    Route::get('danh-sach-shipper',[ShipperController::class,'index']);
    Route::get('danh-sach-coupon',[CouponController::class,'index']);
    Route::get('danh-sach-khach-hang',[CustomerController::class,'index']);
});