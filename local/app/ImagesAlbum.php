<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImagesAlbum extends Model
{
    protected $fillable = [
        'id','image','album_id'
    ];
    public function albums()
    {
        return $this->belongsTo('App\Album', 'album_id');
    }
    protected $table = 'images_albums';
}
