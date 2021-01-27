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
<title>实名认证</title>
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
                        <div class="array"  onclick="zhanghaoanquan()">账号安全中心</div>
                    </li>
                    <li>
                        <div class="array">收货地址</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
		
<script type="text/javascript">
	
	
	//账号安全中心
	function  zhanghaoanquan(){
		var openid = $(".openid").text();
		window.location.href="../tiaozhuankonzhi/zhanghaozhoxin?openid="+openid+"";
	}
	
	
	
	/*  $(function(){
		var	openid = $(".openid").text();  		
		//查询出用户个人信息
		 $.ajax({
		    	url:'../gerenxinxi/chaxuengerenxinxi',
		    	dataType:'json',
		    	type:'post',
		    	data:{openid:openid},
		    	success:function(data){
		    		if(data.type == 'success'){ */
		    			//用户个人信息
		    			/* var  yonhugerenxinxis = data.yonhugerenxinxi;
		    			var  datas  =  JSON.parse(yonhugerenxinxis); *///转化为对象
		    			/* alert("查询出来的数据："+yonhugerenxinxis);
		    			alert("对象："+datas);
		    			alert("数据："+datas[0].openid); */
		    			/* $("#toxianimg").prop("src",datas[0].headimgurl);
		    			$(".lishiimg").text(datas[0].nickname); */
		    			/* $(".shocanimg").text(datas[0].jingyaoshi_account);
		    		/* 	$(".mimaimg").text(datas[0].); */ 
		    		/* }else{
						alery("页面出错请联系管理员！");
					}
		    		
		    	}
		    	
		    });
		
	})   */


</script>
		
		
</body>
</html>