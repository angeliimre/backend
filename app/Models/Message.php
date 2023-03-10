<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Group;
use App\Models\User;

class Message extends Model
{
    use HasFactory;
    function group(){
        return $this->belongsTo(Group::class);
    }
    function user(){
        return $this->belongsTo(User::class);
    }
}
