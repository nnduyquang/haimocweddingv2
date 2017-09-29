@extends('frontend.master')
@section('styles')

@stop
@section('title')
    Thông Tin Dự Án
@stop
@section('scripts')
@stop
@section('slider')
@stop
@section("container")
    <div class="col-md-12">
        <div class="empty-space-32"></div>
        <div class="empty-space-32"></div>
    </div>
    <div class="m-category-layout">
        <div class="m-item-category">
            <div class="m-item-category-0">
                <a href="{{URL::to('can-ho')}}"> {{ Html::image('images/temps/can-ho.png','',array('class'=>'img-category img-rounded')) }}
                    <span>Loại Căn Hộ</span>
                </a>
            </div>
        </div>
        <div class="m-item-category">
            <div class="m-item-category-0">
                <a href="{{URL::to('thiet-ke')}}">{{ Html::image('images/temps/thiet-ke.png','',array('class'=>'img-category img-rounded')) }}
                    <span>Thiết Kế</span>
                </a>
            </div>
        </div>
        <div class="m-item-category">
            <div class="m-item-category-0">
                <a href="{{URL::to('vi-tri')}}">{{ Html::image('images/temps/vi-tri.png','',array('class'=>'img-category img-rounded')) }}
                    <span>Vị Trí</span>
                </a>
            </div>
        </div>
        <div class="m-item-category">
            <div class="m-item-category-0">
                <a href="{{URL::to('tien-ich')}}">{{ Html::image('images/temps/tien-ich.png','',array('class'=>'img-category img-rounded')) }}
                    <span>Tiện Ích</span>
                </a>
            </div>
        </div>
        <div class="m-item-category">
            <div class="m-item-category-0">
                <a href="#">{{ Html::image('images/temps/thanh-toan.png','',array('class'=>'img-category img-rounded')) }}
                    <span>Phương Thức Thanh Toán</span>
                </a>
            </div>
        </div>
        <div class="m-item-category">
            <div class="m-item-category-0">
                <a href="{{URL::to('lien-he')}}">{{ Html::image('images/temps/lien-he.png','',array('class'=>'img-category img-rounded')) }}
                    <span>Liên Hệ</span>
                </a>
            </div>
        </div>
    </div>
@stop

