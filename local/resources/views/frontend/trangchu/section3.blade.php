<div id="section3" class="col-md-12">
    <div class="row">
        <div class="container">
            <div class="row">
                <h3>Địa Điểm Chụp Ảnh Đà Nẵng</h3>
                <div class="col-md-3">
                    <div class="row">
                        <div class="s3-wrap-location">
                            <ul>
                                @foreach($locations as $key=>$data)
                                    <li data-map="{{$data->path}}"><a
                                                href="{{URL::to('dia-diem/'.$data->path)}}">{{$data->name}}</a></li>
                                @endforeach
                                {{--<li data-map="cau-tinh-yeu"><a href="">Cầu Tình Yêu</a></li>--}}
                                {{--<li data-map="resort"><a href="">Resort</a></li>--}}
                                {{--<li data-map="phim-truong"><a href="">Phim Trường</a></li>--}}
                                {{--<li data-map="ho-xanh"><a href="">Hồ Xanh</a></li>--}}
                                {{--<li data-map="bo-cau"><a href="">Bồ Câu</a></li>--}}
                                {{--<li data-map="hoi-an"><a href="">Hội An</a></li>--}}
                                {{--<li data-map="bai-da"><a href="">Bãi Đá</a></li>--}}
                                {{--<li data-map="doi-che"><a href="">Đồi Chè</a></li>--}}
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 s3-wrap-img">
                    <div class="row">
                        {{ Html::image($locations[0]->image_avata,'',array('class'=>'img-location img-active','data-map-name'=>$locations[0]->path)) }}
                        @foreach($locations as $key=>$data)
                            @if ($key < 1)
                                @continue;
                            @endif
                            {{ Html::image($data->image_avata,'',array('class'=>'img-location','data-map-name'=>$data->path)) }}

                        @endforeach
                    </div>
                    {{--{{ Html::image('images/temps/deohaivan_1496668968497.png','',array('class'=>'img-location img-active','data-map-name'=>'deo-hai-van')) }}--}}
                    {{--{{ Html::image('images/temps/cautinhyeu_1496669251170.png','',array('class'=>'img-location','data-map-name'=>'cau-tinh-yeu')) }}--}}
                    {{--{{ Html::image('images/temps/doiche_1496672837496.png','',array('class'=>'img-location','data-map-name'=>'doi-che')) }}--}}
                    {{--{{ Html::image('images/temps/baida_1496669860087.png','',array('class'=>'img-location','data-map-name'=>'bai-da')) }}--}}
                </div>
            </div>
        </div>
    </div>
</div>