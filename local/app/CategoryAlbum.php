<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoryAlbum extends Model
{
    protected $fillable = [
        'id','name','path', 'content', 'isActive','order','created_at','updated_at'
    ];
    public function albums(){
        return $this->hasMany('App\Album','category_album_id');
    }
}
