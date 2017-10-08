<?php

namespace App\Http\Controllers;

use App\Quotation;
use Illuminate\Http\Request;

class QuotationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $quotations = Quotation::where('type','=','0')->orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.quotation.index', compact('quotations'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.quotation.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $quotation = new Quotation();
        $name = $request->input('name');
        $content = $request->input('content');
        $isActive = $request->input('quotation_is_active');
        $order = $request->input('order');
        if ($isActive) {
            $quotation->isActive = 1;
        } else {
            $quotation->isActive = 0;
        }
        if ($order) {
            $quotation->order = $order;
        } else {
            $quotation->order = 1;
        }
        $image = $request->input('image');
        $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
        $quotation->name = $name;
        $quotation->path = chuyen_chuoi_thanh_path($name);
        $quotation->content = $content;
        $quotation->image = $image;
        $quotation->type=0;
        $quotation->save();
        return redirect()->route('quotation.index')
            ->with('success', 'Tạo Mới Thành Công Báo Giá');
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
        $quotation = Quotation::find($id);
        return view('backend.admin.quotation.edit', compact('quotation'));
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
        $quotation = Quotation::find($id);
        $name = $request->input('name');
        $content = $request->input('content');
        $isActive = $request->input('quotation_is_active');
        $order = $request->input('order');
        if ($isActive) {
            $quotation->isActive = 1;
        } else {
            $quotation->isActive = 0;
        }
        if ($order) {
            $quotation->order = $order;
        } else {
            $quotation->order = 1;
        }
        $image = $request->input('image');
        $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
        $quotation->name = $name;
        $quotation->path = chuyen_chuoi_thanh_path($name);
        $quotation->content = $content;
        $quotation->image = $image;
        $quotation->save();
        return redirect()->route('quotation.index')
            ->with('success', 'Cập Nhật Thành Công Báo Giá');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $quotation = Quotation::find($id);
        $quotation->delete();
        return redirect()->route('quotation.index')
            ->with('success', 'Đã Xóa Báo Giá Thành Công');
    }
    public function search(Request $request)
    {
        $keywords = preg_replace('/\s+/', ' ', $request->input('txtSearch'));
        $quotations = Quotation::where('name', 'like', '%' . $keywords . '%')->orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.quotation.index', compact('$quotation', '$keywords'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }
}
