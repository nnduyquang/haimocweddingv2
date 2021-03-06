<div id="album" class="col-md-12">
    <div class="row">
        <h3 class="title">{{$categoryAlbum->name}}</h3>
        <div id="album-khuvuc" class="col-md-12">
            <div class="row">
                <div class="col-md-2">
                    <div class="row"><h3>Khu Vực</h3></div>
                </div>
                <div class="col-md-9">
                    @foreach($locations as $key=>$data)
                        <div class="col-md-3 one-dd"><a href="{{URL::to('dia-diem/'.$data->path)}}">{{$data->name}}</a>
                        </div>
                    @endforeach
                    {{--<div class="col-md-3 one-dd"><a href="">Đồi Chè</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Hội An</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Biển Đà Nẵng</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Bà Nà</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Bồ Câu</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Hồ Xanh</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Cầu Tình Yêu</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Đèo Hải Vân</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Resort</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Đồi Thông</a></div>--}}
                    {{--<div class="col-md-3 one-dd"><a href="">Phim Trường</a></div>--}}
                    </div>
                </div>
            </div>
            <div id="list-album" class="col-md-12">
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
</div>