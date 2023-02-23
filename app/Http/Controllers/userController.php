<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Group;
use App\Models\GroupUser;
use App\Models\Message;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;
class userController extends Controller
{
    function register(Request $request){
        try{
            $validated=$request->validate([
                'name'=>'required|min:3|max:20',
                'email'=>'required|email|unique:users,email',
                'password'=>'required|min:5|max:15|confirmed'
            ]);
        }catch(ValidationException $e){
            return response(["status"=>"error",...$e->errors()]);
        }

        $user=new User;
        $user->name=$validated["name"];
        $user->email=$validated["email"];
        $user->password=$validated["password"];
        $user->save();
        return $this->login($request);
        
    }
    function login(Request $request){
        if(Auth::attempt($request->only(["email","password"]))){
            $token=User::find(Auth::user()->id)->createToken('')->plainTextToken;
            return response(["status"=>"success","token"=>$token]);
        }
        return response(["status"=>"error"]);
    }
    function getUsers(){
        $list=User::get();
        return response($list);
    }
    function getConversation($my_id,$partner_id){
        
        $group_name=$my_id<$partner_id?$my_id."_".$partner_id:$partner_id."_".$my_id;

        if(Group::where("name","=",$group_name)->doesntExist()){
            $group=new Group;
            $group->name=$group_name;
            $group->save();

            $group_user=new GroupUser;
            $group_user->user_id=$my_id;
            $group_user->group_id=$group->id;

            $group_user->save();

            $group_user2=new GroupUser;
            $group_user2->user_id=$partner_id;
            $group_user2->group_id=$group->id;

            $group_user2->save();
            return response([$group->id]);
            
        }else{
            $id=Group::where("name","=",$group_name)->select("id")->get()->pluck("id")->toarray();
            $messages= Message::where("group_id","=",$id[0])->get()->toarray();
            array_push($messages,$id[0]);
            return response($messages);
        }

        
    }
    function sender(Request $request){
        
        $validated=$request->validate([
            'group_id'=>'nullable',
            'content'=>'nullable',
            'user_id'=>'nullable'
        ]);
        $message=new Message;
        $message->group_id=intval($validated['group_id']);
        $message->content=$validated['content'];
        $message->user_id=intval($validated['user_id']);
        $message->save();
        return response($validated);
        //$message_list=Message::where('group_id','=',$validated['group_id'])->get();
        //return response($message_list);
    }
}
