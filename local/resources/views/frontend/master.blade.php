<!DOCTYPE Html>
<Html lang="en-US" class="lang-en_US" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<meta http-equiv="content-type" content="text/Html;charset=UTF-8"/><!-- /Added by HTTrack -->
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Hải Mộc Wedding</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link rel="icon"
          type="image/png"
          href="{{ asset('favicon.ico') }}"/>
    {{ Html::style('css/core.common.css') }}
    {{ Html::style('css/core.frontend.css') }}
    {{ Html::style('css/frontend.css') }}
    @yield('styles')
</head>
<body>
<header id="header">

</header>
<div id="blurrMe">
    @include('frontend.menu.m-menu')
    @include('frontend.menu.menu')
    @yield('slider')


    <div id="wrap-container" class="col-md-12">
        <div class="row">
            {{--<div class="container main-wrap">--}}
                    @yield('container')
            {{--</div>--}}
            @include('frontend.footer.index')
        </div>
    </div>
</div>
@include('frontend.menu.m-sidebar')

{{ Html::script('js/core.common.js') }}
{{ Html::script('js/core.frontend.js') }}
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
@yield('scripts')
<script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
{{ Html::script('js/scripts.js') }}
<div class="callback hidden-lg hidden-md">
    <div class="phone_animation">
        <div class="phone_animation_circle"></div>
        <div class="phone_animation_circle_fill"></div>
        <a href="tel:0909633252" class="phone_animation_circle_fill_img"><i class="fa fa-phone" aria-hidden="true"></i></a>
    </div>
</div>

</body>

</Html>