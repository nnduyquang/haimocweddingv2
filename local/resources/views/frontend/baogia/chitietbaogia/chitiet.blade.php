<div id="chi-tiet-bao-gia" class="col-md-12">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                {{ Html::image($quotation->image_cover,'',array('class'=>'img-top')) }}
            </div>
        </div>
        <div class="container">
            <div class="row">
                <h3 class="title-chitiet-baogia">Bảng Giá Dịch Vụ {{$quotation->name}}</h3>
                <a class="fancybox" data-fancybox="gallery"
                   href="{{url('/').'/'.$quotation->image}}">
                    {{ Html::image($quotation->image,'',array('class'=>'img-chi-tiet-bao-gia')) }}</a>
            </div>
        </div>
    </div>
</div>