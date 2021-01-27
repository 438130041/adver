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
	   .buttondiv{
	   		position:relative;
	   		margin-left:25%;
	   		/* left:25%; */
	   		margin-top:-170%;
	   		
	    }
	   #jinru{
	   		width:180px;
	   		background-color:#FFCC66;
	   		border:none;
	   		font-size:20px;
	     }
	    .openid{
	    	display:none;
	     }
	    .codes{
	    	display:none;
	     }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div class="codes">${codes}</div>
	<div  class="huodonjiesao">
		<img alt="" src="../resources/admin/login/img/jiesao.jpg"   id="imgs">	
	</div>
	<div  class="buttondiv">
		<button type="button" class="btn btn-primary btn-lg"   id="jinru">立即参与</button>
	</div>
	
<script type="text/javascript">
		
		$(function(){
			var  codes  = $(".codes").text();
			if(codes == "11" || codes == "12" || codes == "13"  || codes == "14" || codes == "15" || codes == "16"
				|| codes == "17"  || codes == "18" || codes == "19" || codes == "21" || codes == "22" || codes == "23"
				|| codes == "24" || codes == "25" || codes == "26" || codes == "27" || codes == "28" || codes == "29"
				|| codes == "30" || codes == "31" || codes == "32" || codes == "33" || codes == "34" || codes == "35"
				|| codes == "36" || codes == "37" || codes == "38" || codes == "39" || codes == "40" || codes == "41"
				|| codes == "42" || codes == "50" || codes == "51" || codes == "52" || codes == "53" || codes == "54"
				|| codes == "55" || codes == "56" || codes == "57" || codes == "58" || codes == "59" || codes == "60"
				|| codes == "91" || codes == "92" || codes == "93" || codes == "61" || codes == "62" || codes == "63"
				|| codes == "64" || codes == "65" || codes == "66" || codes == "99"
 			
			){
				$("#imgs").attr("src","../resources/admin/login/img/yinyejiesao.jpg");
			}
			
			
		})
		
		
		
		$("#jinru").click(function(){
			var  openid  = $(".openid").text();
			var  codes  = $(".codes").text();
			if(codes == "11" || codes == "12" || codes == "13"  || codes == "14" || codes == "15" || codes == "16"
				|| codes == "17"  || codes == "18" || codes == "19" || codes == "21" || codes == "22" || codes == "23"
				|| codes == "24" || codes == "25" || codes == "26" || codes == "27" || codes == "28" || codes == "29"
				|| codes == "30" || codes == "31" || codes == "32" || codes == "33" || codes == "34" || codes == "35"
				|| codes == "36" || codes == "37" || codes == "38" || codes == "39" || codes == "40" || codes == "41"
				|| codes == "42" || codes == "50" || codes == "51" || codes == "52" || codes == "53" || codes == "54"
				|| codes == "55" || codes == "56" || codes == "57" || codes == "58" || codes == "59" || codes == "60"
				|| codes == "91" || codes == "92" || codes == "93" || codes == "61" || codes == "62" || codes == "63"
				|| codes == "64" || codes == "65" || codes == "66" || codes == "99"
 			){
				window.location.href="../challenge/challenge?openid="+openid+"&codes="+codes+"";				 
			}else {
				window.location.href="../challenge/challenge?openid="+openid+"&codes="+codes+"";
			}
			
			
		})
	
	
</script>
</body>
</html>