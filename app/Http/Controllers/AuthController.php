<?php

namespace App\Http\Controllers;

use App\Http\Requests\LoginUserRequest;
use App\Http\Requests\StoreUserRequest;
use App\Models\User;
use Illuminate\Http\Request;
use App\Traits\HttpResponses;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Eloquent\Model;

class AuthController extends Controller
{
use HttpResponses;
public function login(LoginUserRequest $request): \Illuminate\Http\JsonResponse
{
    $request->validated($request->all());

    if(!Auth::attempt($request->only(['email','password']))){
        return $this->error('','Credentials do not match',401);
    }
    $user= User::Where('email',$request['email'])->first();

    return $this->success([
        'user'=>$user,
        'token'=>$user->createToken('Api Token of'.$user->name)->plainTextToken
        ]);
}
public function register(StoreUserRequest $request): \Illuminate\Http\JsonResponse
{
    $request->validated($request->all());

    $user = User::create([
            'name'=>$request['name'],
            'email'=>$request['email'],
            'password'=>Hash::make($request['password'])
        ]);

    return $this->success([
        'user'=>$user,
        'token'=>$user->createToken('API Token of'.$user->name)->plainTextToken,
    ]);
}
public function logout(): \Illuminate\Http\JsonResponse
{
    Auth::user()->currentAccessToken()->delete();
    return $this->success([
       'message'=>'You have successfully been logged out.'
    ]);
}
}
