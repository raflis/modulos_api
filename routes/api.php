<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\RolController;
use App\Http\Controllers\UsedeController;
use App\Http\Controllers\UsuarioController;
use App\Http\Controllers\EspecialidadController;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('/usuarios',UsuarioController::class)->only(['index','store','show','update','destroy']);

Route::resource('/especialidad',EspecialidadController::class)->only(['index','store','show','update','destroy']);

Route::resource('/rol',RolController::class)->only(['index','store','show','update','destroy']);

Route::resource('/usuariosede',UsedeController::class)->only(['index','store','show','update','destroy']);
