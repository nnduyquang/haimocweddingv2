<div id="chitiet-album" class="col-md-12">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                {{ Html::image($album->image_cover,'',array('class'=>'img-top')) }}
            </div>
        </div>
        <div class="container">
            <div class="row">


                <h3 class="title">{{$album->name}}</h3>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-12 list-dd hidden-md hidden-lg">
                            <div class="row">
                                <a href="#" class="choose-dd">Địa Điểm Chụp<i class="fa fa-plus-square-o fa-plus"
                                                                              aria-hidden="true"></i><i
                                            class="fa fa-minus-square-o fa-minus" aria-hidden="true"></i></a>
                                <ul class="ul-dd">
                                    @foreach($locations as $key=>$data)
                                        <li><a href="{{URL::to('dia-diem/'.$data->path)}}">{{$data->name}}</a></li>
                                    @endforeach
                                    {{--<li><a href="">Biển Đà Nẵng</a></li>--}}
                                    {{--<li><a href="">Đồi Thông</a></li>--}}
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-10">
                            <div class="row">
                                <div class="grid-haha">
                                    <div class="grid-sizer"></div>
                                    @foreach($imageAlbums as $key=>$data)
                                        <div class="grid-item">
                                            <a class="fancybox" data-fancybox="gallery"
                                               href="{{url('/').'/'.$data->image}}">
                                                {{ Html::image($data->image,'',array('class'=>'')) }}</a>
                                        </div>
                                    @endforeach
                                    {{--<div class="grid-item">--}}
                                    {{--<a class="fancybox" data-fancybox="gallery"--}}
                                    {{--href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/submerged.jpg">--}}
                                    {{--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/submerged.jpg"/></a>--}}
                                    {{--</div>--}}
                                    {{--<div class="grid-item">--}}
                                    {{--<a class="fancybox" data-fancybox="gallery"--}}
                                    {{--href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/look-out.jpg">--}}
                                    {{--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/look-out.jpg"/></a>--}}
                                    {{--</div>--}}
                                    {{--<div class="grid-item">--}}
                                    {{--<a class="fancybox" data-fancybox="gallery"--}}
                                    {{--href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/one-world-trade.jpg">--}}
                                    {{--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/one-world-trade.jpg"/></a>--}}
                                    {{--</div>--}}
                                    {{--<div class="grid-item">--}}
                                    {{--<a class="fancybox" data-fancybox="gallery"--}}
                                    {{--href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/drizzle.jpg">--}}
                                    {{--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/drizzle.jpg"/></a>--}}
                                    {{--</div>--}}
                                    {{--<div class="grid-item">--}}
                                    {{--<a class="fancybox" data-fancybox="gallery"--}}
                                    {{--href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/cat-nose.jpg">--}}
                                    {{--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/cat-nose.jpg"/></a>--}}
                                    {{--</div>--}}
                                    {{--<div class="grid-item">--}}
                                    {{--<a class="fancybox" data-fancybox="gallery"--}}
                                    {{--href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/contrail.jpg">--}}
                                    {{--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/contrail.jpg"/></a>--}}
                                    {{--</div>--}}
                                    {{--<div class="grid-item">--}}
                                    {{--<a class="fancybox" data-fancybox="gallery"--}}
                                    {{--href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/golden-hour.jpg">--}}
                                    {{--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/golden-hour.jpg"/></a>--}}
                                    {{--</div>--}}
                                    {{--<div class="grid-item">--}}
                                    {{--<a class="fancybox" data-fancybox="gallery"--}}
                                    {{--href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/flight-formation.jpg">--}}
                                    {{--<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/82/flight-formation.jpg"/></a>--}}
                                    {{--</div>--}}
                                </div>
                            </div>
                        </div>
                        <div id="album-location" class="col-md-2 hidden-xs hidden-sm">
                            <h3>Nơi Chụp</h3>
                            <ul>
                                @foreach($locations as $key=>$data)
                                    <li><a href="{{URL::to('dia-diem/'.$data->path)}}">{{$data->name}}</a></li>
                                @endforeach
                                {{--<li><a href="">Biển Đà Nẵng</a></li>--}}
                                {{--<li><a href="">Đồi Thông</a></li>--}}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>