<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/8/14 0014
  Time: 上午 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="../resources/admin/css/huodongcss/bootstrap.min.css">
    <%--    <link rel="stylesheet" href="css/shangcheng.css">--%>
    <link href="../resources/admin/css/huodongcss/master.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="../resources/admin/js/huodongjs/swiper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
</head>
<style>
    .ids{
        display: none;
    }
   .openid{
   		display:none;
    }
    .nickname{
        display: none;
    }
    .headimgurl{
        display: none;
    }
    .xxx{
        padding-left: 25rem;

    }
</style>
<body>
<div class="ids">${ids}</div>
<div class="openid">${openid}</div>
<div class="nickname">${nickname}</div>
<div class="headimgurl">${headimgurl}</div>

<div class="xxx">
    <img src="../resources/admin/login/huodongimg/xx.png" style=" width: 100%" >
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="panel-body">
    <div class="col-xs-12" style="text-align:center;">
        <input id="btnres"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="了解大专详情" onclick="dazan()">
    </div>

</div>
<div class="panel-body">
    <div class="col-xs-12" style="text-align:center;">
        <input id="btnr"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="了解中专详情" onclick="zhong()">
    </div>

</div>
</body>
<script type="text/javascript"></script>
<script>
    function zhong() {//中专详情了解
        var  ids = $(".ids").text().trim();
        var  openid = $(".openid").text();
        var  nickname=$(".nickname").text().trim();
        var  headimgurl=$(".headimgurl").text().trim();
        window.location.href="../xuelituijianren/zuzhozhuang?ids="+ids+"&nickname="+nickname+"&headimgurl="+headimgurl+"&openid="+openid+"";
    }
    
    function dazan() {
    	var  ids = $(".ids").text().trim();
        var  openid = $(".openid").text();
        var  nickname=$(".nickname").text().trim();
        var  headimgurl=$(".headimgurl").text().trim();
        window.location.href="../xuelituijianren/zudazhuang?ids="+ids+"&nickname="+nickname+"&headimgurl="+headimgurl+"&openid="+openid+"";
    }
</script>
</html>
