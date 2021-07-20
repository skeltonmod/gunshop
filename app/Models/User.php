<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Hootlex\Friendships\Traits\Friendable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable, HasFactory, Friendable;
    protected $fillable = ['username', 'email', 'password', 'number', 'remember_token', 'userid'];

    protected function friendsOfThisUser()
    {
        return $this->belongsToMany(User::class, 'friendships', 'first_user', 'second_user')
            ->withPivot('status')
            ->wherePivot('status', 'confirmed');
    }

    public function getFriendsAttribute()
    {
        if (!array_key_exists('friends', $this->relations)) $this->loadFriends();
        return $this->getRelation('friends');
    }

    protected function loadFriends()
    {
        if (!array_key_exists('friends', $this->relations)) {
            $friends = $this->mergeFriends();
            $this->setRelation('friends', $friends);
        }
    }

    protected function mergeFriends()
    {
        if ($temp = $this->friendsOfThisUser)
            return $temp->merge($this->thisUserFriendOf);
        else
            return $this->thisUserFriendOf;
    }

    protected function friendsOfThisUserBlocked()
    {
        return $this->belongsToMany(User::class, 'friendships', 'first_user', ‘second_user’)
            ->withPivot('status', 'acted_user')
            ->wherePivot('status', 'blocked')
            ->wherePivot('acted_user', 'first_user');
    }

    protected function thisUserFriendOfBlocked()
    {
        return $this->belongsToMany(User::class, 'friendships', 'second_user', 'first_user')
            ->withPivot('status', 'acted_user')
            ->wherePivot('status', 'blocked')
            ->wherePivot('acted_user', 'second_user');
    }


    public function getBlockedFriendsAttribute()
    {
        if ( ! array_key_exists('blocked_friends', $this->relations)) $this->loadBlockedFriends();
        return $this->getRelation('blocked_friends');
    }

    protected function loadBlockedFriends()
    {
        if ( ! array_key_exists('blocked_friends', $this->relations))
        {
            $friends = $this->mergeBlockedFriends();
            $this->setRelation('blocked_friends', $friends);
        }
    }

    public function friend_requests()
    {
        return $this->hasMany(Friendship::class, 'second_user')
            ->where('status', 'pending');
    }


}
