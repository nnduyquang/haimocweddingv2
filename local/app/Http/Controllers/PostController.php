<?php

namespace App\Http\Controllers;

use App\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $posts = News::where('category_post_id','=',2)->orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.post.index', compact('posts'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.post.create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $post = new News();
        $title = $request->input('title');
        $content = $request->input('content');
        $isPost = $request->input('post_is_post');
        if ($isPost) {
            $post->isPost = 1;
        } else {
            $post->isPost = 0;
        }
        $image = $request->input('image');
        $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
        $post->title = $title;
        $post->path = chuyen_chuoi_thanh_path($title);
        $post->content = $content;
        $post->image = $image;
        $post->category_post_id=2;
        $post->user_id = Auth::user()->id;
        $post->save();
        return redirect()->route('post.index')
            ->with('success', 'Tạo Mới Thành Công Bài Viết');

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
        $post = News::find($id);
        return view('backend.admin.post.edit', compact('post'));
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
        $post = News::find($id);
        $title = $request->input('title');
        $content = $request->input('content');
        $isPost = $request->input('post_is_post');
        if ($isPost) {
            $post->isPost = 1;
        } else {
            $post->isPost = 0;
        }
        $image = $request->input('image');
        $image = substr($image, strpos($image, 'images'), strlen($image) - 1);
        $post->title = $title;
        $post->content = $content;
        $post->image = $image;
        $post->path = chuyen_chuoi_thanh_path($title);
        $post->category_post_id=2;
        $post->user_id = Auth::user()->id;
        $post->save();
        return redirect()->route('post.index')
            ->with('success', 'Cập Nhật Thành Công Bài Viết');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = News::find($id);
        $post->delete();
        return redirect()->route('post.index')
            ->with('success', 'Đã Xóa Bài Viết Thành Công');
    }

    public function search(Request $request)
    {
        $keywords = preg_replace('/\s+/', ' ', $request->input('txtSearch'));
        $posts = News::where('title', 'like', '%' . $keywords . '%')->where('category_post_id','=',2)->orderBy('id', 'DESC')->paginate(5);
        return view('backend.admin.post.index', compact('posts', 'keywords'))
            ->with('i', ($request->input('page', 1) - 1) * 5);
    }

    public function getContentGioiThieu(){
        $post = News::where('path','=','gioi-thieu')->first();
        return view('frontend.trangcon.gioithieu', compact('post'));
    }
}
