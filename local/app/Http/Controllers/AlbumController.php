<?php

namespace App\Http\Controllers;

use App\Album;
use App\ImagesAlbum;
use App\Location;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AlbumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $albums = Album::orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.album.index', compact('albums'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $locations = Location::all()->sortBy('order');
        return view('backend.admin.album.create', compact('roles', 'locations'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $album = new Album();
        $name = $request->input('name');
        $path = chuyen_chuoi_thanh_path($name);
        $locations = $request->input('locations');
        $imageChooses = $request->input('imageChooses');
        $order = $request->input('order');
        $imageCover = $request->input('image_album_cover');
        $imageCover = substr($imageCover, strpos($imageCover, 'images'), strlen($imageCover) - 1);
        $content = $request->input('content');
        $isActive = $request->input('album_is_active');
        $album->name = $name;
        $album->path = $path;
        if ($order) {
            $album->order = $order;
        } else {
            $album->order = 1;
        }
        if ($isActive) {
            $album->isActive = 1;
        } else {
            $album->isActive = 0;
        }
        $album->content = $content;
        $album->image_cover = $imageCover;
        $album->user_id = Auth::user()->id;
        $album->save();
        foreach ($imageChooses as $imageChoose) {
            $imageAlbum = new ImagesAlbum();
            $subImageChoose= substr($imageChoose, strpos($imageChoose, 'images'), strlen($imageChoose) - 1);
            $imageAlbum->image=$subImageChoose;
            $imageAlbum->album_id=$album->id;
            $imageAlbum->save();
        }
        $album->locations()->attach($locations);
        return redirect()->route('album.index')
            ->with('success', 'Thêm Thành Công Album');

    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $album = Album::find($id);
        $locations = $request->input('locations');
        $album->locations()->sync($locations);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
