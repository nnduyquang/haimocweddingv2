<?php

namespace App\Http\Controllers;

use App\Config;
use App\Http\Requests\NewsRequest;
use App\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $news = News::orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.news.index', compact('news'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.news.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(NewsRequest $request)
    {
        $news = new News();
        $title = $request->input('title');
        $content = $request->input('content-news');
        $isPost = $request->input('news_is_post');
        if ($isPost) {
            $news->isPost = 1;
        } else {
            $news->isPost = 0;
        }
        $image = $request->input('image');
        $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
        $news->title = $title;
        $news->path = chuyen_chuoi_thanh_path($title);
        $news->content = $content;
        $news->image = $image;
        $news->user_id = Auth::user()->id;
        $news->save();
        return redirect()->route('news.index')
            ->with('success', 'Tạo Mới Thành Công Tin Tức');

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
        $news = News::find($id);
        return view('backend.admin.news.edit', compact('news'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function update(NewsRequest $request, $id)
    {
        $news = News::find($id);
        $title = $request->input('title');
        $content = $request->input('content-news');
        $isPost = $request->input('news_is_post');
        if ($isPost) {
            $news->isPost = 1;
        } else {
            $news->isPost = 0;
        }
        $image = $request->input('image');
        $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
        $news->title = $title;
        $news->content = $content;
        $news->image = $image;
        $news->path = chuyen_chuoi_thanh_path($title);
        $news->user_id = Auth::user()->id;
        $news->save();
        return redirect()->route('news.index')
            ->with('success', 'Cập Nhật Thành Công Tin Tức');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $news = News::find($id);
        $news->delete();
        return redirect()->route('news.index')
            ->with('success', 'Đã Xóa Bài Viết Thành Công');
    }

    public function search(Request $request)
    {
        $keywords = preg_replace('/\s+/', ' ', $request->input('txtSearch'));
        $news = News::where('title', 'like', '%' . $keywords . '%')->orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.news.index', compact('news', 'keywords'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    public function getAllNews()
    {
        $news = News::where('isPost', '=', '1')->orderBy('id', 'DESC')->get();
        foreach ($news as $data) {
            $data->content = cat_chuoi_dai_thanh_ngan(bo_the_html_trong_chuoi($data->content), 400);
        }
        $diachi=Config::whereIn('name',['cf-address-post'])->first();
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.tintuc.index', compact('news','diachi','phone'));
    }

    public function getDetailNews($path)
    {
        $news = News::where('path', 'like','%'.$path.'%')->first();
        $diachi=Config::whereIn('name',['cf-address-post'])->first();
        $phone=Config::whereIn('name',['cf-phone'])->first();
        return view('frontend.tintuc.detail', compact('news','diachi','phone'));
    }
}
