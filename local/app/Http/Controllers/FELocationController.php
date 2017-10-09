<?php

namespace App\Http\Controllers;

use App\Location;
use Illuminate\Http\Request;

class FELocationController extends Controller
{
    function getLocationInfo($pathLocation)
    {
        $location = Location::where('path','=',$pathLocation)->first();
        $albums=$location->albums()->get();
        return view('frontend.location.index',compact('location','albums'));
    }
}
