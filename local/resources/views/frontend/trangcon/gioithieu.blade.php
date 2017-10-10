@extends('frontend.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('slider')

@stop
@section('container')
    <div id="gioi-thieu" class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    {{ Html::image($post->image,'',array('class'=>'img-top')) }}
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="wrap-content">
                        {!! $post->content !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop