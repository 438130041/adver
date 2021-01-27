<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>每日一练</title>
    <style type="text/css">
		 #bg {
             width: 325px;
             height: 300px; 
             margin: 0 auto;
             background: url(../resources/admin/login/img/turntable-bg.png) no-repeat;
             position: relative;
         }
 
         img[src^="pointer"] {
         	 width: 200px;
             height: 200px;
             position: absolute;
             z-index: 10;
             top: 155px;
             left: 247px;
         }
 
         img[src^="turntable"] {
             position: absolute;
             z-index: 5;
             top: 60px;
             left: 116px;
             transition: all 4s;
         }
         /* 旋转指针 */
		#pointer{
			 width: 87px;
             height: 114px; 
             position: absolute;
             z-index: 10;
             top: 80px;
             left: 128px;
		 }
		 /* 物品 */
		#turntable{
			 idth: 225px;
             height: 225px; 
			 position: absolute;
             z-index: 5;
             top: 30px;
             left: 58px;
             transition: all 4s;
		 }
		#Luckydraw{
			 position: absolute;
			 top: 20%;
			 left:6%;
		  }
    </style>
</head>
<body>
<!-- 这里是HTML结构部分 --> 
<div id="Luckydraw">
		<div id="bg"><img id="pointer"  src="../resources/admin/login/img/pointer.png" alt="pointer"><img  id="turntable"  src="../resources/admin/login/img/turntable.png" alt="turntable"></div>  
</div>


<script type="text/javascript">
		 var oPointer = document.getElementsByTagName("img")[0];//这个是获取dom内所有名为img的标签，[0]表示数组中的第一个(指针)
         var oTurntable = document.getElementsByTagName("img")[1];//html第二张图，（物品旋转盘）
         var cat = 51.4; //总共7个扇形区域，每个区域约51.4度
         var num = 0; //转圈结束后停留的度数
         var offOn = true; //是否正在抽奖
         oPointer.onclick = function (){//给与指针点击事件
             if (offOn) {//判断为真
                 oTurntable.style.transform = "rotate(0deg)"; //将物品旋转盘的img的style样式设置为rotate(0deg)(旋转效果,从0开始)
                 offOn = !offOn;//offOn等于false，将是否在抽奖改为没有在抽奖（这里改后在整个js没有运行完前，在点击不起效果）
                 ratating();//执行ratating()方法，此方法用于旋转定时
             }
         }
         //旋转
         function ratating() {
             var timer = null;//给与一个空值变量
             var rdm = 0; //随机度数
             clearInterval(timer);//clearInterval方法能够取消掉setInterval方法设置的定时器（进入方法后先清除定）
             timer = setInterval(function () {//设置一个定时器
                 	//如果旋转的随机度数除以360想度向下取整的度数小于3， 那么随机旋转度数
            	 if (Math.floor(rdm / 360) < 3) {
            		 		rdm = Math.floor(Math.random() * 14400 );////Math.floor方法用于对数值向下取整//Math.random()函数返回一个浮点型，伪随机数，数值在0和1之间
            		 		rdms1 = 1080 + cat * 1;
            		 		rdms2 = 1080 + cat * 2;
            		 		rdms3 = 1080 + cat * 3;
            		 		rdms4 = 1080 + cat * 4;
            		 		rdms5 = 1080 + cat * 5;
            		 		rdms6 = 1080 + cat * 6;
            		 		rdms7 = 1080 + cat * 7;
            		 		var  rdmssz = [rdms1,rdms2,rdms3,rdms4,rdms5,rdms6,rdms7];
            		 		console.log("随机数"+rdm);
            	 					if(rdm < 1300  ||  rdm == 0){
            	 						rdm = 1300;
            	 						console.log("小于1300改后的随机数"+rdm);
            	 					}
            	   			} 
						else {
                     oTurntable.style.transform = "rotate(" + rdm + "deg)";
                     clearInterval(timer);
                     setTimeout(function (){//定时弹出框，4000后弹出
                         offOn = !offOn;
                         num = rdm % 360;
                         if (num <= cat * 1) { alert("4999元"); console.log("rdm=" + rdm + "，num=" + num + "，" + "4999元，cat="+cat+""); }
                         else if (num <= cat * 2) { alert("50元"); console.log("rdm=" + rdm + "，num=" + num + "，" + "50元，cat="+cat+""); }
                        else if (num <= cat * 3) { alert("10元"); console.log("rdm=" + rdm + "，num=" + num + "，" + "10元，cat="+cat+""); }
                        else if (num <= cat * 4) { alert("5元"); console.log("rdm=" + rdm + "，num=" + num + "，" + "5元，cat="+cat+""); }
                         else if (num <= cat * 5) { alert("免息服务"); console.log("rdm=" + rdm + "，num=" + num + "，" + "免息服务，cat="+cat+""); }
                         else if (num <= cat * 6) { alert("提高白条额度"); console.log("rdm=" + rdm + "，num=" + num + "，" + "提交白金，cat="+cat+""); }
                         else if (num <= cat * 7) { alert("未中奖"); console.log("rdm=" + rdm + "，num=" + num + "，" + "未中奖，cat="+cat+""); }
                     }, 4000);
                 }
             }, 30);
         }
	 
</script>
</body>
</html>