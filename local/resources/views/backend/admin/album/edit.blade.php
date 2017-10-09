@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Chỉnh Sửa Album</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('album.index') }}"> Back</a>
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
    {!! Form::model($album,array('route' => ['album.update',$album->id],'method'=>'PATCH','id'=>'formThem')) !!}
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <strong>Tên Album:</strong>
                {!! Form::text('name', null, array('placeholder' => 'Tiêu Đề','class' => 'form-control')) !!}
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <strong>Loại Album:</strong><br>
                {{--{{ Form::hidden('hd-email-receive', $product->category_id) }}--}}
                @foreach($categoryAlbums as $key=>$data)
                    @if($data->id===$album->category_album_id)
                        <div class="col-md-12">
                            {{ Form::radio('idCategoryAlbum', $data->id,true) }}{{ $data->name}}<br>
                        </div>
                    @else
                        <div class="col-md-12">
                            {{ Form::radio('idCategoryAlbum', $data->id,false) }}{{ $data->name}}<br>
                        </div>
                    @endif
                @endforeach
            </div>
        </div>
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    <div class="row" id="insertImage">
                        @foreach($imageAlbum as $key=>$data)
                            <div class='col-md-1'>
                                <a class="fancybox" data-fancybox="gallery"
                                   href="{{url('/').'/'.$data->image}}">
                                    <img src='{{url('/').'/'.$data->image}}' class='img-choose'  alt=''></a>
                                <input name='imageChooses[]' type='checkbox' data-id="{{$data->id}}" value='{{url('/').'/'.$data->image}}'>
                            </div>
                        @endforeach
                    </div>
                    {{ Form::hidden('listIDDelete', '') }}
                </div>
                <div class="col-md-12 text-center">
                    <div class="row">
                        <button id="btnThemAnhAlbum" type="button" class="btn btn-primary">Thêm Ảnh Vào Album</button>
                        <button id="btnXoaAnhAlbumEdit" type="button" class="btn btn-primary">Xóa Ảnh</button>
                    </div>
                </div>

            </div>
        </div>
        <div class="col-md-12" style="margin-top: 30px">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <strong>Địa Điểm Chụp</strong>
                    </div>
                    <div class="form-group">
                        @php
                            $arrayLocation= $album->locations()->get();
                            $string_idLocation='';
                            foreach ($arrayLocation as $key=> $idLocation){
                                $string_idLocation=$idLocation->pivot->location_id.'-'.$string_idLocation;
                            }
                        @endphp
                        @foreach ($locations as $key => $data)
                            @if (in_array($data->id,explode("-",substr($string_idLocation,0,-1)) ) !== false)
                                {{ Form::checkbox('locations[]', $data->id),true }} {{$data->name}}<br>
                            @else
                                {{ Form::checkbox('locations[]', $data->id) }} {{$data->name}}<br>
                            @endif
                        @endforeach
                    </div>
                    <div class="col-md-2">
                        <div class="row">
                            <div class="form-group">
                                <div class="form-inline">
                                    <strong>Thứ tự:</strong>
                                    {!! Form::text('order', null, array('placeholder' => '','class' => 'form-control','style'=>'width:70px')) !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="form-inline">
                            <span>Hình Cover: </span>
                            {!! Form::text('image_album_cover',  url('/').'/'.$album->image_cover, array('class' => 'form-control','id'=>'pathAlbumCover')) !!}
                            {!! Form::button('Browses', array('id' => 'btnBrowseAlbumCover','class'=>'btn btn-primary')) !!}
                        </div>
                    </div>
                    <div class="form-group">
                        {{ Html::image($album->image_cover,'',array('id'=>'showHinhAlbumCover','class'=>'showHinhAlbumCover'))}}
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            {!! Form::textarea('content',null, array('placeholder' => 'Mô Tả Album Nếu Có','id'=>'content-album','class' => 'form-control','rows'=>'10','style'=>'resize:none')) !!}
        </div>


        <div class="col-md-12">
            <div class="form-group">
                <strong>Tình Trạng:</strong>
                <input {{$album->isActive==1?'checked':''}} name="album_is_active" data-on="Đăng" data-off="Không Đăng" type="checkbox"
                       data-toggle="toggle">
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnSubmitThemAlbum" type="button" class="btn btn-primary">Cập Nhật Album</button>
        </div>
    </div>
    {!! Form::close() !!}
@stop
