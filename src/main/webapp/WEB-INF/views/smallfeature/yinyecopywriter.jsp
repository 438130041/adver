<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="haibao">
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
    <title>专属海报</title>
    <style>
		 *{
          margin: 0;
          padding: 0;
      }
   /* #imgs{
   		width:100px;
   		height:100px;
   		position:relative;
        left:37%; 
  	    top:-27%; 
    }  */
   .openid{
   		display:none;
   }
   .nickname{
   		display:none;
   }
   .codes{
   		display:none;
    }
   #haobaoimg{
   		width:100%;
    }
   .haobao{
    	width:100%;
   		padding: 0;  	
     }
   #imgs{
   		width:100px;
   		height:100px;
   		position:relative;
        left:15%;
   		margin-top:-27%;
     }
    .haobao{
    	 padding-top:18%;
    	 
       }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="nickname">${nickname}</div>
	<div  class="codes">${codes}</div>
	<!-- 海报图片 -->
	<div  class="haobaotupian">
	    <div class="haobao">
	    	<img alt="" src="../resources/admin/login/img/yinyeHAIBAO.jpg"   id="haobaoimg">
	    	  <!-- 二维码图片 -->
	    	<!-- <img alt="" src="../resources/admin/login/imgs/64071984.jpg"  id="imgs">   -->
	    </div>
	</div>

	
<script type="text/javascript">
		
		
		//ajax查询出图片地址
			$(function(){
				var codes = $(".codes").text();
				//根据不同部门显示不同海报
				
				//setTimeout方法延时执行方法
				 setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
					  $.ajax({
							url:'../copywriter/imgs',
							dataType:'json',
							type:'post',
							data:{codes:codes}, 
							success:function(data){
								if(data.type == 'success'){
									var  img = "";
									var  imgs = data.imgsx;
									/*  alert("回调回来的图片路径："+imgs); */
									var  lujin = "../resources/admin/";
									img += "<img  src=\"" + lujin + imgs + "\" id=\"imgs\">";
									$(".haobao").append(img);
								}else{
									alert("页面出错请联系管理员！");
								}
							}
						});  
					 
					},2500);
			})
			
			
			
	function copyText(shop) {
   		 const range = document.createRange();
    	 range.selectNode(document.getElementById(shop));

    	 const selection = window.getSelection();
    	 if(selection.rangeCount > 0) selection.removeAllRanges();
    	 selection.addRange(range);
    	 document.execCommand('copy');
    	 alert("复制成功！快去发朋友圈把！");
	}
		
		
		
</script>
</body>
</html>