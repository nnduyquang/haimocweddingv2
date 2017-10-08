<div class="slider">
    {{--{{ Html::image('images/slider/slider_01.jpg','',array('class'=>'')) }}--}}
    <div class="slider-wrapper theme-default">
        <div id="slider1" class="nivoSlider">
            @foreach ($sliders as $key => $data)
            {{ Html::image($data->slider_image,'',array('class'=>'slideshow')) }}
            @endforeach
            {{--{{ Html::image('images/slides/2_1495620718917.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/slides/NAMZ1624bg_1495333128630.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/slides/NAMZ1778bg_1495333317878.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/slides/NAMZ1798bg_1495333301676.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/slides/NAMZ1808bg_1495333143128.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/slides/NAMZ1888_1495333162043.jpg','',array('class'=>'slideshow')) }}--}}
            {{--{{ Html::image('images/slides/sl1_1495618270979.jpg','',array('class'=>'slideshow')) }}--}}
        </div>
        {{--<div class="slider-on-mobile hidden-md hidden-lg">--}}
        {{--{{ Html::image('images/sliders/SMART-CITY-800x1500.jpg','',array('class'=>'slider-mobile hidden-md hidden-lg')) }}--}}
        {{--<div class="slider-mobile-text">--}}
        {{--<p class="slider-header">Sài Gòn Intela</p>--}}
        {{--<p class="slider-description">Chỉ Thanh Toán 300 triệu nhận ngay căn hộ thông minh văn mình</p>--}}
        {{--<a href="{{URL::to('lien-he')}}"><button id="" class="btn btn-lienhe">LIÊN HỆ</button></a>--}}
        {{--</div>--}}
        {{--</div>--}}
    </div>
</div>