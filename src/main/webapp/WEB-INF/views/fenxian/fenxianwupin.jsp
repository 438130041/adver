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
   	.fenxianimg{
    	width:100%;
    	height:10;
   		padding: 0;  	
     }
    #button{
       		width:180px;
       		height:50px;
       		position:relative;
       		left:27%; 
       	    margin-top:135%;
       	    font-size:25px;
       		background-color:#CC0000;
       		border:0px;
        }
     .fenxian{
     	height:100%;
      }
      
     /*  弹出框cs效果  */
    	#Idiv{
    	     margin-top:-30%;
    	     height:350px;
    	     width:330px;
    	     /* border:1px;
    	     border-color:#F0F8FF; */
    	    /*  background-color:#F0F8FF;   */
    	     border-radius: 15px;
    	    /*  background: url(../resources/admin/login/img/jifenguize.png) no-repeat center ; */
    	     background-size: 100% 100%;
    	     
    	    background: rgba(0, 0, 0, 0.5) none repeat scroll !important;/* rgba(0, 0, 0, 0.2) 前三个确定颜色，最后0.2确定透明度 */
            /*实现FireFox背景透明，文字不透明*/
            background: #ffffff;
            filter: Alpha(opacity=20);
            /*实现IE背景透明,文字不透明*/
            color: #000000;
            font-size: 20px;
            font-weight: bold;
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
    	 #img{
        	 width:50px;
        	 height:50px;
        	 /* position: relative;
        	 left: 130px;
        	 top:70%; */
         }
        #imgdiv{
        	 position: relative;
        	 top:65%;
        	 left:40%;
        }
        .text{
        	color:#FFFFFF;
        	position:absolute;
   			left:1%;
   			top:35%;
        	text-align:center;
        	
         }
        .bianse{
        	color:#FF8C00;
         }
        .divimgs{
        	margin-left:5%;
        }
        .beijin{
 			 background-image: url(../resources/admin/login/img/fenxianwupin.jpg);
        	 
         }
       .shenyucishu{
       		display:none;
         }
    	 /*  弹出框cs效果结束 */ 
    	 /* 关闭弹出层图片 */
    </style>
</head>		<!-- 将一张图片作为页面背景，铺满整个页面 -->
<body>
<div class="beijin">
	 <div class="shenyucishu"></div> 
 	<div  class="fenxian">
		<button type="button" class="btn btn-primary btn-lg"  id="button"  onclick="ninqu()">立即领取</button>
	</div>  
		
	    <!--弹出层开始-->
	<div id="Idiv" style="display:none; position:absolute; z-index:1000;">
    	 <div id="mou_head" style="width="100px; height=10px;z-index:1001; position:absolute;"></div>
         <!-- 图片 -->
         <div  class="divimgs">
         	<img alt="" src="../resources/admin/login/img/jianto.png"  id="imgs">
         </div>
         <div class="text">
    		<p>分享到<p  class="penyouquan">朋友圈和</p><p class="cishu">2</p>个药师群<br><p  class="bianse">即可免费领取绝密押题卷<br>完成分享后将会自动跳转</p></p>
    	 </div> 
    	<!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
	    <div  id="imgdiv">
	 		<img  id="img"  alt="" src="../resources/admin/login/img/guanbi.png"  onclick="closeDiv()">
	 	</div> 
	</div>
</div>
	<script type="text/javascript">
	
	 var shenyucishu = 3;
	
	$(function () {
	        getSgt(window.location.href.split('#')[0]);//截取本页面链接

	});
	
	//设置分享内容
	var  title="考前大爆料！出题官出题的药考机密！限时免费领取";//分享的主文字
	var  desc="临门一脚，考前逆袭。全做对，就能过！";//下面的语句
	var  indexHref = window.location.href;//
	var  shareLink=indexHref.toString();//分享链接
	var  shareImgUrl="http://practice.jingyaoshi.net/resources/admin/login/img/mimi.png";//分享图片
    //--------------------
    function getSgt(currUrl) {
    $.ajax({
        type: "POST",
        url: "http://practice.jingyaoshi.net/wx/sgture?url="+encodeURIComponent(window.location.href.split('#')[0]),//注意此处有坑，
        dataType: "json",
        success: function (response) {//通过response获取到后台返回的数据
            initWeChat(response.sgture,response.appid,response.timestamp,response.noncestr);
            wx.ready(function() {
                console.log(title,desc,shareLink,shareImgUrl);
                //分享到--微信好友接口
                wx.onMenuShareAppMessage({
                    title: title,//分享的文字
                    desc: desc,//分享文本
                    link: shareLink,//分享的链接地址
                    imgUrl: shareImgUrl,//分享的图片显示地址
                    trigger: function (res) {//在点击分享（微信自带的分享功能）后会执行这个函数
                    	/* alert('进入trigger方法'); */
                        console.log(title,desc,shareLink,shareImgUrl);
                        // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回
                        // alert('用户点击发送给朋友');
                    },
                    success: function (res) {//在点击确认进入发送后会执行这个函数
                    	shenyucishu --;//次数减一
                    	$(".cishu").text(shenyucishu);//更改分享次数
                    	/* $(".penyouquan").hide; *///隐藏朋友圈提示
                        if(shenyucishu == 0){
                        	//跳转
                        	window.location.href="";
                        }
                    	alert('已分享');
                    	
                    },
                    cancel: function (res) {
                    	
                    	
                    	
                        alert('已取消');
                    },
                    fail: function (res) {
                    	
                    	
                        alert(JSON.stringify(res));
                    }
                });
                //朋友圈接口
                wx.onMenuShareTimeline({
                    title: title, // 分享标题
                    link: shareLink,// 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
                    imgUrl: shareImgUrl,// 分享图标
                    desc: desc,
                    trigger: function (res) {
                        // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回
                        // alert('用户点击发送给朋友');
                    },
                    success: function (res) {
                    	 shenyucishu --; //次数减一
                    	/* $(".cishu").text(shenyucishu); *///更改分享次数
                    	$(".penyouquan").hide;//隐藏朋友圈提示
                    	if(shenyucishu == 0){
                        	//跳转
                        	window.location.href="";
                        }
                    	alert('已分享');
                    },
                    cancel: function (res) {
                        
                    	
                    	alert('已取消');
                    },
                    fail: function (res) {
                        
                    	
                    	alert(JSON.stringify(res));
                    }
                });

            });
        }
    });
}


function initWeChat(signature, appId,timestamp,noncestr) {
    wx.config({
        debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
        appId: "wxbf8bce0d4f7e3ae3", // 必填，公众号的唯一标识
        timestamp: timestamp, // 必填，生成签名的时间戳
        nonceStr: noncestr, // 必填，生成签名的随机串
        signature:signature,//必填，签名
        jsApiList: [// 必填，需要使用的JS接口列表，所有JS接口列表见附录2
            'checkJsApi',
            'onMenuShareAppMessage',//老版本分享接口。
            'onMenuShareTimeline',//老版本分享接口。
        ]
    });


}
	//点击领取
	function  ninqu(){
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
	if(!e) e = window.event;//IE
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