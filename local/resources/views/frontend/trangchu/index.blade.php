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
   @include('frontend.trangchu.section1')
   @include('frontend.trangchu.section4')
   @include('frontend.trangchu.section2')
   @include('frontend.trangchu.section3')
@stop