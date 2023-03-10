<?php

use App\Http\Controllers\userController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/register',[userController::class,"register"]);
Route::post('/login',[userController::class,"login"]);
Route::middleware('auth:sanctum')->get("/users",[userController::class,"getUsers"]);
Route::middleware('auth:sanctum')->get('/loadconversation/{group_id}', [userController::class,"getConversation"]);
Route::post('/sender',[userController::class,"sender"]);
Route::middleware('auth:sanctum')->get('/makegroup/{my_id}/{partner_id}',[userController::class,"makeGroup"]);
Route::post('/conversation/{my_id}',[userController::class,"loadGroups"]);
Route::post('/realgroup',[userController::class,"createRealGroup"]);