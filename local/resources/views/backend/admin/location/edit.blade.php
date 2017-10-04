@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Chỉnh Sửa Địa Điểm</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('location.index') }}"> Back</a>
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
    {!! Form::model($location,array('route' => ['location.update',$location->id],'method'=>'PATCH')) !!}
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <strong>Tên Địa Điểm</strong>
                {!! Form::text('name', null, array('placeholder' => 'Tiêu Đề','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <strong>
                    Ảnh Cover</strong>
                <div class="form-inline">
                    {!! Form::text('image-cover', url('/').'/'.$location->image-cover, array('placeholder' => '','class' => 'form-control','id'=>'pathCover')) !!}
                    {!! Form::button('Browses', array('id' => 'btnBrowseCover','class'=>'btn btn-primary')) !!}
                </div>
                <div class="form-group">
                    {{ Html::image($location->image-cover,'',array('id'=>'showDDCover','class'=>'showDDCover'))}}
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <strong>
                    Ảnh Avatar</strong>
                <div class="form-inline">
                    {!! Form::text('image-avata', url('/').'/'.$location->image-avata, array('placeholder' => '','class' => 'form-control','id'=>'pathAvata')) !!}
                    {!! Form::button('Browses', array('id' => 'btnBrowseAvata','class'=>'btn btn-primary')) !!}
                </div>
                <div class="form-group">
                    {{ Html::image($location->image-avata,'',array('id'=>'showDDAvata','class'=>'showDDAvata'))}}
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <strong>
                    Ảnh Background</strong>
                <div class="form-inline">
                    {!! Form::text('image-background', url('/').'/'.$location->image-background, array('placeholder' => '','class' => 'form-control','id'=>'pathBackground')) !!}
                    {!! Form::button('Browses', array('id' => 'btnBrowseBackground','class'=>'btn btn-primary')) !!}
                </div>
                <div class="form-group">
                    {{ Html::image($location->image-background,'',array('id'=>'showDDBackground','class'=>'showDDBackground'))}}
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Mô Tả Ngắn:</strong>
                {!! Form::textarea('content',$location->content, array('placeholder' => 'Nội Dung','id'=>'content-location','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
            </div>
        </div>

        <div class="col-md-12">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="form-inline">
                            <span>Hình Đại Diện 1: </span>
                            {!! Form::text('image_mota_1', url('/').'/'.$location->image_mota_1, array('class' => 'form-control','id'=>'path1')) !!}
                            {!! Form::button('Browses', array('id' => 'btnBrowseDD1','class'=>'btn btn-primary')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {{ Html::image($location->image_mota_1,'',array('id'=>'showHinh1','class'=>'showHinh1'))}}
                    </div>
                    {!! Form::text('title-mota-1', null, array('placeholder'=>'Tiêu Đề 1','class' => 'form-control')) !!}
                    {!! Form::textarea('content-mota-1',$location->content-mota-1, array('placeholder' => 'Mô Tả 1','id'=>'content-mota-1','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="form-inline">
                            <span>Hình Đại Diện 2: </span>
                            {!! Form::text('image_mota_2', url('/').'/'.$location->image_mota_2, array('class' => 'form-control','id'=>'path2')) !!}
                            {!! Form::button('Browses', array('id' => 'btnBrowseDD2','class'=>'btn btn-primary')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {{ Html::image($location->image_mota_2,'',array('id'=>'showHinh2','class'=>'showHinh2'))}}
                    </div>
                    {!! Form::text('title-mota-2', null, array('placeholder'=>'Tiêu Đề 2','class' => 'form-control')) !!}
                    {!! Form::textarea('content-mota-2',$location->content-mota-2, array('placeholder' => 'Mô Tả 2','id'=>'content-mota-2','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <div class="form-inline">
                            <span>Hình Đại Diện 3: </span>
                            {!! Form::text('image_mota_3', url('/').'/'.$location->image_mota_3, array('class' => 'form-control','id'=>'path3')) !!}
                            {!! Form::button('Browses', array('id' => 'btnBrowseDD3','class'=>'btn btn-primary')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {{ Html::image($location->image_mota_3,'',array('id'=>'showHinh3','class'=>'showHinh3'))}}
                    </div>
                    {!! Form::text('title-mota-3', null, array('placeholder'=>'Tiêu Đề 3','class' => 'form-control')) !!}
                    {!! Form::textarea('content-mota-3',$location->content-mota-3, array('placeholder' => 'Mô Tả 3','id'=>'content-mota-3','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="form-group">
                <strong>Tình Trạng:</strong>
                <input {{$location->isActive==1?'checked':''}} name="location_is_active" data-on="Đăng" data-off="Không Đăng" type="checkbox" data-toggle="toggle">
            </div>
            <div class="form-group">
                <strong>Thứ tự:</strong>
                {!! Form::text('location_order', $location->order, array('placeholder' => 'Thứ Tự','class' => 'form-control')) !!}
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Tạo Mới Địa Điểm</button>
        </div>
    </div>
    {!! Form::close() !!}
@stop
