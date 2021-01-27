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
    <title>药考冲刺打卡积分赛</title>
    <script>
    	
    	
    </script>
    <style>
		.openid{
		     display:none;
		 }
		.headimgurl{
		 	 display:none;
		  }
		 .nickname{
		 	 display:none;
		  }
	 	#imgs{
	       width:100%;
	       height:100%;
	   } 
	   .buttondivyinye{
	   		 position:relative;
	   		 margin-left:22%;
	   		 margin-top:-110%;
	   		 font-weight:bold;
	    }
	     .buttondivduxue{
	   		 position:relative;
	   		 margin-left:22%;
	   		 margin-top:-275%;
	   		 font-weight:bold;
	    }
	  #canjia{
	        width:200px;
	   		background-color:#FFFFFF; 
	   		font-size:20px;
	   		color:#000000;
	   		font-weight:900;
	     	border:none
	      }
	   .codes{
			display:none;	     
	      }
	    .feizhenshixueyuan{
	     	display:none;
	      }
	   .fenxianzhojian{
	        display:none;
	    }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div class="codes">${codes}</div>
	<div class="fenxianzhojian">${fenxianzhojian}</div>
	<div  class="feizhenshixueyuan">${feizhenshixueyuan}</div><!-- 分享使用 -->
	<div class="huodonjiesao">
		<img alt="" src=""   id="imgs">
		  <div  class="buttondiv">
			<button type="button" class="btn btn-primary btn-lg"   id="canjia">点击查看排名</button>
		  </div>	
	</div>
	
<script type="text/javascript">
		 $(function(){
			var codes = $(".codes").text();
			if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
					|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
					|| codes == "113"
					){
				$(".buttondiv").addClass("buttondivduxue");
				$("#imgs").attr("src","../resources/admin/login/img/dakajieshu.jpg");
			}else {
				$(".buttondiv").addClass("buttondivyinye");
				$("#imgs").attr("src","../resources/admin/login/img/dakajieshu.jpg");
			}
		}) 
		
		
		
		
		$("#canjia").click(function(){
			var  openid  = $(".openid").text();
			var  fenxianzhojian = $(".fenxianzhojian").text();
			var  codes = $(".codes").text();
			/* alert("代码："+codes); */
			window.location.href="../paihanban/paihanban?openid="+openid+"&fenxianzhojian="+fenxianzhojian+"&codes="+codes+"";
		})
	
	
</script>
</body>
</html>