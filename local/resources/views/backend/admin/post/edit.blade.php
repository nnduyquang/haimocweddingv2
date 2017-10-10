@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Chỉnh Sửa Bài Viết</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('post.index') }}"> Back</a>
            </div>
        </div>
    </div>
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {!! Form::model($post,array('route' => ['post.update',$post->id],'method'=>'PATCH')) !!}
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <strong>Bài Viết:</strong>
                {!! Form::text('title', null, array('placeholder' => 'Tiêu Đề','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nội Dung:</strong>
                {!! Form::textarea('content',$post->content, array('placeholder' => 'Nội Dung','id'=>'content-post','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">

            <div class="form-group">
                <div class="form-inline">
                    <span>Hình Đại Diện: </span>
                    {!! Form::text('image', url('/').'/'.$post->image, array('class' => 'form-control','id'=>'pathPost')) !!}
                    {!! Form::button('Browses', array('id' => 'btnBrowsePost','class'=>'btn btn-primary')) !!}
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                {{ Html::image($post->image,'',array('id'=>'showHinhDaiDienPost','class'=>'showHinhPost'))}}
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <strong>Tình Trạng:</strong>
                <input {{$post->isPost==1?'checked':''}}  name="post_is_post" data-on="Đăng" data-off="Không Đăng" type="checkbox"  data-toggle="toggle">
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Bài Viết</button>
        </div>
    </div>
    {!! Form::close() !!}
@stop
