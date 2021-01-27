<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
  <!--   <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  
    <script type="text/javascript"  src="../resources/admin/js/bootstrap.min.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
<title>个人中心</title>
</head>
<style>
    body{
        background: #f7f7f7;
        margin:0;
        padding:0;
    }
    .container{
        margin: 0;
        padding: 0;
        margin: 0 auto;
        position: relative;
    }
    .head{
        width: 100%;
        height: 190px;
        background:linear-gradient(#ffab52,#eb7b1a);
        background: -moz-linear-gradient(#ffab52,#eb7b1a);
        background: -webkit-linear-gradient(#ffab52,#eb7b1a);
        background: -o-linear-gradient(#ffab52,#eb7b1a);
        overflow: hidden;
    }
    .head-portrait{
        width: 90px;
        height: 90px;
        border: 1px solid #fff;
        border-radius: 50%;
    }
    .head-box{
        width: 90%;
        height: 90px;
        margin: 0 auto;
        margin-top: 40px;
        position: relative;
    }
    .head-portrait , .information {
        display: inline-block;
    }
    .information{
        height: 90px;
        color: #fff;
        padding-left: 10px;
    }
    .head-portrait{
        align-items: center;
        vertical-align: top;
        overflow: hidden;
    }
    .head-portrait>img{
        width: 100%;
        height: 100%;
    }
    .name{
        font-size: 18px;
        margin-top: 20px;
    }
    .personal-data{
        font-size: 13px;
    }
    .set-up{
        width: 25px;
        height: 25px;
        position: absolute;
        top: 20px;
        right: 10px;
    }
    .set-up>img{
        width: 100%;
        height: 100%;
    }
    .rise{
        width: 90%;
        height: 90px;
        background: #fff;
        border-radius: 5px;
        position: absolute;
        top: 150px;
        left: 5%;
    }
    ul li{
        list-style: none;
    }
    ul{
        margin: 0;
        padding: 0;
    }
    .rise>ul{
        width: 100%;
    }
    ul.riseli li:first-child{margin-left: 5%;}
    .rise-portrait{
        width: 40px;
        height: 43px;
        margin: 0 auto;
        margin-top: 10px;
    }
    .rise-portrait>img{
        width: 100%;
        height: 100%;
    }
    .rise>ul>li{
        display: inline-block;
        width: 29%;
        text-align: center;
    }
    .rise span{
        display: block;
        font-weight: 600;
        padding-top: 5px;
    }
    .classification{
        margin-top: 70px;
        margin-bottom: 60px;
    }
    .classification-1,.classification-2{
        width: 100%;
        background: #fff;
        margin-top: 10px;
        border: 1px solid rgb(233, 233, 233);
        border-left:none;border-right:none;
    }
    .classification-1>ul>li,.classification-2>ul>li{
        width: 100%;
        height: 60px;
        font-size: 16px;
        font-weight: 550;
        line-height: 60px;
        border-top: 1px solid rgb(233, 233, 233);
        position: relative;
    }
    ul.firstli li:first-child{border-top: none;}
    .array{
        padding-left: 55px;
    }
    .arrays{
        width: 25px;
        height: 25px;
        margin-left: 20px;
        position: absolute;
        top: 50%;
        transform:translatey(-50%);
    }
    .arrays>img{
        width: 100%;
        height: 100%;
        display:block;
    }
    .array::after{
        content: '';
        width: 15px;
        height: 15px;
        background: url(../resources/admin/login/img/xiangyou.png) no-repeat center;
        background-size: 100% 100%;
        position: absolute;
        top: 50%;
        right: 25px;
        transform: translateY(-50%);
    }
   .openid{
   		display:none;
    }
   .nickname{
   	 	display:none;
   }
   .headimgurl{
   		display:none;
    }
   .days{
   		display:none;
    }
   .integral{
   		display:none;
    }
   .lv1state{
   		display:none;
    }
   .lv2state{
   		display:none;
    }
   .lv3state{
   		display:none;
   }
</style>
<body>
<div class="openid">${openid}</div>
<div class="nickname">${nickname}</div>
<div class="headimgurl">${headimgurl}</div>
<div class="days">${days}</div>
<div class="integral">${integral}</div>
<div class="lv1state">${lv1state}</div>
<div class="lv2state">${lv2state}</div>
<div class="lv3state">${lv3state}</div>
	<div class="container">
        <div class="head">
            <div class="head-box">
                <div class="head-portrait">
                    <img src="https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/95eef01f3a292df56cfa9214bc315c6034a873f1.jpg" alt=""><!-- 用户头像 -->
                </div>
                <div class="information">
                    <div class="name">姓名</div>
                    <div class="personal-data"  onclick="gerenzhiliao()">我的个人资料&nbsp;></div>
                </div>
                <div class="set-up"  onclick="shezhi()">
                        <img src="../resources/admin/login/img/shezhi.png" alt="">
                </div>
            </div>
        </div>
        <div class="rise">
            <ul class="riseli">
                <li >
                    <div class="rise-portrait">
                        <img src="../resources/admin/login/img/wodkecheng.png" alt="">
                    </div>
                    <span>我的课程</span>
                </li>
                <li>
                    <div class="rise-portrait">
                        <img src="../resources/admin/login/img/zhibo.png" alt="">
                    </div>
                    <span>我的课程</span>
                </li>
                <li>
                    <div class="rise-portrait">
                        <img src="../resources/admin/login/img/banjixinxi.png" alt="">
                    </div>
                    <span>我的班级</span>
                </li>
            </ul>
        </div>
        <div class="classification">
            <div class="classification-1">
                <ul class="firstli">
                    <li>
                        <div class="array">学习报告</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/baogao.png" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="array">观看历史</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/lishi.png" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="array">我的收藏</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/shocang.png" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="array">在线客服</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/wodkefu.png"alt="">
                        </div>
                    </li>
                    <li>
                        <div class="array">帮助中心</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/bangzhuzhoxin.png" alt="">
                        </div>
                    </li>
                </ul>
            </div>
            <div class="classification-2">
                <ul class="firstli">
                    <li>
                        <div class="array">我的订单</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/dindan.png" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="array">我的钱包</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/qianbao.png" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="array">我的物流</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/wul.png" alt="">
                        </div>
                    </li>
                    <li>
                        <div class="array">我的优惠券</div>
                        <div class="arrays">
                            <img src="../resources/admin/login/img/youhuiquan.png" alt="">
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>

<script type="text/javascript">
		
		
		//个人信息
		function  gerenzhiliao(){
			var openid = $(".openid").text();
			window.location.href="../tiaozhuankonzhi/gerenxingxi?openid="+openid+"";
		}
	  
	   //设置
	   function  shezhi(){
		   var openid = $(".openid").text();
		   window.location.href="../tiaozhuankonzhi/shezhizhuyemian?openid="+openid+"";
	   }
		
	
</script>
</body>
</html>