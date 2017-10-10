<div id="bao-gia" class="col-md-12">
    <div class="col-md-12">
        <div class="row">
            {{ Html::image($quotations[0]->image_cover,'',array('class'=>'img-top')) }}
        </div>
    </div>
    <div class="row">
        <h3 class="title-top-bao-gia">Bảng Giá</h3>
        <p class="p-top-baogia">Đến với Hải Mộc Wedding để trải nghiệm những dịch vụ tốt nhất với mức giá vô cùng hấp
            dẫn</p>
        <div class="col-md-12">
            <div class="row">
                <div class="container">
                    <div class="row">
                        @foreach($quotations as $key=>$data)
                            <div class="col-md-3 one-item-bao-gia">
                                <a href="{{URL::to('bao-gia/'.$data->path)}}">
                                    {{ Html::image($data->image_cover,'',array('class'=>'img-bao-gia')) }}
                                    <h3 class="title-baogia">{{$data->name}}</h3>
                                    <p class="info-baogia">{!! $data->content !!}</p>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>