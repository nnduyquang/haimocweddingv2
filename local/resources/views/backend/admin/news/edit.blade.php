@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Chỉnh Sửa Tin Tức</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('news.index') }}"> Back</a>
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
    {!! Form::model($news,array('route' => ['news.update',$news->id],'method'=>'PATCH')) !!}
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <strong>Tiêu Đề:</strong>
                {!! Form::text('title', null, array('placeholder' => 'Tiêu Đề','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nội Dung:</strong>
                {!! Form::textarea('content-news',$news->content, array('placeholder' => 'Nội Dung','id'=>'content-news','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">

            <div class="form-group">
                <div class="form-inline">
                    <span>Hình Đại Diện: </span>
                    {!! Form::text('image', url('/').'/'.$news->image, array('class' => 'form-control','id'=>'path')) !!}
                    {!! Form::button('Browses', array('id' => 'btnBrowse','class'=>'btn btn-primary')) !!}
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                {{ Html::image($news->image,'',array('id'=>'showHinhDaiDien','class'=>'showHinh'))}}
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <strong>Tình Trạng:</strong>
                <input {{$news->isPost==1?'checked':''}}  name="news_is_post" data-on="Đăng" data-off="Không Đăng" type="checkbox"  data-toggle="toggle">
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <strong>Tiêu điểm:</strong>
                <input {{$news->isFocus==1?'checked':''}} name="news_is_focus" data-on="Tiêu Điểm" data-off="Không" type="checkbox"  data-toggle="toggle">
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Cập Nhật Tin Tức</button>
        </div>
    </div>
    {!! Form::close() !!}
@stop
