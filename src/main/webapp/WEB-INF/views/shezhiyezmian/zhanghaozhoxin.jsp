<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
  <!--   <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  
    <script type="text/javascript"  src="../resources/admin/js/bootstrap.min.js"></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
<title>账号安全中心</title>
</head>
	<style>
	    body{
        margin: 0;
        padding: 0;
        background: #f7f7f7;
    }
    .container{
        margin: 0;
        padding: 0;
        margin: 0 auto;
        position: relative;
    }

    ul li{
        list-style: none;
        margin: 0;
        padding: 0;
    }
    ul{
        margin: 0;
        padding: 0;
    }

    .classification-1,.classification-2{
        width: 100%;
        background: #fff;
        border-left:none;border-right:none;
    }
    .classification-1>ul>li,.classification-2>ul>li{
        width: 100%;
        height: 50px;
        font-size: 16px;
        font-weight: 550;
        line-height: 50px;
        border-top: 1px solid rgb(233, 233, 233);
        position: relative;
    }
    .array{
        padding-left: 15px;
    }
    .arrays{
        width: 25px;
        height: 25px;
        margin-left: 20px;
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
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
    
    .zhanghao{
		float:left;	
		padding-left:41%;
	 }
    
    .textzhanghao{
		padding-left:17px;
		float:left;
	 }
    
     .mima{
		float:left;	
		padding-left:46%;
	 }
    
    .textmima{
		padding-left:17px;
		float:left;
	 }
    
     
     .bangdingweixin{
		float:left;	
		padding-left:47%;
	 }
    
    .textweixin{
		padding-left:17px;
		float:left;
	 }	
    
     .openid{
     		display:none;
      }
     
	</style>
	
<body>
	<div class="openid">${openid}</div>
     <div class="container">
        <div class="classification">
            <div class="classification-1">
                <ul class="firstli">
                    <li>
                        <div class="textzhanghao">晶药师账号</div>
                        <div class="zhanghao">
                        		138986640307
                        </div>
                    </li>
                    <li>
                        <div class="textmima">晶药师密码</div>
                        <div class="mima">
                        		640307
                        </div>
                    </li>
                    <li>
                        <div class="textweixin">微信绑定</div>
                        <div class="bangdingweixin">
                        	唐宋元明清
                        </div>
                    </li>
                    <li>
                        <div class="array"  onclick="shimingrenzheng()">实名认证</div>
                    </li>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                </ul>
            </div>
        </div>
    </div>
		
<script type="text/javascript">
		//进入实名认证页面
		function  shimingrenzheng(){
			 var  openid = $(".openid").text();
			 window.location.href="../tiaozhuankonzhi/shimingrenzheng?openid="+openid+"";
			
		}
		
		
		
</script>
		
		
</body>
</html>