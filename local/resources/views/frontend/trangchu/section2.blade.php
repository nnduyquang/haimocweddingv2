<div id="section2" class="col-md-12">
    <div class="row">
        <h3>Album Galerry</h3>
        <div class="col-md-12" >
            <div class="row">
                <ul class="album-category">
                    @foreach($categoryAlbum as $key=>$data)
                    <li><a href="{{URL::to('album/'.$data->path)}}">{{$data->name}}</a></li>
                    @endforeach
                    {{--<li><a href="#">Phóng Sự Ngày Cưới</a></li>--}}
                    {{--<li><a href="#">Album Gia Đình - Em Bé</a></li>--}}
                </ul>
            </div>
        </div>
        <div class="col-md-12 list-album">
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
        {{--<div class="col-md-12 view-all">--}}
            {{--<a href="{{URL::to('album')}}" >Xem Tất Cả >></a>--}}
        {{--</div>--}}
    </div>
</div>