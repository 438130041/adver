<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>每日一练</title>
    <style type="text/css">
    	/*  弹出框cs效果  */
    	#Idiv{
    	     height:350px;
    	     width:300px;
    	     background-color:#FFFFFF; 
    	     border-radius: 15px;
    	     background: url(../resources/admin/login/img/jifenguize.png) no-repeat center ;
    	    background-size: 100% 100%;
    	 }
    	#mou_head{
    	     text-alig:center;
    	     padding-left: 30%;
    	  }
    	#buttont{
    		margin-left:35%;
    		margin-top:90%;
    		width:30%;
    	  }
    	#text{
    		 position: relative;
 			 left: 7%;
  			 top:250px;
  			 font-size:17px;
  			 text-alig:center;
  			 color:#fff;
    	  }
    	#lv1states{
    		font-size:25px;
    		color:#FFFF33;
    	  }
    	 /*  弹出框cs效果结束 */ 
    	 /* 关闭弹出层图片 */
        #img{
        	 width:50px;
        	 height:50px;
        	 /* position: relative;
        	 left: 130px;
        	 top:70%; */
         }
        #imgdiv{
        	 position: relative;
        	 top:105%;
        	 left:40%;
        }
    </style>
</head>
<body>
  <div  id="layer"  onclick="layer()">
 		领取礼物
  </div>


<!--弹出层开始-->
<div id="Idiv" style="display:none; position:absolute; z-index:1000;">
     <div id="mou_head" style="width="100px; height=10px;z-index:1001; position:absolute;"></div>
      
     <!-- <span  id="text">您已连续打卡3天，恭喜获得 <span id="lv1states">5</span>积分</span> -->
    <!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
	<!--  <button id="buttont"  type="button" class="btn btn-success"  onclick="closeDiv();">我知道了</button> -->
	 <div  id="imgdiv">
	 	<img  id="img"  alt="" src="../resources/admin/login/img/guanbi.png"  onclick="closeDiv()">
	 </div>
</div>
<!--结束-->
<!-- X按钮 -->
     

<script type="text/javascript">
   function  layer(){
		showDiv();
		}
		
		
	function showDiv(){
		var Idiv     = document.getElementById("Idiv");
		var mou_head = document.getElementById('mou_head');
		Idiv.style.display = "block";
		//以下部分要将弹出层居中显示
		Idiv.style.left=(document.documentElement.clientWidth-Idiv.clientWidth)/2+document.documentElement.scrollLeft+"px";
		Idiv.style.top =(document.documentElement.clientHeight-Idiv.clientHeight)/2+document.documentElement.scrollTop-50+"px";
 
		//以下部分使整个页面至灰不可点击
		var procbg = document.createElement("div"); //首先创建一个div
		procbg.setAttribute("id","mybg"); //定义该div的id
		procbg.style.background = "#000000";
		procbg.style.width = "100%";
		procbg.style.height = "100%";
		procbg.style.position = "fixed";
		procbg.style.top = "0";
		procbg.style.left = "0";
		procbg.style.zIndex = "500";
		procbg.style.opacity = "0.6";
		procbg.style.filter = "Alpha(opacity=70)";
		//背景层加入页面
		document.body.appendChild(procbg);
		document.body.style.overflow = "hidden"; //取消滚动条
 
		//以下部分实现弹出层的拖拽效果
		var posX;
		var posY;
	mou_head.onmousedown=function(e){
		if(!e) e = window.event; //IE
		posX = e.clientX - parseInt(Idiv.style.left);
		posY = e.clientY - parseInt(Idiv.style.top);
		document.onmousemove = mousemove;
	}
		document.onmouseup = function()
	{
		document.onmousemove = null;
	}
	function mousemove(ev){
	if(ev==null) ev = window.event;//IE
		Idiv.style.left = (ev.clientX - posX) + "px";
		Idiv.style.top = (ev.clientY - posY) + "px";
	}
	}
	function closeDiv() {//关闭弹出层
		var Idiv=document.getElementById("Idiv");
		Idiv.style.display="none";
		document.body.style.overflow = "auto"; //恢复页面滚动条
		var body = document.getElementsByTagName("body");
		var mybg = document.getElementById("mybg");
		body[0].removeChild(mybg);
	}
    
</script>
</body>
</html>