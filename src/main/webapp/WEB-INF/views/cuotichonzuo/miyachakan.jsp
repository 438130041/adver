<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="dakaurl">
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
    <title>送你执考冲刺课程资料</title>
    <style>
       *{
          margin: 0;
          padding: 0;
    	  }
   	#imgs{
   		width:100%;
   		height:100%;
    }
    .beijin{
    	/* background-image:url("../resources/admin/login/daan/daan.png"); */
   	 	/* width:100%;
   		height:100%;
   		position: fixed;
		background-repeat: no-repeat;
		background-position: 0px 0px;
		background-size: 100% 100%;
		font-size: 30upx; */
    		
     }
    .kemu{
    	display:none;
    }
     #imgs{
    	width:100%;
    	height:100%;
     } 
   </style>
</head>		<!-- 将一张图片作为页面背景，铺满整个页面 -->
<body>
<%-- <div class="kemu">${kemu}</div>
<div class="beijin">
 		  <a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}${pdf}"   class=""   id="imgs">药一</a> 
</div>
	
	<script type="text/javascript">
	 	
	 $(function(){
		   var  kemu = $(".kemu").text();
		  
		   if(kemu == "YXY"){//药学一
			   var  img = "../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/miyajuan/YXY.pdf";
			   $("#imgs").attr("href",img);
		   }
		   if(kemu == "YXE"){//药学二
			   var img = "../resources/admin/login/miyajuan/miyaYXE.png";
			   $("#imgs").attr("src",img);
		   }
		   if(kemu == "YXZH"){
			   var img = "../resources/admin/login/miyajuan/miyaYXZH.jpg";
			   $("#imgs").attr("src",img);
		   }
		   
		   if(kemu == "ZYY"){//中药一
			   var img = "../resources/admin/login/miyajuan/miyaZYY.jpg";
			   $("#imgs").attr("src",img);
		   }
		   if(kemu == "ZYE"){//中药二
			   var img = "../resources/admin/login/miyajuan/miyaZYE.png";
			   $("#imgs").attr("src",img);
		   }
		   if(kemu == "ZYZH"){//中药综合
			   var img = "../resources/admin/login/miyajuan/miyaZYZH.png";
			   $("#imgs").attr("src",img);
		   }
		   if(kemu == "YS"){//法规
			   var img = "../resources/admin/login/miyajuan/miyaYS.png";
			   $("#imgs").attr("src",img);
		   }
		   
	   })  --%>
		
	</script>
</body>
</html>