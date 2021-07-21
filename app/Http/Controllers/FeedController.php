<?php

namespace App\Http\Controllers;

use App\Models\Feeds;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use App\Models\User;

class FeedController extends Controller
{
    public function postFeed(Request $request){
        $validator = Validator::make($request->all(),[
            'tweet'=>'required|max:255']);

        if($validator->fails()){
            return response(['error'=>$validator->errors()->all()], 422);
        }

        $file_name = $request->userid."_".$request->poster."_"."feed.json";

        try{
            $feedinfo = Storage::disk('local')
                ->exists($file_name);

            if($feedinfo){
                $feedinfo = json_decode(Storage::disk('local')->get($file_name));
            }else{
                $feedinfo = [];
                $request['file_location'] = $file_name;
                Feeds::create($request->toArray());

            }


            $inputData = $request->only(['poster', 'userid', 'tweet']);
            $inputData['datetime_submitted'] = date('Y-m-d H:i:s');
            array_push($feedinfo,$inputData);

            Storage::disk('local')->put($file_name, json_encode($feedinfo, JSON_PRETTY_PRINT));
            return $inputData;
        }catch (Exception $e){
            return ['error' => true, 'message' => $e->getMessage()];
        }
    }

    public function getFeedFromFriends(Request $request){
        // Get friends
        $getlist = User::query()->find($request->id);
        if($getlist){
            $user = $getlist->getAcceptedFriendships();
            //Get the feed from your friends
            $feeds = [];
            $friends = [];
            $friendsOther = [];

            // this is what gets rendered on the front
            $contents = [];

            // Fetch all your friends
            foreach ($user as $friend){
                $friends[] = $friend->recipient_id;
                $friendsOther[] = $friend->sender_id;
            }

            // Now fetch your friends' feed
            foreach ($friends as $feed){
                $feeds[] = Feeds::query()->where('poster', $feed)->first();

            }

            array_push($feeds, Feeds::query()->where('poster', $request->id)->first());

            // Now merge them into one big JSON
            foreach ($feeds as $content){
                if($content->file_location != null){
                    $contents[] = (json_decode(Storage::disk('local')->get($content->file_location)));
                }
            }
            return response($contents);
        }else{
            return response([["No Feed"], [""]]);
        }
    }
}
