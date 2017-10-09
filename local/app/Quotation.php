<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Quotation extends Model
{
    protected $fillable = [
        'name','path', 'content', 'isActive','order','image','user_id','created_at','updated_at'
    ];
}
