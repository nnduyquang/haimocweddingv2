let mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel application. By default, we are compiling the Sass
 | file for the application as well as bundling up all the JS files.
 |
 */

mix.styles([
    'bower_components/jquery/dist/jquery.min.js',
    'bower_components/bootstrap/dist/js/bootstrap.min.js',
], '../js/core.common.js')
    .styles([
        'bower_components/bootstrap/dist/css/bootstrap.min.css',
        'bower_components/font-awesome/css/font-awesome.min.css',
    ], '../css/core.common.css')
    .styles([
        'bower_components/nivo-slider/jquery.nivo.slider.pack.js',
        'bower_components/fancybox/dist/jquery.fancybox.min.js',
        'bower_components/imagesloaded/imagesloaded.pkgd.min.js',
        'bower_components/masonry/dist/masonry.pkgd.min.js',
        'bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js'
    ], '../js/core.frontend.js')
    .styles([
        'bower_components/nivo-slider/nivo-slider.css',
        'bower_components/fancybox/dist/jquery.fancybox.min.css',
        'bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css'

    ], '../css/core.frontend.css')
    .sass('resources/assets/sass/frontend.scss', '../../css/frontend.css').options({processCssUrls: false})
    .styles('resources/assets/js/scripts.js', '../js/scripts.js')
    .copy([
        'bower_components/bootstrap/fonts/**',
        'bower_components/font-awesome/fonts/**',
    ], '../fonts')
    .copy([
        'bower_components/nivo-slider/themes',
    ], '../css/themes', false)
    .styles([
        'bower_components/AdminLTE/dist/css/AdminLTE.min.css',
        'bower_components/AdminLTE/dist/css/skins/skin-blue.min.css',
        'bower_components/bootstrap-toggle/css/bootstrap-toggle.min.css',
        'bower_components/fancybox/dist/jquery.fancybox.min.css',
    ], '../css/core.backend.css')
    //JS CORE BACKEND
    .styles([
        'bower_components/AdminLTE/dist/js/adminlte.min.js',
        'bower_components/bootstrap-toggle/js/bootstrap-toggle.min.js',
        'bower_components/fancybox/dist/jquery.fancybox.min.js',
    ], '../js/core.backend.js')
    .styles([
        'resources/assets/js/ulti.js',
        'resources/assets/js/be.news.js',
        'resources/assets/js/be.post.js',
        'resources/assets/js/be.location.js',
        'resources/assets/js/be.album.js',
        'resources/assets/js/be.quotation.js',
        'resources/assets/js/be.config.slider.js',
    ], '../js/backend.js')
    .sass('resources/assets/sass/backend.scss', '../../css/backend.css').options({processCssUrls: false})
    .styles([
        'resources/assets/js/login1.js',
    ], '../js/login.js')
    .styles('resources/assets/js/ulti.js', '../js/ulti.js')

    //LOGIN 1 CSS
    .styles([
        'resources/assets/sass/login1.scss',
    ], '../css/login.css')
// CKEDITOR CHỈ CHẠY ĐOẠN NÀY 1 LẦN
// ===================
// .copy('bower_components/ckeditor/adapters', '../js/ckeditor/adapters',false)
// .copy('bower_components/ckeditor/lang', '../js/ckeditor/lang',false)
// .copy('bower_components/ckeditor/skins', '../js/ckeditor/skins',false)
// .copy([
//     'bower_components/ckeditor/ckeditor.js',
//     'bower_components/ckeditor/config.js',
//     'bower_components/ckeditor/contents.css',
//     'bower_components/ckeditor/styles.js'
// ], '../js/ckeditor',false)
// .copy('bower_components/ckeditor/plugins', '../js/ckeditor/plugins',false)
