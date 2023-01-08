<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\StoreController;
use App\Http\Controllers\Api\ProductController;
use App\Http\Controllers\Api\AuthController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('login', [AuthController::class, 'login'])->name('login');
Route::post('register', [AuthController::class, 'register'])->name('register');

Route::get('stores', [StoreController::class, 'index']);
Route::get('store/detail/{id}', [StoreController::class, 'detail']);
Route::get('store/search', [StoreController::class, 'search']);

Route::get('products', [ProductController::class, 'index']);
Route::get('product/detail/{id}', [ProductController::class, 'detail']);
Route::get('product/search', [ProductController::class, 'search']);

Route::middleware('check.apitoken')->group(function() {
    Route::post('store/create', [StoreController::class, 'create']);
    Route::put('store/update/{id}', [StoreController::class, 'update']);
    Route::delete('store/delete/{id}', [StoreController::class, 'delete']);
    
    Route::post('product/create', [ProductController::class, 'create']);
    Route::put('product/update/{id}', [ProductController::class, 'update']);
    Route::delete('product/delete/{id}', [ProductController::class, 'delete']);
});
