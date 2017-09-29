<!DOCTYPE html>
<?php echo
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header('Content-Type: text/html');?>

<html >
<meta name="csrf-token" content="{{ csrf_token() }}">
<head>
    <meta charset="UTF-8">
    <title>SaiGon Intela Admin</title>


    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>

    <link rel="stylesheet" href="css/login.css">

</head>

<body id="login">
<div class="login-form">
    <h1>SaiGon Intela</h1>
    <div class="form-group ">
        <input type="text" class="form-control" placeholder="Email " id="email">
        <i class="fa fa-user"></i>
    </div>
    <div class="form-group log-status">
        <input type="password" class="form-control" placeholder="Password" id="password">
        <i class="fa fa-lock"></i>
    </div>
    <span class="alert">Invalid Credentials</span>
    {{--<a class="link" href="#">Lost your password?</a>--}}
    <button type="button" class="log-btn" >Đăng Nhập</button>


</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
{{ Html::script('js/ulti.js',array('async' => 'async') ) }}
<script src="js/login.js"></script>

</body>
</html>
