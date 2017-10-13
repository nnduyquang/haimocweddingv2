@extends('frontend.master')
@section('styles')

@stop
@section('scripts')

@stop
@section('slider')

@stop
@section('container')
    <div id="lien-he" class="col-md-12">
        <div class="row">
            <h3 class="title">Liên Hệ</h3>
            <div id="map" class="col-md-12">
                <div class="row">
                    <iframe
                            width="100%"
                            height="450"
                            frameborder="0" style="border:0"
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.8742748674067!2d108.19908001539352!3d16.07201268887932!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421851f1048d17%3A0x5d06f2ed3d4b0764!2zMzggVMO0biBUaOG6pXQgxJDhuqFtLCBUaGFuaCBLaMOqLCDEkMOgIE7hurVuZywgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1507691688401"
                            allowfullscreen>
                    </iframe>
                </div>
            </div>
            <div id="contact" class="col-md-6">
                <div class="row">
                    <form>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="email">Tên Cô Dâu Hoặc Chú Rể:</label>
                                <input class="form-control lh-input" id="">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="pwd">Email:</label>
                                <input class="form-control lh-input" id="">
                            </div>
                        </div>
                        <div class="col-md-5 ">
                            <div class="form-group">
                                <label for="pwd">Chọn Ngày Dự Kiến Chụp</label>
                                <div class="input-group date">
                                    <input type="text" class="form-control datepicker lh-input">
                                    <div class="lh-datepick">
                                        <i class="fa fa-calendar" aria-hidden="true"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="pwd">Yêu Cầu Báo Giá:</label>
                                <textarea class="form-control lh-input" rows="5" id="comment"></textarea>
                            </div>
                        </div>
                        <div class="col-md-12" style="text-align: center;">
                            <button type="submit"  class="btn btn-default">Đặt Lịch</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6 lien-he-info">
                <div class="row">
                    <h3 class="name">Hải Mộc Wedding</h3>
                    <p>Địa chỉ: 38 Tôn Thất Đạm, Thanh Khê, Đà Nẵng</p>
                    <p>Hotline: 0919.567.177 - 0902.710.212</p>
                    <p>Email: <a href="mailto:haimocwedding@gmail.com ">haimocwedding@gmail.com </a></p>
                    <p>Website: <a href="http://www.haimocwedding.com">www.haimocwedding.com</a></p>
                    <p>Giờ Mở Cửa: 8h30 - 21h</p>
                </div>
            </div>
        </div>
    </div>
@stop