<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
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
        <img src="../resources/admin/login/huodongimg/ui.jpg" style="width: 100%">
    </div>
</div>

<div class="panel-body">
    <div class="col-xs-12" style="text-align:center;">
        <input id="btnr"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="我要免费课程" onclick="Lssor()">
    </div>

</div>
</body>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<script>

    function Lssor() {
        window.location.href="wxlinkxueli";
    }
</script>

</html>
