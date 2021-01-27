<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学历报名全款</title>
    <link href="css/master.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../resources/admin/css/huodongcss/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/admin/css/huodongcss/index.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/themes.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="//cdn.bootcss.com/jquery-weui/1.0.1/js/jquery-weui.min.js"></script>
</head>
<style>
    html {
        font-size: 75px;
    }
    @media screen and (max-width: 320px) {
        html {
            font-size: 21.33333333px;
        }
    }
    @media screen and (min-width: 320px) {
        html {
            font-size: 21.33333333px;
        }
    }
    @media screen and (min-width: 360px) {
        html {
            font-size: 24px;
        }
    }
    @media screen and (min-width: 375px) {
        html {
            font-size: 25px;
        }
    }
    @media screen and (min-width: 384px) {
        html {
            font-size: 25.6px;
        }
    }
    @media screen and (min-width: 400px) {
        html {
            font-size: 26.66666667px;
        }
    }
    @media screen and (min-width: 414px) {
        html {
            font-size: 27.6px;
        }
    }
    @media screen and (min-width: 424px) {
        html {
            font-size: 28.26666667px;
        }
    }
    @media screen and (min-width: 480px) {
        html {
            font-size: 32px;
        }
    }
    @media screen and (min-width: 540px) {
        html {
            font-size: 36px;
        }
    }
    @media screen and (min-width: 720px) {
        html {
            font-size: 36px;
        }
    }
    @media screen and (min-width: 750px) {
        html {
            font-size: 36px;
        }
    }
    @media screen and (min-width: 1024px) {
        html {
            font-size: 40px;
        }
    }
    body {
        min-width: 320px;
        max-width: 1080px;
        margin: 0 auto;
        background: #f7f7f7;
    }
    * {
        margin: 0;
        padding: 0;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    }
    ul{
        list-style: none;
    }
    a{
        text-decoration: none;
    }
    ul,li,a{
        cursor: pointer;
    }
    .wrapper {
        width: 100%;
        margin-bottom: 80px;
    }
    .heade {
        width: 100%;
        height: 1.8rem;
        background: #fff;
    }
    .zy_title_top {
        display: flex;
        font-size: 0.4rem;
        text-align: center;
        align-items: center;
    }
    .zy_title_top .left {
        width: 10%;
        background: url(images/back_jt.png) no-repeat center;
        background-size: 0.4rem;
        height: 1.8rem;
        cursor: pointer;
    }
    .zy_title_top .confirm {
        width: 100%;
        font-size: 0.6rem;
        height: 1.8rem;
        line-height: 1.8rem;
    }
    .address_defalut_wrap {
        margin: 0.2rem 0;
        width: 100%;
        height: 3rem;
        background: #fff;
    }
    .address_defalut {
        width: 95%;
        margin: 0 auto;
        font-size: 0.6rem;
    }
    .address_defalut ul li {
        padding-top: 0.3rem;
    }
    .address_defalut .address {
        color: #666;
    }
    .order_box {
        position: relative;
        margin: 0 auto;
        width: 100%;
        height: 7.2rem;
        background: #ffff;
        border-radius: 0.4rem;
        overflow: hidden;
        margin-bottom: 0.3rem;
    }
    .order_head {
        margin-top: 0.16rem;
        display: flex;
        width: 100%;
        height: 1rem;
    }
    .order_head .order_logo {
        font-size: 0.6rem;
        line-height: 1rem;
        margin-left: 0.6rem;
        height: 1rem;
    }
    .order_head .order_logo {
        width: 60%;
    }
    .order_item {
        margin-top: 0.3rem;
        width: 100%;
        height: 4rem;
    }
    .order_item .oi_content {
        width: 100%;
        height: 3rem;
    }
    .oi_content {
        display: flex;
    }
    .cover {
        padding-right: 0.4rem;
    }
    .cover-floor {
        width: 73%;
    }
    .wqvue-image {
        width: 3rem;
        height: 3rem;
        margin-left: 0.6rem;
        border: 1px solid #ccc;
        border-radius: 5px;
        overflow: hidden;
    }
    .wqvue-image img {
        width: 3rem;
        height: 3rem;
    }
    .cover-floor {
        margin-top: 0.5rem;
    }
    .content {
        font-family: PingFangSC-Regular;
        height: 2rem;
        font-size: 0.56rem;
    }
    .order_total_bar {
        width: 94%;
        margin: 0 auto;
        font-size: 0.46rem;
        color: #666;
        line-height: 1rem;
        border-bottom: 1px solid #ccc;
    }
    .payment {
        margin-left: 0.3rem;
        text-align: right;
    }
    .price {
        color: red;
        font-size: 0.6rem;
    }
    .buy_section {
        width: 100%;
        height: 5rem;
        background: #fff;
        font-size: 0.6rem;
        border-radius: 10px 10px 0 0;
    }
    .buy_chart {
        position: relative;
        width: 94%;
        margin: 0 auto;
        padding: 0.3rem 0;
    }
    .buy_chart_item {
        display: flex;
        padding-top: 0.3rem;
    }
    .buy_chart_item .chart_item_text {
        -webkit-box-flex: 1;
        -webkit-flex: 1;
        flex: 1;
        color: #333;
    }
    .pay_area {
        margin: 0 auto;
        width: 94%;
        height: 1rem;
    }
    .prices {
        text-align: right;
        font-size: 0.7rem;
        font-weight: 600;
        font-family:"宋体";
    }
    .c_g_jd {
        font-weight: 400;
        color: red;
        font-size: 0.6rem;
    }
    .mod_btns {
        width: 100%;
        height: 2rem;
        background: #ffffff;
    }
    .mod_btns .mod_btns_v2 {
        width: 90%;
        height: 1.6rem;
        background: #3884ff;
        border-radius: 1rem;
        margin: 0 auto;
        text-align: center;
        cursor: pointer;
    }
    .mod_btns .mod_btns_v2 .mod_btn {
        font-size: 0.8rem;
        color: #fff;
        line-height: 1.6rem;
    }
    .ids{
        display: none;
    }
    .font{
        font-family:"宋体";
    }
    .nickname{
        display: none;
    }
    .openid{
        display: none;
    }
    .headimgurl{
        display: none;
    }
</style>
<body>
<div class="ids">
    ${ids}
</div>
<div class="nickname">
    ${nickname}
</div>

<div class="headimgurl">
    ${headimgurl}
</div>
<div>
<div>
    <img src="../resources/admin/login/huodongimg/mm.jpg" alt="" style="width: 100%">
</div>

    <div class="map-input">
        <ul>
            <li><span>姓名</span><br>
                <input type="text"  name="name" id="name"></li>
            <li><span>手机号码</span><br>
                <input type="text" name="mobile"  id="mobile"></li>
        </ul>
    </div>
    <br>


    <div>

    </div>
    <br>
    <br>
    <div class="pay_area">
        <p class="prices" style="padding-right:25px;"> 金额:
            <strong class="font">￥1000.0元</strong>
        </p>
    </div>
</div>
<br>
<br>
<br>
<div class="mod_btns">
    <div class="mod_btns_v2" id="confirm"  onclick="addorden1()">
        <input type="hidden" name="pname" id="pname" value="0:表示未付款">
        <input type="hidden" name="price" id="price" value="1000">
        <input type="hidden" name="status" id="status" value="未付款">
        <input type="hidden" name="openid" id="openid" value="已提现">
        <a href="#" class="mod_btn">
            在线支付
        </a>
    </div>
</div>
</body>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<script>


    function addorden1() {
        var status=$("#status").val();
        var price=$("#price").val();
        var ids=$(".ids").text().trim();
        var openid=$("#openid").val();
        var mobile=$("#mobile").val();
        var name=$("#name").val();
        var phoneR = /(^1[3|4|5|6|7|8|9]\d{9}$)|(^09\d{8}$)/;
        var pname=$("#pname").val();
        var nickname=$(".nickname").text().trim();
        var headimgurl=$(".headimgurl").text().trim();
        if(name==""||name==null){
            layer.msg("请填写姓名",{icon: 3});
            return false;
        }
        if(mobile==""||mobile==null){
            layer.msg("手机号码不能为空",{icon: 3});
            return false;
        }
        if (!phoneR.test(mobile)) {
            layer.msg("手机号码格式有误",{icon: 3});
            return false;
        }

        $.ajax({
            type:'post',
            url:'xuelipay',
            dataType:"json",
            data: {
                "status":status,
                "price":price,
                "openid":openid,
                "mobile":mobile,
                "name":name,
                "pname":pname,
                "ids":ids,
                "nickname":nickname,
                "headimgurl":headimgurl
            },
            success:function(data){
                if(data.type=="su") {
                    layer.msg("提交成功",{icon:1});
                    window.location.href = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxbf8bce0d4f7e3ae3&redirect_uri=http://shop.jingyaoshi.net/wxunifiedOrderquan&response_type=code&scope=snsapi_userinfo&state="+data.oo+"#wechat_redirect";
                }
            }

        });
        return true;
    }
</script>

</html>
