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
       .openid{
       		display:none;
       }
       #img{
       		width:100%;
       		height:100%;
       }
       #button{
       		width:230px;
       		height:50px;
       		position:relative;
       		left:17%; 
       		top:-15%;
       		background-color:#FF6666;
       		border:0px;
        }
      .divbutton{
      		margin-top:-25%;
       }
      .prize{
      		display:none;
      }
      .codes{
        display:none;
       }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div  class="prize">${prize}</div>
	<div  class="codes">${codes}</div>
	<div  class="fenxian">
		<!-- 图片 -->
		<div class="imgdiv">
			<img alt="" src="../resources/admin/login/img/cjfenxian.png"  id="img">
		</div>
		<div class="divbutton">
			<button type="button" class="btn btn-primary btn-lg"  id="button">立即领取</button>
		</div>
	</div>
</body>
	<script type="text/javascript">

	$(function () {
	        getSgt(window.location.href.split('#')[0]);//截取本页面链接

	});
	//设置分享内容
	var  title="送你执考冲刺课程资料！~";//分享的主文字
	var  desc="这个课程资料我正在学习，非常有用，所以分享给你啦~";//下面的语句
	var  indexHref = window.location.href;//
	var  shareLink=indexHref.toString();//分享链接
	var  shareImgUrl="http://practice.jingyaoshi.net/resources/admin/login/img/fenxianurl.png";//分享图片
    //--------------------
    function getSgt(currUrl) {
    $.ajax({
        type: "POST",
        url: "http://practice.jingyaoshi.net/wx/sgture?url="+encodeURIComponent(window.location.href.split('#')[0]),//注意此处有坑，
        dataType: "json",
        success: function (response) {//通过response获取到后台返回的数据
            initWeChat(response.sgture,response.appid,response.timestamp,response.noncestr);
            wx.ready(function() {
            	alert('进入微信方法');
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
	
			
	//点击领取
		$("#button").click(function(){
			var  prize  = $(".prize").text();
			if(prize == "冲刺抢分礼包"){
				var prizes = "qiangfenglibao";
			}
			if(prize == "习题解析班"){
				var prizes = "xitijiexi";
			}
			if(prize == "救命抢分班"){
				var prizes = "joumingqianfen";
			}
			if(prize  == "vip刷分题库"){
				var prizes = "shuafentiku";
			}
			if(prize == "16天集训营"){
				var prizes = "jixuenying";
			}
			
			if(prize == "密押卷"){
				var prizes = "miyajuan";
			}
            if(prize == "押题冲刺班"){
            	var prizes = "yatichoci";
            }
			
			var  fenxian = "fenxian";
			var  lscodes = $(".codes").text();
			/* alert("老师代码:"+lscodes); */
			//先进行验证
			window.location.href="http://practice.jingyaoshi.net/dakawxLogin?prize="+prizes+"&fenxian="+fenxian+"&lscodes="+lscodes+"";
			
		})
		
		
	</script>

</html>
