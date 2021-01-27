<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script><!-- 微信分享 -->
    <title>屏幕遮幕</title>
</head>
<style type="text/css">
    *
    {
        margin:0px;
        padding:0px;
    }
    .zhezhao
    {
        width:100%;
        height:100%;
        background-color:#000;
        filter:alpha(opacity=50);
        -moz-opacity:0.5;
        opacity:0.8;
        position:absolute;
        left:0px;
        top:0px;
        display:none;
        z-index:1000;
    }
    .login
    {
        width:280px;
        height:100px;
        position:absolute;
        /*top:200px;*/
        left:50%;
        /*background-color:white;*/
        margin-left:-140px;
        display:none;
        z-index:1500;
    }
    .content
    {
        margin-top:50px;
        color:red;
        line-height:200px;
        height:200px;
        text-align:center;
    }
    .jiantous{
        padding-left: 15rem;
        margin-top: -3rem;
    }
    .covers{
        color: lightgoldenrodyellow;

    }
    .zhid{
        color: greenyellow;
        padding-left: 5rem;
        font-size: 24px;
    }
</style>



<body>
	
	<div class="zhezhao" id="zhezhao"></div>
	<div class="login" id="login">
    <div class="jiantous">
    <img src="images/jiantou.png" alt="" style="width: 200%">
    </div>
    <div class="covers">
     	   请点击右上角发送给朋友 或分享到 <br>朋友圈邀请好友拼团
    </div>
    <br>
    <div id="btclose" class="zhid">我知道啦</div> </div>
	
</body>
<script type="text/javascript">
	
		$(function () {
		    var zhezhao=document.getElementById("zhezhao");
		    var login=document.getElementById("login");
		    // var bt=document.getElementById("bt");
		    var btclose=document.getElementById("btclose");
		
		    // bt.onclick=function()
		    // {
		        zhezhao.style.display="block";
		        login.style.display="block";
		 //   }
		    btclose.onclick=function()
		    {
		        zhezhao.style.display="none";
		        login.style.display="none";
		    }
		})
	
</script>


</html>