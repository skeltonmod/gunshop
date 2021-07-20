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
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Str;
use Laravel\Cashier\Cashier;
use Stripe\PaymentIntent;
use Stripe\PaymentMethod;
use Stripe\Price;
use Stripe\Stripe;
use Tests\TestCase;

class UserController extends TestCase
{
    public function index(): UserCollection
    {
        return new UserCollection(User::all());
    }

    function generateString(): string
    {
        $n = 15;
        $characters = "123456789";
        $randomString = '';

        for ($i = 0; $i < $n; $i++) {
            $index = rand(0, strlen($characters) - 1);
            $randomString .= $characters[$index];
        }

        return $randomString;

    }
    public function store(Request $request){
        $validator = Validator::make($request->all(),[
            'username'=>'required|max:255|string|unique:users' ,
            'email'=>'required|email|string|unique:users' ,
            'password'=>'required|max:255|string' ,
            'number'=>'required|max:255|']);

       if($validator->fails()){
           return response(['error'=>$validator->errors()->all()], 422);
       }

       $request['password'] = Hash::make($request['password']);
       $request['remember_token'] = Str::random(10);
       $request['userid'] = $this->generateString();

       $user = User::create($request->toArray());

       $token = $user->createToken('Laravel Password Grant Client')->accessToken;
       $response = ['token'=>$token];

       return response($response);
    }


    public function editUser(Request $request){
        $validator = Validator::make($request->all(),[
            'userid'=>'required|max:255',
            'id'=>'required|max:255',
        ]);

        if($validator->fails()){
            return response(['error'=>$validator->errors()->all()], 422);
        }
//         Verify the user sending the request
        $user = User::query()
            ->where('id', $request->id)
            ->where('userid', $request->userid)
            ->first();

        if($user){
            // check if password exists in the edit field
            if($request->input('password') != ""){
                $request['password'] = Hash::make($request->password);
            }else{
                // use the current password
                $request['password'] = $user->password;
            }

           $affected = DB::table('users')
                ->where('id', $request->id)
                ->where('userid', $request->userid)
                ->update($request->toArray());

            return response(['login'=>$user->refresh(), "affected"=>$affected]);

        }else{
            return response([false]);
        }

    }


    public function getProfileData(Request $request){
        $user = User::query()->where('userid', $request->userid)->first();
        return response([$user]);
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


    public function sendFriendRequest(Request $request){
        $first_user = User::query()->find($request->acted_user);
        $second_user = User::query()->find($request->second_user);

        $first_user->befriend($second_user);

        $this->assertCount(1, $second_user->getFriendRequests());

        return response($second_user->getFriendRequests());

    }

    public function getFriendRequestState(Request $request){
        $first_user = User::query()->find($request->acted_user);
        $second_user = User::query()->find($request->second_user);


        return response([$first_user->hasFriendRequestFrom($second_user), $second_user->hasFriendRequestFrom($first_user), $first_user->isFriendWith($second_user)]);
    }

    public function acceptRequest(Request $request){
        $first_user = User::query()->find($request->acted_user);
        $second_user = User::query()->find($request->second_user);

        $first_user->befriend($second_user);

        return response([$second_user->acceptFriendRequest($first_user)]);
    }

    public function unfriendUser(Request $request){
        $first_user = User::query()->find($request->acted_user);
        $second_user = User::query()->find($request->second_user);
        return response([$first_user->unfriend($second_user)]);
    }

    public function declineRequest(Request $request){
        $first_user = User::query()->find($request->acted_user);
        $second_user = User::query()->find($request->second_user);
        $first_user->befriend($second_user);
        return response([$second_user->denyFriendRequest($first_user)]);
    }


    // Premium Account
    public function purchasePremium(Request $request){
        Stripe::setApiKey(env('STRIPE_SECRET'));
        $user = User::query()->find($request->id);

        // Retrieve Stripe ID
        if(!$user->stripe_id){
            $stripeCustomer = $user->createAsStripeCustomer();
        }else{
            $stripeCustomer = $user->stripe_id;
        }

        $payment = PaymentMethod::create([
            "type"=> 'card',
            'card'=>[
                'number' => $request->creditcard,
                'exp_month' => $request->expiry_month,
                'exp_year'=> $request->expiry_year,
                'cvc' => $request->cvc
            ]
        ]);

        $payment_intent = PaymentIntent::create([
            'amount' => 1000,
            'currency' => 'usd',
            'payment_method_types' => ['card'],
            'payment_method' => $payment->id,
            'confirm'=>true,
            'customer' => $stripeCustomer,
        ]);

        if($payment_intent->created){
            $user = User::query()
                ->where('id', $request->id)
                ->first();

            $affected = DB::table('users')
                ->where('id', $request->id)
                ->update(["type"=>"Premium"]);

            return response([$user->refresh()]);
        }

        return response(['Error'], 500);
    }
}
