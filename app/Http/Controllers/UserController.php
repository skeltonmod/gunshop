<?php

namespace App\Http\Controllers;

use Illuminate\Database\Eloquent\Builder;

/**
 * @mixin Builder
 */
use App\Http\Resources\User as UserResource;
use App\Http\Resources\UserCollection;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;

class UserController extends Controller
{
    public function index(): UserCollection
    {
        return new UserCollection(User::all());
    }


    public function store(Request $request){
        $validator = Validator::make($request->all(),[
            'username'=>'required|max:255|string|unique:users' ,
            'email'=>'required|email|string|unique:users' ,
            'password'=>'required|max:255|string' ,
            'number'=>'required|max:255|string|unique:users']);

       if($validator->fails()){
           return response(['error'=>$validator->errors()->all()], 422);
       }

       $request['password'] = Hash::make($request['password']);
       $request['remember_token'] = Str::random(10);
       $user = User::create($request->toArray());

       $token = $user->createToken('Laravel Password Grant Client')->accessToken;
       $response = ['token'=>$token];

       return response($response);
    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'username'=>'required|string' ,
            'password'=>'required|string' ,
        ]);

        if($validator->fails()){
            return response(['error'=>$validator->errors()->all()], 422);
        }

        $user = User::query()->where('username', $request->username)->first();
        if($user){
            if(Hash::check($request->password, $user->password)){
                $token = $user->createToken('Laravel Password Grant Client')->accessToken;
                $response = ['token'=>$token, 'login'=>$user];
                return response($response);
            }else{
                $response = ['message'=> "Invalid Username or Password"];
                return response($response, 422);
            }
        }else{
            $response = ['message' => "User does not Exist"];
            return response($response, 422);
        }
    }

}
