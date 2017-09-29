@extends('frontend.master')
@section('styles')
   {{ Html::style('css/themes/default/default.css') }}
@stop
@section('scripts')

@stop
@section('slider')
   @include('frontend.slider.slider')
@stop
@section('container')
   Hello
@stop