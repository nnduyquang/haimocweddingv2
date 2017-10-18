<div id="section3" class="col-md-12">
    <div class="row">
        <div class="container">
            <div class="row">
                <h3>Địa Điểm Chụp Ảnh Đà Nẵng</h3>
                <div class="col-md-12 hidden-sm hidden-xs">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="row">
                                <div class="s3-wrap-location">
                                    <ul>
                                        @foreach($locations as $key=>$data)
                                            <li data-map="{{$data->path}}"><a
                                                        href="{{URL::to('dia-diem/'.$data->path)}}">{{$data->name}}</a>
                                            </li>
                                        @endforeach
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
                        </div>
                    </div>
                </div>
                <div class="col-md-12 hidden-lg hidden-md">
                    <div class="row">
                        <ul>
                            @foreach($locations as $key=>$data)
                                <li><a href="{{URL::to('dia-diem/'.$data->path)}}">{{ Html::image($data->image_mobile,'',array('class'=>'img-mobile')) }}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>