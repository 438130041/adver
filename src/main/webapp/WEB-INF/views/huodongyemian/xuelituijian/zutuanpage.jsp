<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>面授集训营组团秒杀</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="../resources/admin/css/huodongcss/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="../resources/admin/js/huodongjs/swiper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
</head>
<style>
    .openid{
        display: none;
    }
    .openids{
        display: none;
    }
    .ids{
        display: none;
    }
</style>
<body>
<div class="openid">
    ${openid}
</div>
<div class="openids">
    ${openids}
</div>
<div class="ids">
    ${ids}
</div>

<div class="panel-heading">
    <div>
        <img src="../resources/admin/login/huodongimg/b.jpg" style="width: 100%">
    </div>
</div>
<div class="panel-body">

    <div class="col-xs-12" style="text-align:center;">
        <input id="btnres"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" onclick="linked()" value="立即秒杀" >
    </div>

</div>
</body>
<script src="js/jquery.min.js"></script>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<script>
    function linked() {
        window.location.href = "zutuanwxlink";
    }
</script>

</html>
