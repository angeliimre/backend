<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Group;
use App\Models\User;

class GroupUser extends Model
{
    use HasFactory;
    function group(){
        return $this->belongsTo(Group::class);
    }
    function user(){
        return $this->belongsTo(User::class);
    }
    protected $table = 'group_user';
    protected $fillable = ['user_id','group_id'];
}
