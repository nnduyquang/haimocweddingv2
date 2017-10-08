<?php

namespace App\Http\Controllers;

use App\Album;
use App\CategoryAlbum;
use App\ImagesAlbum;
use App\Location;
use Illuminate\Http\Request;

class FEAlbumController extends Controller
{
    function getDetail($pathCategoryAlbum,$pathAlbum){
        $album=Album::where('path','=',$pathAlbum)->first();
        $locations=$album->locations()->get();
        $imageAlbums=ImagesAlbum::where('album_id','=',$album->id)->get();
        return view('frontend.album.chitietalbum.index',compact('album','locations','imageAlbums'));
    }
    function getAlbumsByCategory($pathAlbumCategory){
        $categoryAlbum=CategoryAlbum::where('path','=',$pathAlbumCategory)->first();
        $albums=$categoryAlbum->albums()->get();
        $locations=Location::where('isActive', '=', '1')->orderBy('order', 'ASC')->get();
        return view('frontend.album.index',compact('categoryAlbum','albums','locations'));
    }
}
