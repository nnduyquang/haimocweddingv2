<?php

namespace App\Http\Controllers;

use App\Location;
use Illuminate\Http\Request;

class LocationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $locations = Location::orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.location.index', compact('locations'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.location.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $location = new Location();
        $name = $request->input('name');
        $path = chuyen_chuoi_thanh_path($name);
        $content = $request->input('content');
        $imageCover = $request->input('image-cover');
        $imageCover= substr($imageCover, strpos($imageCover, 'images'), strlen($imageCover) - 1);
        $imageAvata = $request->input('image-avata');
        $imageAvata= substr($imageAvata, strpos($imageAvata, 'images'), strlen($imageAvata) - 1);
        $imagBackground = $request->input('image-background');
        $imagBackground= substr($imagBackground, strpos($imagBackground, 'images'), strlen($imagBackground) - 1);
        $imageMota1 = $request->input('image_mota_1');
        $imageMota1= substr($imageMota1, strpos($imageMota1, 'images'), strlen($imageMota1) - 1);
        $titleMota1 = $request->input('title-mota-1');
        $contentMota1 = $request->input('content-mota-1');
        $imageMota2 = $request->input('image_mota_2');
        $imageMota2= substr($imageMota2, strpos($imageMota2, 'images'), strlen($imageMota2) - 1);
        $titleMota2 = $request->input('title-mota-2');
        $contentMota2 = $request->input('content-mota-2');
        $imageMota3 = $request->input('image_mota_3');
        $imageMota3= substr($imageMota3, strpos($imageMota3, 'images'), strlen($imageMota3) - 1);
        $titleMota3 = $request->input('title-mota-3');
        $contentMota3 = $request->input('content-mota-3');
        $isActive = $request->input('location_is_active');
        $order = $request->input('location_order');
        if ($order) {
            $location->order = $order;
        } else {
            $location->order = 1;
        }
        if ($isActive) {
            $location->isActive = 1;
        } else {
            $location->isActive = 0;
        }
        $location->name = $name;
        $location->content = $content;
        $location->path = $path;
        $location->image_cover = $imageCover;
        $location->image_avata = $imageAvata;
        $location->image_background = $imagBackground;
        $location->image_mota_1 = $imageMota1;
        $location->title_mota_1 = $titleMota1;
        $location->content_mota_1 = $contentMota1;
        $location->image_mota_2 = $imageMota2;
        $location->title_mota_2 = $titleMota2;
        $location->content_mota_2 = $contentMota2;
        $location->image_mota_3 = $imageMota3;
        $location->title_mota_3 = $titleMota3;
        $location->content_mota_3 = $contentMota3;
        $location->save();
        return redirect()->route('location.index')
            ->with('success', 'Tạo Mới Thành Công Địa Điểm');
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
        $location = Location::find($id);
        return view('backend.admin.location.edit', compact('location'));
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
        $location = Location::find($id);
        $name = $request->input('name');
        $path = chuyen_chuoi_thanh_path($name);
        $content = $request->input('content');
        $imageCover = $request->input('image-cover');
        $imageCover= substr($imageCover, strpos($imageCover, 'images'), strlen($imageCover) - 1);
        $imageAvata = $request->input('image-avata');
        $imageAvata= substr($imageAvata, strpos($imageAvata, 'images'), strlen($imageAvata) - 1);
        $imagBackground = $request->input('image-background');
        $imagBackground= substr($imagBackground, strpos($imagBackground, 'images'), strlen($imagBackground) - 1);
        $imageMota1 = $request->input('image_mota_1');
        $imageMota1= substr($imageMota1, strpos($imageMota1, 'images'), strlen($imageMota1) - 1);
        $titleMota1 = $request->input('title-mota-1');
        $contentMota1 = $request->input('content-mota-1');
        $imageMota2 = $request->input('image_mota_2');
        $imageMota2= substr($imageMota2, strpos($imageMota2, 'images'), strlen($imageMota2) - 1);
        $titleMota2 = $request->input('title-mota-2');
        $contentMota2 = $request->input('content-mota-2');
        $imageMota3 = $request->input('image_mota_3');
        $imageMota3= substr($imageMota3, strpos($imageMota3, 'images'), strlen($imageMota3) - 1);
        $titleMota3 = $request->input('title-mota-3');
        $contentMota3 = $request->input('content-mota-3');
        $isActive = $request->input('location_is_active');
        $order = $request->input('location_order');
        if ($order) {
            $location->order = $order;
        } else {
            $location->order = 1;
        }
        if ($isActive) {
            $location->isActive = 1;
        } else {
            $location->isActive = 0;
        }
        $location->name = $name;
        $location->content = $content;
        $location->path = $path;
        $location->image_cover = $imageCover;
        $location->image_avata = $imageAvata;
        $location->image_background = $imagBackground;
        $location->image_mota_1 = $imageMota1;
        $location->title_mota_1 = $titleMota1;
        $location->content_mota_1 = $contentMota1;
        $location->image_mota_2 = $imageMota2;
        $location->title_mota_2 = $titleMota2;
        $location->content_mota_2 = $contentMota2;
        $location->image_mota_3 = $imageMota3;
        $location->title_mota_3 = $titleMota3;
        $location->content_mota_3 = $contentMota3;
        $location->save();
        return redirect()->route('location.index')
            ->with('success', 'Cập Nhật Thành Công Địa Điểm');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $location = Location::find($id);
        $location->delete();
        return redirect()->route('location.index')
            ->with('success', 'Đã Xóa Địa Điểm Thành Công');
    }
}
