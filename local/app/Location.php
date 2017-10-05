<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Location extends Model
{
    protected $fillable = [
        'id','name','content','path','image_cover','image_avata','image_background','image_mota_1','title_mota_1','content_mota_1','image_mota_2','title_mota_2','content_mota_2','image_mota_3','title_mota_3','content_mota_3' ,'isActive','order','created_at','updated_at'
    ];
    public function albums(){
        return $this->belongsToMany('App\Album','location_albums','location_id','album_id')->withTimestamps();
    }
}
