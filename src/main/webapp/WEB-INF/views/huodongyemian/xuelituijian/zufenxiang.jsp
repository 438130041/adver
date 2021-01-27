<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>推广人请将此页面推广&nbsp;&nbsp;---></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="../resources/admin/css/huodongcss/bootstrap.min.css">
<%--    <link rel="stylesheet" href="css/shangcheng.css">--%>
    <link href="../resources/admin/css/huodongcss/master.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="../resources/admin/js/huodongjs/swiper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
</head>
<style>
.ids{
    display: none;
}
.middle-picture{
    margin-bottom: 2.5rem;
    margin-top: 1.2rem;
    margin-left: 0.5rem;
    width: 6.0rem;
    height: 6.0rem;
    border-radius: 50%;
    overflow: hidden;

}
.middle-picture img{
    width: 100%;
    height: 100%;

}
.middle-name{
    color: #000;
    font-size: 2.5rem;
    line-height: 1.2;
    margin-left: 15rem;
    width: 50%;
    height: 40px;
    overflow: hidden;
    align-items: center;
    margin-top: 0.1rem;
    padding-bottom: 10rem;
    padding-top: 10rem;
}
.middle-name span{
    width: 100%;
    height: 20px;
    align-items: center;
}


.sss{
    padding-left: 8rem;
    color: #000;
    margin-top: -12rem;
    line-height: 6.5;
    font-size: 15;
    font-family: "宋体";
}
.aaa{
    padding-left: 7.2rem;
    margin-top: -5rem;
}
.xxx{
    padding-left: 25rem;
    margin-top: -9rem;
}
    .qq{
        margin-top: 3rem;
    }
    .qq1{
        margin-top: 2rem;
    }
.qq2{
    margin-top: 2rem;
}
.qq3{
    margin-top: 2rem;
}
.qq4{
    margin-top: 2rem;
}
.qq5{
    margin-top: 2rem;
}
    .nickname{
        display: none;
    }
    .headimgurl{
        display: none;
    }
    .openid{ 
    	display:none;
     }
    .aa{
        width: 100%;
        height:90%;
    }
    .middle{
        width: 100%;
        height: 70%;
        margin-top: 7.8rem;
    }
    .ee{
        margin-top: 3rem;
    }

</style>
<body>
<div class="ids">${ids}</div>
<div class="openid">${openid}</div>
<div class="nickname">${nickname}</div>
<div class="headimgurl">${headimgurl}</div>
<div class="panel-heading">

    <div class="middle-picture">
        <img src="<%-- ${headimgurl} --%>../resources/admin/login/img/toxian.jpg" alt="">
    </div>
    <div class="sss">
       <%--  ${nickname} --%>我们
    </div>
    <br>
    <div class="aaa"><h5>将此页面分享出去,邀请朋友们来参与</h5></div>
    <div class="xxx">
        <img src="../resources/admin/login/huodongimg/xx.png" style=" width: 100%" >
    </div>
    <div class="middle">
        <img src="../resources/admin/login/huodongimg/vcc.png" alt="" style="width: 100%;height: 100%">
    </div>

    <div class="panel-body">
        <div class="col-xs-12" style="text-align:center;">
            <input id="btnres"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="了解详情" onclick="ce()">
        </div>

    </div>
</div>
</body>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<script>
        //微信分享
        $(function () {
            getSgt(window.location.href.split('#')[0]);
        });


        //-------------begin
        //设置分享内容
        var nickname=$(".nickname").text();
        var title=nickname+"推荐晶药师学历提升，底价给你！学信网终身可查!";
        var desc="医药行业就业，没有专业学历，职业道路能走多远？";
        var indexHref = window.location.href;
        var shareLink=indexHref.toString();//分享链接
        var  shareImgUrl="http://practice.jingyaoshi.net/resources/admin/login/huodongimg/ew.png";//分享图片
        //-------------end
        function getSgt(currUrl){
            $.ajax({
                type: "POST",
                url: "http://practice.jingyaoshi.net/wx/sgture?url="+encodeURIComponent(window.location.href.split('#')[0]),//注意此处有坑，
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
        
        
    function ce() {
        var ids=$(".ids").text().trim();
        var nickname=$(".nickname").text().trim();
        var headimgurl=$(".headimgurl").text().trim();
        // window.location.href="xuelipro?ids="+ids+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
        window.location.href="../xuelituijianren/zuxiangqing?ids="+ids+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
    }

</script>
</html>
