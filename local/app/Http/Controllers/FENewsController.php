<?php

namespace App\Http\Controllers;

use App\News;
use Illuminate\Http\Request;

class FENewsController extends Controller
{
    function getDetailNews($path){
        $news=News::where('path','=',$path)->first();
        return view('frontend.tintuc.index',compact('news'));
    }
}
