<?php

namespace App\Http\Controllers;

use App\Album;
use App\CategoryAlbum;
use App\Location;
use App\News;
use App\Slider;

class FETrangChuController extends Controller
{
    function getAllInfo()
    {
        $sliders = Slider::where('slider_is_active', '=', '1')->orderBy('slider_order', 'ASC')->get();
        $albums=Album::where('isActive', '=', '1')->orderBy('order', 'ASC')->limit(6)->get();
        $categoryAlbum=CategoryAlbum::where('isActive', '=', '1')->orderBy('order', 'ASC')->get();
        $locations=Location::where('isActive', '=', '1')->orderBy('order', 'ASC')->get();
        $newsFocus=News::where('isPost','=','1')->where('isFocus','=','1')->orderBy('id','DESC')->take(3)->get();
        $newsOther=News::where('category_post_id','=','1')->where('isPost','=','1')->where('isFocus','=','0')->orderBy('id','DESC')->take(6)->get();
        return view('frontend.trangchu.index', compact('sliders','albums','categoryAlbum','locations','newsFocus','newsOther'));
    }
}
