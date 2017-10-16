<div id="section1" class="col-md-12">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12 top-info">
                        @foreach($newsFocus as $key=>$data)
                        <div class="col-md-4 one-item">
                            <div class="row">
                                <a href="{{URL::to('tin-tuc/'.$data->path)}}">
                                    {{ Html::image($data->image,'',array('class'=>'')) }}
                                    <p>{{$data->title}}</p>
                                </a>
                            </div>
                        </div>
                        @endforeach

                    </div>
                    <div class="col-md-12 bottom-info">
                        <h3>Bộ Sưu Tập Ảnh Cưới</h3>
                        <p>Với hơn 5 năm trong nghề, Hải Mộc Wedding đã cho ra đời nhiều bộ ảnh cưới có những
                            phong cách độc đáo</p>
                        <a href="{{URL::to('album/album-ngoai-canh')}}">Xem Thêm</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="wrap-item">
                        <h3>Phong Cách Cưới 2017</h3>
                        @foreach($newsOther as $key=>$data)
                        <a href="{{URL::to('tin-tuc/'.$data->path)}}">
                            <div class="one-item">
                                <p>{{$data->title}}</p>
                            </div>
                        </a>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>