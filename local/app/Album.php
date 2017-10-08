<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
    protected $fillable = [
       'id', 'name','path', 'content', 'isActive','image_cover','order','user_id','category_album_id','created_at','updated_at'
    ];
    public function locations(){
        return $this->belongsToMany('App\Location','location_albums','album_id','location_id')->withPivot('location_id')->withTimestamps();
    }
    public function users()
    {
        return $this->belongsTo('App\User', 'user_id');
    }
    public function categoryAlbums()
    {
        return $this->belongsTo('App\CategoryAlbum', 'category_album_id');
    }
    public function imageAlbums()
    {
        return $this->hasMany('App\ImagesAlbum','album_id','id');
    }
}
