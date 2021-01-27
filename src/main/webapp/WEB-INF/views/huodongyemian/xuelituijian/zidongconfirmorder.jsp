<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/themes.js"></script>
    <script src="../resources/admin/css/huodongcss/bootstrap.min.css"></script>
    <script src="//cdn.bootcss.com/jquery-weui/1.0.1/js/jquery-weui.min.js"></script>
    <meta name="format-detection" content="telephone=no" />
    <script src="../resources/admin/js/jquery.min.js"></script>
    <script src="../resources/admin/js/huodongjs/region_select.js"></script>
    <title>订单确认</title>
        <style>
            html {
                font-size: 75px;
            }
            @media screen and (max-width: 320px) {html {font-size: 21.33333333px;}}
            @media screen and (min-width: 320px) {html {font-size: 21.33333333px;}}
            @media screen and (min-width: 360px) {html {font-size: 24px;}}
            @media screen and (min-width: 375px) {html {font-size: 25px;}}
            @media screen and (min-width: 384px) {html {font-size: 25.6px;}}
            @media screen and (min-width: 400px) {html {font-size: 26.66666667px;}}
            @media screen and (min-width: 414px) {html {font-size: 27.6px;}}
            @media screen and (min-width: 424px) {html {font-size: 28.26666667px;}}
            @media screen and (min-width: 480px) {html {font-size: 32px;}}
            @media screen and (min-width: 540px) {html {font-size: 36px;}}
            @media screen and (min-width: 720px) {html {font-size: 36px;}}
            @media screen and (min-width: 750px) {html {font-size: 36px;}}
            @media screen and (min-width: 1024px) {html {font-size: 40px;}}
            body {min-width: 320px;max-width: 1080px; margin: 0 auto;background: #fff;}
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
                margin-bottom: 120px;
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
                background: url(../resources/admin/login/huodongimg/back_jt.png) no-repeat center;
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
                height: 6rem;
                background: #ffff;
                border-radius: 0.4rem;
                overflow: hidden;

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
                height: 4.5rem;
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
                padding-top: 0.4rem;
            }
            .buy_chart_item .chart_item_text {
                -webkit-box-flex: 1;
                -webkit-flex: 1;
                flex: 1;
                color: #333;
            }
            .pay_area {
                margin-top: 1rem;
                width: 100%;
                height: 1rem;
                background: #fff;
            }
            .prices {
                text-align: right;
                font-size: 0.7rem;
                font-weight: 600;
                padding-right: 0.4rem;
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
                margin-top: 5rem;
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
            .openid{
                display: none;
            }
            .guid{
                display: none;
            }
            .content-box{
                width: 1rem;
                height: 1rem;
            }
            .content-box-name{
                width: 2rem;
                height: 1rem;
                text-align: center;
            }
            #xsjinehtml{
                font-size: 0.8rem;
            }
            .payment-method{
                height: 1rem;

            }
            .payment-method span{
                font-size: 0.7rem;
                padding-left: 0.5rem;
            }
            .payment-method-s{
                margin-top: 1rem;
            }
            .radio-inline{
                display: block;
            }
            .radio{
                margin-top: 0.5rem;
                font-size: 0.6rem;
            }
            .radio-inline{
                margin-bottom: 0.5rem;
            }
            .openid{
                display: none;
            }
            .guid{
                display: none;
            }
            .jifen{
                display: none;
            }
            .myjifen{
                display: none;
            }
            .order_item_class{
                margin: 0 auto;
                width: 94%;
                height: 4.5rem;
                font-size: 0.6rem;
                border-bottom:1px solid #ccc ;
                background: #fff;
            }
            #subject2 .checkbox{
                margin-bottom: 0.2rem;
                font-size: 0.6rem;
            }
            .checkbox .goodsCheck{
                margin-right: 0.3rem;
            }
            .map-input{ width:100%; margin:0 auto; overflow:hidden}
            .map-input li{ padding:3% 5%; width:90%; float:left;  font-size: 0.6rem;}
            .map-input li span{ float:left; width:25%;}
            .map-input li input{ width:75%; float:left; height:24px; line-height:24px; font-size:14px;border: none;border-bottom: 1px solid #ccc;outline: none;}
            .btnot{ width:100%; margin:5% auto; overflow:hidden}
            .btnot a{ width:90%; padding:3% 0; text-align:center; font-size:16px; color:#fff; background:#f60; display:block; margin:0 auto; border-radius:5px;}
            #location_p,#location_c,#location_a{
                width: 24%;
                height: 24px;
                border: none;
                outline: none;
                border-bottom: 1px solid #ccc;

            }
            #add1 select{
                border: 0;
                background: transparent;
                appearance:none;
                -moz-appearance:none;
                -webkit-appearance:none;
                border-bottom: 1px solid #ccc;
                outline: none;
                -webkit-appearance: listbox;
                font-size: 0.6rem;
                height: 0.9rem;
            }
            .common-footer{
                position: fixed;
                left: 0;
                display: flex;
                align-items: center;
                height: 50px;
                width: 100%;
                bottom: 0;
                z-index: 10;
                background-color: #fff;
                box-sizing: border-box;
                justify-content: center;
                border-top: 1px solid #eee;
                color: rgb(153, 153, 153);
            }
            .common-footer img{
                padding-bottom: 3px;
                width: 20px;
                height: 20px;
            }
            .common-footer-item{
                width: 33%;
                text-align: center;
                display: inline-block;
                font-size: 11px;
            }
            .modulelist-title {
                position: relative;
                text-align: left;
                margin-top: 10px;
                height: 40px;

                line-height: 40px;
            }
            .modulelist-title-name {
                position: relative;
                left: 13px;
                font-size: 16px;
                font-weight: bolder;
            }
            .modulelist-title-all {
                color: #108ee9;
                position: absolute;
                right: 12px;
                font-size: 15px;
            }
            .userid{
                display: none;
            }
            .GoodsID{
                display: none;
            }
        </style>
    </head>
<body>
<div class="openid">
    ${openid}
</div>
<div class="guid">
    ${guid}
</div>
<div class="jifen">
    ${jifen}
</div>
<div class="myjifen">
    ${myjifen}
</div>
<div class="userid">
    ${userid}
</div>
<div class="GoodsID">
    ${GoodsID}
</div>
<div class="wrapper">
    <header class="heade">
        <div class="zy_title_top fix">
            <%--<div class="left" href="main"></div>--%>
            <div class="confirm">确认订单</div>
        </div>
    </header>
    <script src="../resources/admin/js/huodongjs/region_select.js"></script>
    <div class="map-input">
        <ul>
            <li><span>收货人</span><input type="text"  name="receiver" id="receiver"></li>
            <li><span>手机号码</span><input type="text" name="mobile"  id="mobile"></li>
            <li><p id="add1"><span>地址</span>
                <select name="location_p" id="location_p"></select>
                <select name="location_c" id="location_c"></select>
                <select name="location_a" id="location_a"></select>
            </p>
            </li>
            <li><span>详细地址</span><input type="text" name="address"  id="address"></li>

        </ul>
    </div>

    <div class="order_box">
        <div class="order_head">

        </div>
        <div class="order_item">
            <div class="oi_content">
                <div class="cover">
                    <div class="wqvue-image">
                        <img class="thumb"  src="${goods.goodsImg}" alt="">
                    </div>
                </div>
                <div class="cover-floor">
                    <div class="content">
                        <input type="hidden" id="pname" name="pname" value="${goods.goodsName}">
                        <span class="text" id="c">${goods.goodsName}</span>
                    </div>
                </div>


            </div>

            <div class="order_total_bar">
                <div class="payment">
                    <input type="hidden" id="price" name="price" value="${goods.markePrice}">
                    <input type="hidden" id="xsjine"  value="${goods.markePrice}">
                    <input type="hidden" id="youfei"  value="0">
                    <input type="hidden" name="kemu" id="kemu">
                    <input type="hidden"  name="zhuanye" id="zhuanye">

                </div>
            </div>
        </div>
    </div>

    <div class="buy_section">
        <ul class="buy_chart">
            <li class="buy_chart_item">
                <p class="chart_item_text">商品金额</p>
                <%--                    <input type="hidden" id="price" name="price" value="${goods.markePrice}">--%>
                <div id="cgjd"  class="chart_item_price c_g_jd" ><span>￥</span>${goods.markePrice}</div>

            </li>
            <li class="buy_chart_item">
                <input type="hidden" value="积分兑换" name="status" id="status"/>
                <span id="sysjifen" class="zongjifen">${jifen}</span><p>积分</p>
                <%--                    <p class="chart_item_text">数量: 1</p>--%>
                                    <p><input type="hidden" id="num" name="num" value="1"></p>
            </li>
            <li class="buy_chart_item">
                <p class="chart_item_text"><strong class="youfei">运费:<span>￥</span>0元</strong></p>
<%--                <div id=""  class="chart_item_price c_g_jd" ><span>￥</span>10元</div>--%>
            </li>
        </ul>
        <div class="pay_area">

            <p class="prices"> 实付金额:
                <strong id="shijicount">${goods.markePrice}</strong><strong>元</strong>
            </p>

        </div>


    </div>
    <div class="mod_btns">
        <div class="mod_btns_v2" id="confirm"  onclick="addorderFun()">
            <a href="#" class="mod_btn">
                点击兑换
            </a>
        </div>
    </div>
</div>
</div>
<div class="common-footer">

    <div class="common-footer-item" onclick="main()">
        <img src="images/home/menu_icon01.png" alt="">
        <div>首页</div>
    </div>

    <div class="common-footer-item" onclick="shopcar()">
        <img src="images/home/menu_icon03.png" alt="">
        <div>购物车</div>
    </div>

    <div class="common-footer-item" onclick="orders()">
        <img src="images/home/menu_icon02.png" alt="">
        <div>订单</div>
    </div>

    <div class="common-footer-item" onclick="jifen()">
        <img src="images/home/menu_icon04.png" alt="">
        <div>礼品兑换</div>
    </div>

</div>
</body>
<script src="js/jquery.min.js"></script>
<script>
    var isok=true;
    function main() {
        window.location.href="main";
    }
    function shopcar() {
        alert("该功能尚未开放,敬请期待");
        //window.location.href="shoppingCar";
    }
    function orders() {
        window.location.href="wxorder";

    }
    function jifen() {
        window.location.href="wxLoginssto";
    }
    var nickname=$(".nickname").text();
    function addorderFun() {

        var numcount=   $("#num").val();
        var xsjinemoney=$("#xsjine").val();
        var price= $("#price").val();
        var choose=$('input[name="subject"]:checked').val();
        var openid=$(".openid").html().trim();
        var guid=$(".guid").html();
        var receiver=$("#receiver").val();
        var mobile=$("#mobile").val();
        var location_p=$("#location_p").val();
        var location_c=$("#location_c").val();
        var location_a=$("#location_a").val();
        var address=$("#address").val();
        var jifen=$(".jifen").html();//所需要的积分
        var myjifen=$(".myjifen").html().trim();//所拥有的积分
        var phoneR = /(^1[3|4|5|7|8]\d{9}$)|(^09\d{8}$)/
        var add = document.getElementById("add");
        var imgs=$(".thumb").prop("src");
        var status=$("#status").val();
        var pname=$("#pname").val();
        var shijicount=$("#shijicount").html();
        var sysjifen=$("#sysjifen").html();
        var userid=$(".userid").html().trim();
        var GoodsID=$(".GoodsID").html().trim();
        if(receiver==""||receiver==null){
            layer.msg("收货人不能为空",{icon: 3});
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

        if(address==""||address==null){
            layer.msg("详细地址不能为空",{icon: 3});
            return false;
        }
        if( parseInt(sysjifen) > parseInt(myjifen)){
            alert("积分不足，如有兑换码请先进行兑换");
            console.log("sysjifen:"+sysjifen);
            console.log("myjifen:"+myjifen);
        }

        else {
            if (isok) {
                isok = false;
                $.ajax({
                    type: 'post',
                    url: 'zidongjOrder',
                    dataType: "json",
                    data: {
                        "openid": openid,
                        "address": address,
                        "receiver": receiver,
                        "mobile": mobile,
                        "location_p": location_p,
                        "location_c": location_c,
                        "location_a": location_a,
                        "imgs": imgs,
                        "status": status,
                        "pname": pname,
                        "price": shijicount,
                        "num": numcount,
                        "xitongjifen": sysjifen,
                        "myjifen": myjifen,
                        "userid": userid,
                        "GoodsID": GoodsID
                    },
                    success: function (data) {
                        isok===true;
                        if (data.type == "jifen") {
                            console.log(data.o);
                            layer.msg("兑换成功", {icon: 1});
                            window.location.href = "https://g.gd-share.cn/p/hsy8aylp";
                        }
                    }

                });

            }
        }
        return true;
    }
    new PCAS('location_p', 'location_c', 'location_a', '广东省', '', '');


</script>

</html>