<?php

namespace App\Http\Controllers;

use App\CategoryAlbum;
use Illuminate\Http\Request;

class CategoryAlbumController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $categoryalbums = CategoryAlbum::orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.categoryalbum.index', compact('categoryalbums'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.categoryalbum.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $categoryalbum = new CategoryAlbum();
        $name = $request->input('name');
        $isActive = $request->input('categoryalbum_is_active');
        $order = $request->input('order');
        if ($isActive) {
            $categoryalbum->isActive = 1;
        } else {
            $categoryalbum->isActive = 0;
        }
        if ($order) {
            $categoryalbum->order = $order;
        } else {
            $categoryalbum->order = 1;
        }
        $categoryalbum->name = $name;
        $categoryalbum->path = chuyen_chuoi_thanh_path($name);
        $categoryalbum->save();
        return redirect()->route('categoryalbum.index')
            ->with('success', 'Tạo Mới Thành Công Loại Album');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categoryalbum = CategoryAlbum::find($id);
        return view('backend.admin.categoryalbum.edit', compact('categoryalbum'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $categoryalbum = CategoryAlbum::find($id);
        $name = $request->input('name');
        $isActive = $request->input('categoryalbum_is_active');
        $order = $request->input('order');
        if ($isActive) {
            $categoryalbum->isActive = 1;
        } else {
            $categoryalbum->isActive = 0;
        }
        if ($order) {
            $categoryalbum->order = $order;
        } else {
            $categoryalbum->order = 1;
        }
        $categoryalbum->name = $name;
        $categoryalbum->path = chuyen_chuoi_thanh_path($name);
        $categoryalbum->save();
        return redirect()->route('categoryalbum.index')
            ->with('success', 'Tạo Mới Thành Công Loại Album');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $categoryalbum = CategoryAlbum::find($id);
        $categoryalbum->delete();
        return redirect()->route('categoryalbum.index')
            ->with('success', 'Đã Xóa Loại Album Thành Công');
    }
}
