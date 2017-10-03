var plugins = {
    slider1: $('#slider1'),
    s3ImageSelected: $('.s3-wrap-location ul li'),
    gridAlbum: $('.grid-haha'),
    fancybox:$('.fancybox'),
};
$(document).ready(function () {
    function runSlider1() {
        plugins.slider1.nivoSlider({
            effect: 'fade',
            animSpeed: 500,
            pauseTime: 3000,
            pauseOnHover: true,
            controlNav: false,
        });
    }

    function s3ChangeImage() {
        plugins.s3ImageSelected.mouseover(function () {
            var selectedMapName;
            selectedMapName = $(this).attr('data-map');
            $('.img-location').removeClass('img-active');
            $('[data-map-name=' + selectedMapName + ']').addClass('img-active');
        });
    }
    function runFancybox(){
        plugins.fancybox.fancybox();
    }

    function runGridAlbum() {
        var $grid = plugins.gridAlbum.masonry({
            itemSelector: '.grid-item',
            percentPosition: true,
            columnWidth: '.grid-sizer'
        });
        $grid.imagesLoaded().progress(function () {
            $grid.masonry();
        });
        // $(".fancybox").fancybox();
        var isOpen = true;
        $('.choose-dd').click(function () {
            if (isOpen) {
                $('ul.ul-dd').addClass('open-dd');
                $('.fa-plus').css('display','none');
                $('.fa-minus').css('display','block');
                isOpen = false;
            } else {
                $('ul.ul-dd').removeClass('open-dd');
                $('.fa-plus').css('display','block');
                $('.fa-minus').css('display','none');
                isOpen = true;
            }
        });


    }
    if(plugins.fancybox.length){
        runFancybox();
    }

    if (plugins.s3ImageSelected.length) {
        s3ChangeImage();
    }

    if (plugins.slider1.length) {
        runSlider1();
    }
    if (plugins.gridAlbum.length) {
        runGridAlbum();
    }
    $(window).on('scroll', function () {
        if ($(this).scrollTop() > 68) {
            $('.menu-top-info').addClass('fixed-top');
            $('.menu-wrap').addClass('navbar-fixed-top');
            $('.menu-wrap').addClass('wrap-fixed-top');
            $('.logo').addClass('logo-fixed');
            $('.menu-right-contact').addClass('menu-right-contact-fixed');
        } else {
            $('.menu-top-info').removeClass('fixed-top');
            $('.menu-wrap').removeClass('navbar-fixed-top');
            $('.menu-wrap').removeClass('wrap-fixed-top');
            $('.logo').removeClass('logo-fixed');
            $('.menu-right-contact').removeClass('menu-right-contact-fixed');
        }
    });
//     var $grid = $('.grid-haha').masonry({
//         itemSelector: '.grid-item',
//         percentPosition: true,
//         columnWidth: '.grid-sizer'
//     });
// // layout Masonry after each image loads
//     $grid.imagesLoaded().progress( function() {
//         $grid.masonry();
//     });
//     $(".fancybox").fancybox();


});