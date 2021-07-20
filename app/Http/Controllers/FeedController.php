<?php

namespace App\Http\Controllers;

use App\Models\Feeds;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

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

    public function getFeed(Request $request){

    }
}
