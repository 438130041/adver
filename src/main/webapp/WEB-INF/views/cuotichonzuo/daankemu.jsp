<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
    <!-- <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
    <title>2020执考真题答案</title>
    <script>
        function setRootFontSize() {
            var width = document.documentElement.clientWidth || document.body.clientWidth;
            fontSize = (width / 16);
            document.getElementsByTagName('html')[0].style['font-size'] = fontSize + 'px';
            }
            setRootFontSize();
            window.addEventListener('resize', function() {
            setRootFontSize();
            }, false);
    </script>
    <style>
  *{
         margin: 0;
         padding: 0;
   }   

 body{
        max-width: 1080px;
        min-width: 320px;
        margin: 0 auto;
    }
   
   .beijingtupian{
   	 	background:url("../resources/admin/login/img/beijinditu.jpg") no-repeat ;
   	 	width:100%;
   		height:100%;
		background-size: 100% 100%;
   	}


	.subject{
		width: 75%;
		height: 2rem;
		margin-top: .7rem;
		margin-left: 50%;
    	transform: translate(-50%);
	}
	.subject>img{
		width: 100%;
		height: 100%;
	}
	
	.subject>a>img{
		width: 100%;
		height: 100%;
	}
	.ann{
		width: 100%;
		height: 100%;
		position: relative;
	}
	.ann-n{
		width: 100%;
		position: absolute;
		top: 33%; 
	}
	@media only screen and (min-width: 1023px) {
		.subject{
			height: .6rem;
		}
	}
   	/* .zyydiv{
   		width:100%;
   		height:46px;
   		position:absolute;
   		left: o.6rem;
   		margin-top:0.27rem;
   		border-radius:15px;
   	 }
   	.imgzyy{
   		width:100%;
   		height:100%;
   	 }
   	 .ann{


   	  }
   	  .yxydiv{
   	  		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:2.7rem;
   			border-radius:15px;
   	   }
   	  .imgyxy{
   	  		width:100%;
   			height:100%;
   	   }
   	 .zyediv{
   	 	    width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:5.2rem;
   			border-radius:15px;
   	  }
   	  .imgzye{
   	  		width:100%;
   			height:100%;
   	   }
   	  .yxediv{
   	  		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:7.7rem;
   			border-radius:15px;
   	   }
   	  .imgyxe{
   	  		width:100%;
   			height:100%;
   	   }
   	   .zyzhdiv{
   	   		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:10.2rem;
   			border-radius:15px;
   	    }
   	   .imgzyzh{
   	   		width:100%;
   			height:100%;
   	    }
   	   .yxzhdiv{
   	   		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:12.7rem;
   			border-radius:15px;
   	    }
   	   .imgyxzh{
   	   		width:100%;
   			height:100%;
   	    }
   	   .ysdiv{
   	   		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:15.2rem;
   			border-radius:15px;
   	    }
   	   .imgys{
   	   		width:100%;
   			height:100%;
   	    } */
   	   .yanse{
	 		background-color:#808080;
		 }
   </style>
</head>
<body>
	<div class="beijingtupian">
		<div class="ann">
			<div class="ann-n">
		   	<%-- 	<div class="zyydiv subject"  onclick="ZYY()">
					   <a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/daan/daanZYY.pdf"   class=""   id="imgs"> 
					  		 <img alt="" src="../resources/admin/login/annimg/ZYY.png"  class="imgzyy">
					   </a>  
		 		</div>
		 		<div class="yxydiv subject"  onclick="YXY()">
		 			  <a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/daan/daanYXY.pdf"   class=""   id="imgs"> 
					  		<img alt="" src="../resources/admin/login/annimg/YXY.png"  class="imgyxy">
					  </a> 
		 		</div> 
		 		<div class="zyediv subject" onclick="ZYE()">
		 			  <a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/daan/daanZYE.pdf"   class=""   id="imgs"> 
					  		<img alt="" src="../resources/admin/login/annimg/ZYE.png"  class="imgzye">
					  </a> 
		 		</div>
		 		<div class="yxediv subject"  onclick="YXE()">
		 			  <a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/daan/daanYXE.pdf"   class=""   id="imgs"> 
					  		<img alt="" src="../resources/admin/login/annimg/YXE.png"  class="imgyxe">
					  </a> 
		 		</div>
		 		<div class="zyzhdiv subject"  onclick="ZYZH()">
		 			 	<a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/daan/daanZYZH.pdf"   class=""   id="imgs">
					  		<img alt="" src="../resources/admin/login/annimg/ZYZH.png"  class="imgzyzh">
					   </a> 
		 		</div>
		 		<div class="yxzhdiv subject" onclick="YXZH()">
		 			<a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/daan/daanYXZH.pdf"   class=""   id="imgs"> 
					  		<img alt="" src="../resources/admin/login/annimg/YXZH.png"  class="imgyxzh">
					 </a> 
		 		</div>
		 		<div class="ysdiv subject"  onclick="YS()">
		 			 <a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/daan/daanYS.pdf"   class=""   id="imgs">  
					  		<img alt="" src="../resources/admin/login/annimg/YS.png"  class="imgys">
					   </a> 
				</div>
			</div> --%>
		</div>
	</div>

<script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
<script type="text/javascript">


$(function () {
    getSgt(window.location.href.split('#')[0]);//截取本页面链接

});
	
//设置分享内容
var  title="2020真题答案最准最全~";//分享的主文字
var  desc="晶药师准确估分，过不过，马上知道！";//下面的语句
var  indexHref = window.location.href;//
var  shareLink=indexHref.toString();//分享链接
var  shareImgUrl="http://practice.jingyaoshi.net/resources/admin/login/img/zhnetidaan.jpg";//分享图片
//--------------------
	
	
function getSgt(currUrl) {
    $.ajax({
        type: "POST",
        url: "http://practice.jingyaoshi.net/wx/sgture?url="+encodeURIComponent(window.location.href.split('#')[0]),//注意此处有坑，
        dataType: "json",
        success: function (response) {//通过response获取到后台返回的数据
            initWeChat(response.sgture,response.appid,response.timestamp,response.noncestr);
            wx.ready(function() {
            	/* alert('进入微信方法'); */
                console.log(title,desc,shareLink,shareImgUrl);
                //分享到--微信好友接口
                wx.onMenuShareAppMessage({
                    title: title,//分享的文字
                    desc: desc,//分享文本
                    link: shareLink,//分享的链接地址
                    imgUrl: shareImgUrl,//分享的图片显示地址
                    trigger: function (res) {
                    	/* alert('进入trigger方法'); */
                        console.log(title,desc,shareLink,shareImgUrl);
                        // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回
                        // alert('用户点击发送给朋友');
                    },
                    success: function (res) {
                        //分享完后跳转到领取页面
                    	
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
	
	
	
	
	function  YXY(){//药学专业知识一按钮
		
    	$(".yxydiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".yxydiv").removeClass("yanse"); 
			},60);
		
		 /* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});  */ 
		
	    /* var kemu = "YXY";
		window.location.href="../daankemu/daanhedui?kemu="+kemu+""  */
	}
	function  YXE(){//药学专业知识二按钮
		
		
		$(".yxediv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".yxediv").removeClass("yanse"); 
			},60);
		
		/*  var layerindex=layer.confirm('答案正在整理中!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});  */	
		
		 /* var kemu = "YXE";
		 window.location.href="../daankemu/daanhedui?kemu="+kemu+""  */
	}
	function YXZH(){//药学综合知识与技能按钮
		
		$(".yxzhdiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".yxzhdiv").removeClass("yanse"); 
			},60);
		
		/* var layerindex=layer.confirm('答案正在整理中!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
					
				layer.close(layerindex);//弹框消失
		});  */
		
		/* var YXZH = "YXZH";
		var  kemuZYHXY = "西药";
		window.location.href=""
		 $("#YXZH").attr("href","../daankemu/daanhedui");  */
	}
	function ZYY(){//中药学专业知识一按钮
		
		$(".zyydiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".zyydiv").removeClass("yanse"); 
			},60);
		
		/* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		}); 
		 */
		
		/* var kemu = "ZYY";
		var  kemuZYHXY = "中药";
		window.location.href=""
		 $("#ZYY").attr("href","../daankemu/daanhedui"); */ 
	}
	function ZYE(){//中药学专业知识二按钮
		
		$(".zyediv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".zyediv").removeClass("yanse"); 
			},60);
		
		/* var layerindex=layer.confirm('答案正在整理中!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});   */
		
		/* var  kemu = "ZYE";
		var  kemuZYHXY = "中药";
		window.location.href=""
		 $("#ZYE").attr("href","../daankemu/daanhedui"); */  
	}
	function ZYZH(){//中药学综合知识与技能按钮
		
		$(".zyzhdiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".zyzhdiv").removeClass("yanse"); 
			},60);
		
	/* 	var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});   */
		
		/* var kemu = "ZYZH";
		var  kemuZYHXY = "中药";
		window.location.href=""
		 $("#ZYZH").attr("href","../daankemu/daanhedui");  */
	}
	function YS(){//药事管理与法规按钮
		
		$(".ysdiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".ysdiv").removeClass("yanse"); 
			},60);
		
		/* var layerindex=layer.confirm('答案正在整理中!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});   */
		
		/* var  kemu = "YS";
		var  kemuZYHXY = "中药";
		window.location.href=""
		 $("#YS").attr("href","../daankemu/daanhedui");  */
	} 
</script>
</body>
</html>