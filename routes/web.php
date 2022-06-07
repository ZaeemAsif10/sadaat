<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Backend\SupplierController;
use Illuminate\Support\Facades\Auth;

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

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/', 'HomeController@redirectAdmin')->name('index');
Route::get('/home', 'HomeController@index')->name('home');

/**
 * Admin routes
 */
Route::group(['prefix' => 'admin'], function () {
    Route::get('/', 'Backend\DashboardController@index')->name('admin.dashboard');
    Route::resource('roles', 'Backend\RolesController', ['names' => 'admin.roles']);
    Route::resource('users', 'Backend\UsersController', ['names' => 'admin.users']);
    Route::resource('admins', 'Backend\AdminsController', ['names' => 'admin.admins']);


    // Login Routes
    Route::get('/login', 'Backend\Auth\LoginController@showLoginForm')->name('admin.login');
    Route::post('/login/submit', 'Backend\Auth\LoginController@login')->name('admin.login.submit');

    // Logout Routes
    Route::post('/logout/submit', 'Backend\Auth\LoginController@logout')->name('admin.logout.submit');

    // Forget Password Routes
    Route::get('/password/reset', 'Backend\Auth\ForgetPasswordController@showLinkRequestForm')->name('admin.password.request');
    Route::post('/password/reset/submit', 'Backend\Auth\ForgetPasswordController@reset')->name('admin.password.update');
});


Route::get('/ware-houses', 'Backend\WareHouseController@WareHouse')->name('admin.warehouse');
Route::post('/create-ware-houses', 'Backend\WareHouseController@WareHouseCreate')->name('admin.warehouse.create');
Route::post('/update-ware-houses', 'Backend\WareHouseController@WareHouseUpdate')->name('admin.warehouse.update');
Route::get('/delete-ware-houses/{id}', 'Backend\WareHouseController@WareHouseDelete')->name('admin.warehouse.delete');

Route::get('/brands', 'Backend\BrandController@Brand')->name('admin.brand');
Route::post('/create-brand', 'Backend\BrandController@BrandStore')->name('admin.brand.create');

Route::post('/update-brand', 'Backend\BrandController@BrandUpdate')->name('admin.brand.update');
Route::get('/delete-brand/{id}', 'Backend\BrandController@BrandDelete')->name('admin.brand.delete');

Route::get('create-supplier', [SupplierController::class, 'createSupplier'])->name('create.supplier');
Route::get('get-supplier', [SupplierController::class, 'getSupplier'])->name('get.supplier');
Route::post('supplier-store', [SupplierController::class, 'supplierStore'])->name('supplier.store');
Route::get('supplier-edit', [SupplierController::class, 'supplierEdit'])->name('supplier.edit');
Route::post('supplier-update', [SupplierController::class, 'supplierUpdate'])->name('supplier.update');
Route::get('supplier-delete', [SupplierController::class, 'supplierDelete'])->name('supplier.delete');


