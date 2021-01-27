<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/9/14 0014
  Time: 下午 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--邀人组队页面 -->
    <title>邀人组队</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/themes.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
</head>
<style>
    .guid{
        display: none;
    }
    .s{
        display: none;
    }
    .findopenid{
        display: none;
    }
    .pags{
        width: 100%;
    }
</style>
<body>
<div class="guid">${guid}</div>
<div class="s">${s}</div>
<div class="findopenid">${findopenid}</div>
<div onclick="zuduifor()" class="pags">
    <img src="images/home/forzudui.png" alt="" style="width: 100%">
</div>
<%--<div class="col-xs-12" style="text-align:center;">--%>
<%--    <input id="btnres"  style="width: 100%;border-radius: 50px;" class="btn btn-primary" type="button" value="加入组队" onclick="zuduifor()">--%>
<%--</div>--%>

</body>
<script>

$(function () {
        getSgt(window.location.href.split('#')[0]);//将当前页面地址切出来

});
//-------------begin
//设置分享内容
var title="打卡组队！~";
var desc="我已发起组队,加入我的队伍吧~";
var indexHref = window.location.href;
var shareLink=indexHref.toString();//分享链接
var  shareImgUrl="http://shop.jingyaoshi.net/image/ww.png";//分享图片
//-------------end
function getSgt(currUrl) {
    $.ajax({
        type: "POST",
        url: "http://shop.jingyaoshi.net/wx/sgture?url="+encodeURIComponent(window.location.href.split('#')[0]),//注意此处有坑，
        dataType: "json",
        success: function (response) {
            initWeChat(response.sgture,response.appid,response.timestamp,response.noncestr);
            wx.ready(function() {
                console.log(title,desc,shareLink,shareImgUrl);
                //分享到--微信好友接口
                wx.onMenuShareAppMessage({
                    title: title,
                    desc: desc,
                    link: shareLink,
                    imgUrl: shareImgUrl,
                    trigger: function (res) {
                        console.log(title,desc,shareLink,shareImgUrl);
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
    function zuduifor() {
          var guid=$(".guid").html().trim();
              window.location.href="zuduiother?guid="+guid;
    }

</script>
</html>
