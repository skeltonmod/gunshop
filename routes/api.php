<?php

use App\Http\Controllers\FeedController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
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

Route::get('/users', [UserController::class, 'index']);
Route::post('/register', [UserController::class, 'store']);
Route::post('/login', [UserController::class, 'login']);
Route::post('/sendFriendRequest', [UserController::class, 'sendFriendRequest']);
Route::post('/getFriendRequest', [UserController::class, 'getFriendRequest']);
Route::post('/getFriends', [UserController::class, 'getFriends']);
Route::post('/editUser', [UserController::class, 'editUser']);
Route::post('/getProfileData', [UserController::class, 'getProfileData']);
Route::post('/getFriendRequestState', [UserController::class, 'getFriendRequestState']);
Route::post('/acceptRequest', [UserController::class, 'acceptRequest']);
Route::post('/unfriendUser', [UserController::class, 'unfriendUser']);
Route::post('/postFeed', [FeedController::class, 'postFeed']);
Route::post('/purchasePremium', [UserController::class, 'purchasePremium']);
Route::post('/getFeedFromFriends', [FeedController::class, 'getFeedFromFriends']);

