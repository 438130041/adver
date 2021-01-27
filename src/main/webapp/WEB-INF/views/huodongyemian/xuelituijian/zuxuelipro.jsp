<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/7 0007
  Time: 上午 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="../resources/admin/css/huodongcss/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/admin/css/huodongcss/shangcheng.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script  type="text/javascript"  src="../resources/admin/js/huodongjs/swiper.min.js"></script> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
</head>
<style>
    .openid{
        display: none;
    }
    .openids{
        display: none;
    }
    .ids{
        display: none;
    }
    .mobiles{
        display: none;
    }

    .group{
        width: 100%;
        text-align: center;
        width: 90%;
        height: 2rem;
        background: #ecc59a;
        border-radius: 50px;
        line-height: 2rem;
        font-size: 0.8rem;
        margin: 0 auto;
        cursor: pointer;
    }
    .opes{
        display: none;
    }
    .middle-picture{
        margin-bottom: 2.5rem;
        margin-top: -0.1rem;
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

    .middle{
        position: fixed;
        top: 10em;
        width: 94%;
        display: inline-flex;
        height: 4.0rem;
        background: #fff;
        margin-left: 3%;
        z-index: 10;
        border-radius: 5px;
    }
        .sss{
            padding-left: 8rem;
            color: #000;
           margin-top: -12.5rem;
            line-height: 6.5;
            font-size: 16;
            font-family: "宋体";
        }
    .aaa{
        padding-left: 8rem;
        margin-top: -5.5rem;
    }
    .xxx{
        padding-left: 25rem;
        margin-top: -9.0rem;
    }
 /*   .panel-body{
   		padding-left: 6rem;
     } */
</style>
<body>

<div class="ids">
    ${ids}
</div>


<br>
<div class="panel-heading">

    <div class="middle-picture">
        <img src="<%-- ${headimgurl} --%>../resources/admin/login/img/toxian.jpg" alt="">

    </div>
    <div class="sss">
        <%-- ${nickname} --%>我们
    </div>
    <br>
    <div class="aaa"><h5>邀请你来参加学历提升</h5></div>

    <div class="xxx">
        <img src="../resources/admin/login/huodongimg/xx.png" style=" width: 100%" >
    </div>
<br>
    <br>
    <br>
    <br>

    <div class="panel-body">
        <div class="col-xs-12" style="text-align:center;">
            <input id="btnres"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="中专定金付款（200元）" onclick="Litofor()">
        </div>

    </div>
    <div class="panel-body">
        <div class="col-xs-12" style="text-align:center;">
            <input id="btnre"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="中专全款报名（1000元)" onclick="Liquan()">
        </div>
    </div>
<%--    <div class="panel-body">--%>
<%--        <div class="col-xs-12" style="text-align:center;">--%>
<%--            <input id="btnr"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="抵学费报名大专（本科）" onclick="Linkwant()">--%>
<%--        </div>--%>
<%--    </div>--%>
    <br>
    <div>
        <img src="../resources/admin/login/huodongimg/vvv.jpg" style="width: 100%">
    </div>
</div>
</body>
 <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<script>


    function Litofor() {
        var ids = $(".ids").text().trim();
        window.location.href = "xuelifukuan?ids=" + ids + "";
    }
    function Linkwant() {
      window.location.href="zubenke.jsp";
    }
    function Liquan() {
        var ids = $(".ids").text().trim();
        window.location.href = "xueliquankuan?ids=" + ids + "";

    }
</script>
</html>
