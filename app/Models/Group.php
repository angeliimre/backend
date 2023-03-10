<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Message;
use App\Models\User;
use App\Models\GroupUser;

class Group extends Model
{
    use HasFactory;
    function message(){
        return $this->hasMany(Message::class);
    }
    function user(){
        return $this->belongsToMany(User::class);
    }
    function groupuser(){
        return $this->hasMany(GroupUser::class);
    }
}
