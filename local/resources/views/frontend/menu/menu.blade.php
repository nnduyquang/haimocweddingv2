<div class="col-md-12 menu-desktop hidden-sm hidden-xs">
    <div class="row">
        <div class="col-md-12 header-menu">
            <div class="row">
                <div class="container">
                    <ul class="sub-menu">
                        <li><a href="">Thanh Toán</a></li>
                        <li><a href="">Tiến Độ</a></li>
                        {{--<li><a class="sm-icon-phone" href="">{{$phone->content}}</a></li>--}}
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-12 bottom-menu">
            <div class="container">
                <ul class="main-menu">
                    <li>{{ Html::image('images/logo/logo-300x197.png','',array('class'=>'img-logo-1','style'=>'display:none')) }}</li>
                    <li>{{ Html::image('images/logo/logo.png','',array('class'=>'img-logo-2','style'=>'display:none')) }}</li>
                    <li><a href="{{URL::to('/')}}">Trang Chủ</a></li>
                    {{--<li><a href="">Bảng Giá</a></li>--}}
                    {{--<li><a href="">Chuyển Nhượng</a></li>--}}
                    <li><a href="{{URL::to('can-ho')}}">Loại Căn Hộ</a>
                        {{--<ul>--}}
                        {{--<li><a href="">1 Phòng Ngủ</a></li>--}}
                        {{--<li><a href="">2 Phòng Ngủ</a></li>--}}
                        {{--<li><a href="">3 Phòng Ngủ</a></li>--}}
                        {{--</ul>--}}
                    </li>
                    <li><a href="{{URL::to('thiet-ke')}}">Thiết Kế</a></li>
                    <li><a href="{{URL::to('vi-tri')}}">Vị Trí</a></li>
                    <li><a href="{{URL::to('tien-ich')}}">Tiện Ích</a></li>
                    <li><a href="{{URL::to('tin-tuc')}}">Tin Tức</a></li>
                    <li><a href="">Video</a></li>
                    <li><a href="{{URL::to('lien-he')}}">Liên Hệ</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>