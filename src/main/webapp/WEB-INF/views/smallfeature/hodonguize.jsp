<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
    <script src="../resources/admin/layui-2.5.4/layui.js"></script>
    <link rel="stylesheet" href="../resources/admin/layui-2.5.4/css/layui.css">
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
    <title>活动规则</title>
    <script>
    
    	
    	
    </script>
    <style>
	#imgs{
		width:100%;
		height:100%;
	 }
	 .huodonguizediv{
	 		padding-bottom:25px;
	   }
	 .header{
        margin: 0;
        padding: 0;
        height: 40px;
        background-color:#f7f7f8;
    }
    .heade>a{
             font-size: 16px;
             line-height: 40px;
             margin-left: 30px;
             color: #000
    }
    a:active, a:hover{
             text-decoration: none;
             outline: none;
    }
    .heade>a::before{
        content: "";
        width: 20px;
        height: 20px;
        position: absolute;
        top: 10px;
        left: 10px;
        background: url(../resources/admin/login/img/right.png) no-repeat center ;
        background-size:100% 100%;
        -webkit-transform: rotate(180deg);
        -moz-transform: rotate(180deg);
        -o-transform: rotate(180deg);
        -ms-transform: rotate(180deg);
        transform: rotate(180deg);
    }
    .openid{
    	
    	display:none;
     }
     
    </style>
</head>
<body>
	<div  class="openid">${openid}</div>
  <div class="col-md-12 header">
        <div class="heade"  onclick="fanhui()">
          <a href="javascript:;">返回</a>
       </div>
   </div>
  <div  class="huodonguizediv">
  		<div  class="huodonguize">
			<img alt="" src="../resources/admin/login/img/hodongguize.png"   id="imgs">	
	    </div>
  
  </div>
<script type="text/javascript">
		function  fanhui(){
			var  openid  = $(".openid").text();
			window.location.href="../paihanban/paihanban?openid="+openid+"";
		}
	
	
</script>
</body>
</html>