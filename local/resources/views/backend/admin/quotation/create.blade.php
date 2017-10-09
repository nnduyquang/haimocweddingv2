@extends('backend.admin.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('container')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Tạo Mới Báo Giá</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('quotation.index') }}"> Back</a>
            </div>
        </div>
    </div>
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Úi!</strong> Hình Như Có Gì Đó Sai Sai.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    {!! Form::open(array('route' => 'quotation.store','method'=>'POST')) !!}
    <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <strong>Tiêu Đề:</strong>
                {!! Form::text('name', null, array('placeholder' => 'Tiêu Đề','class' => 'form-control')) !!}
            </div>
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
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <div class="form-inline">
                    <span>Báo Giá: </span>
                    {!! Form::text('image', null, array('class' => 'form-control','id'=>'pathQuotation')) !!}
                    {!! Form::button('Browses', array('id' => 'btnBrowseQuotations','class'=>'btn btn-primary')) !!}
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                {{ Html::image('','',array('id'=>'showHinhQuotation','class'=>'showHinhQuotation'))}}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Nội Dung:</strong>
                {!! Form::textarea('content',null, array('placeholder' => 'Nội Dung','id'=>'content-quotation','class' => 'form-control','rows'=>'20','style'=>'resize:none')) !!}
            </div>
        </div>

        <div class="col-md-12">
            <div class="form-group">
                <strong>Tình Trạng:</strong>
                <input name="quotation_is_active" data-on="Đăng" data-off="Không Đăng" type="checkbox"  data-toggle="toggle">
            </div>
        </div>

        <div class="col-xs-12 col-sm-12 col-md-12 text-center">
            <button id="btnDanhMuc" type="submit" class="btn btn-primary">Tạo Mới Báo Giá</button>
        </div>
    </div>
    {!! Form::close() !!}
@stop