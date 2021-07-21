<?php

namespace App\Models;

use Cmgmyr\Messenger\Traits\Messagable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Laravel\Cashier\Billable;
use Laravel\Passport\HasApiTokens;
use Hootlex\Friendships\Traits\Friendable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable, HasFactory, Friendable, Billable, Messagable;
    protected $fillable = ['username', 'email', 'password', 'number', 'remember_token', 'userid'];


}
