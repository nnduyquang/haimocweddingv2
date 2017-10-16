<div id="chi-tiet-tin-tuc" class="col-md-12">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                {{--{{ Html::image($news->image,'',array('class'=>'img-top')) }}--}}
            </div>
        </div>
        <div class="container">
            <div class="row">
                <h3 class="title-chitiet-tintuc">{{$news->title}}</h3>
                <div class="col-md-12" style="line-height: 2.0; font-style: italic">
                    <div class="row">
                        <div class="container">
                            {!! $news->content !!}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>