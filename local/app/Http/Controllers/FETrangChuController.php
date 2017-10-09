<?php

namespace App\Http\Controllers;

use App\Album;
use App\CategoryAlbum;
use App\Location;
use App\Slider;
use Illuminate\Http\Request;

class FETrangChuController extends Controller
{
    function getAllInfo()
    {
        $sliders = Slider::where('slider_is_active', '=', '1')->orderBy('slider_order', 'ASC')->get();
        $albums=Album::where('isActive', '=', '1')->orderBy('order', 'ASC')->limit(6)->get();
        $categoryAlbum=CategoryAlbum::where('isActive', '=', '1')->orderBy('order', 'ASC')->get();
        $locations=Location::where('isActive', '=', '1')->orderBy('order', 'ASC')->get();
        return view('frontend.trangchu.index', compact('sliders','albums','categoryAlbum','locations'));
    }
}
