<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    protected $fillable = [
       'id', 'name','path', 'content', 'isActive','image_cover','order','user_id','created_at','updated_at'
    ];
    public function locations(){
        return $this->belongsToMany('App\Location','location_albums','album_id','location_id')->withPivot('location_id')->withTimestamps();
    }
    public function users()
    {
        return $this->belongsTo('App\User', 'user_id');
    }
}
