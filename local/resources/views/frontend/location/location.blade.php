<div id="location" class="col-md-12">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                {{ Html::image($location->image_cover,'',array('class'=>'img-top')) }}
            </div>
        </div>
        <h3 class="title">{{$location->name}}</h3>
        <p class="info"{!! $location->content !!}</p>
        <div id="location-info" class="col-md-12"
             style="background-image: url({{asset($location->image_background)}});">
            <div class="row">
                <div class="col-md-12 location-filter">
                    <div class="row">
                        <h2 class="title-location-info">Địa Điểm Chụp Nổi Tiếng</h2>
                        <div class="col-md-4">
                            {{ Html::image($location->image_mota_1,'',array('class'=>'img-info')) }}
                            <h3 class="title-info">{{$location->title_mota_1}}</h3>
                            <p class="info">{!! $location->content_mota_1 !!}</p>
                        </div>
                        <div class="col-md-4">
                            {{ Html::image($location->image_mota_2,'',array('class'=>'img-info')) }}
                            <h3 class="title-info">{{$location->title_mota_2}}</h3>
                            <p class="info">{!! $location->content_mota_2 !!}
                            </p>
                        </div>
                        <div class="col-md-4">
                            {{ Html::image($location->image_mota_3,'',array('class'=>'img-info')) }}
                            <h3 class="title-info">{{$location->title_mota_3}}</h3>
                            <p class="info">{!! $location->content_mota_3 !!}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="location-list-album" class="col-md-12">
            <h3 class="title-list-album">Album</h3>
            <div class="row">
                @foreach($albums as $key=>$data)
                    <div class="col-md-4 one-item">
                        <div class="row">
                            <a href="{{URL::to('album/'.$data->categoryAlbums->path.'/'.$data->path)}}">
                                {{ Html::image($data->image_cover,'',array('class'=>'')) }}
                                <div class="item-info">
                                    <p class="title">{{$data->name}}</p>
                                    <p class="btn">Xem Chi Tiết</p>
                                </div>
                            </a>
                        </div>
                    </div>
                @endforeach
                {{--<div class="col-md-4 one-item">--}}
                    {{--<div class="row">--}}
                        {{--<a href="">--}}
                            {{--{{ Html::image('images/temps/NAMZ1894mini_1495281885303.jpg','',array('class'=>'')) }}--}}
                            {{--<div class="item-info">--}}
                                {{--<p class="title">Đà Nẵng - Hội An</p>--}}
                                {{--<p class="btn">Xem Chi Tiết</p>--}}
                            {{--</div>--}}
                        {{--</a>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-4 one-item">--}}
                    {{--<div class="row">--}}
                        {{--<a href="">--}}
                            {{--{{ Html::image('images/temps/NAMZ1894mini_1495281885303.jpg','',array('class'=>'')) }}--}}
                            {{--<div class="item-info">--}}
                                {{--<p class="title">Đà Nẵng - Hội An</p>--}}
                                {{--<p class="btn">Xem Chi Tiết</p>--}}
                            {{--</div>--}}
                        {{--</a>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-4 one-item">--}}
                    {{--<div class="row">--}}
                        {{--<a href="">--}}
                            {{--{{ Html::image('images/temps/NAMZ1894mini_1495281885303.jpg','',array('class'=>'')) }}--}}
                            {{--<div class="item-info">--}}
                                {{--<p class="title">Đà Nẵng - Hội An</p>--}}
                                {{--<p class="btn">Xem Chi Tiết</p>--}}
                            {{--</div>--}}
                        {{--</a>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-4 one-item">--}}
                    {{--<div class="row">--}}
                        {{--<a href="">--}}
                            {{--{{ Html::image('images/temps/NAMZ1894mini_1495281885303.jpg','',array('class'=>'')) }}--}}
                            {{--<div class="item-info">--}}
                                {{--<p class="title">Đà Nẵng - Hội An</p>--}}
                                {{--<p class="btn">Xem Chi Tiết</p>--}}
                            {{--</div>--}}
                        {{--</a>--}}
                    {{--</div>--}}
                {{--</div>--}}
                {{--<div class="col-md-4 one-item">--}}
                    {{--<div class="row">--}}
                        {{--<a href="">--}}
                            {{--{{ Html::image('images/temps/NAMZ1894mini_1495281885303.jpg','',array('class'=>'')) }}--}}
                            {{--<div class="item-info">--}}
                                {{--<p class="title">Đà Nẵng - Hội An</p>--}}
                                {{--<p class="btn">Xem Chi Tiết</p>--}}
                            {{--</div>--}}
                        {{--</a>--}}
                    {{--</div>--}}
                {{--</div>--}}
            </div>
        </div>
    </div>

</div>