
<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="../resources/admin/js/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <title>查看我的奖励</title>
    <script>
        function setRootFontSize() {
            var width = document.documentElement.clientWidth || document.body.clientWidth;
            fontSize = (width / 15);
            document.getElementsByTagName('html')[0].style['font-size'] = fontSize + 'px';
        }
        setRootFontSize();
        window.addEventListener('resize', function() {
            setRootFontSize();
        }, false);
    </script>
    <style>
        @media only screen and (min-width:1000px)  {
            html {
                font-size: 50px !important
            }
        }
        *{
            margin: 0;
            padding: 0;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }
        body{
            max-width: 1080px;
            min-width: 320px;
            margin: 0 auto;
            overflow: hidden;
        }
        .divone{
            background: #fff0e3;
            padding-bottom: 1rem;
            overflow: hidden;
            overflow: hidden;
        }
        .balance{
            margin-top: -1.7rem;
            margin-bottom: 1.5rem;
            padding-left: 3.2rem;

        }
        .balance>h4{
            width: 100%;
            font-size: 0.7rem;

        }
        .balance span{
            margin-left: 0.2rem;
        }
        .discount{
            width: 90%;
            height: 7rem;
            border: 2px solid #DCDCDC;
            margin: 0 auto;
            border-radius: 10px;
            background: #fff;
        }
        .discount-web-x{
            display: flex;
            width: 100%;
            height: 4.5rem;
            border-bottom: 2px dashed #adf;
        }
        .discount-web-Notice{
            width: 70%;;
            font-size: 0.8rem;
            font-weight: 600;
            height: 1rem;
            line-height: 1rem;
            padding: 1rem 0.5rem;
            overflow: hidden;
        }
        .discount-web-Notice1{
            position: relative;
            width: 5rem;
        }
        .discount-web-Notice1::before{
            content: "";
            width: 3rem;
            height: 3rem;
            position: absolute;
            top: 0.5rem;
            left: 15%;
            /*background: url(./images/lihe.png) no-repeat;*/
            background-size: 100% 100%;
            opacity:0.2;
        }
        .discount-web-y{
            width: 100%;
            height:2.5rem;
        }
        .discount-web-coupon{
            display: flex;
            text-align: center;
        }
        .discount-web-coupon>h5{
            width: 30%;
            text-decoration: none;
            color: #000;
            font-size: 0.7rem;
            border: 0.5px solid;
            border-radius: 100px;
            transform: translate(-5% , 40%);
            margin-left: 10%;
            padding: 0.2rem 0.5rem;
            font-weight: bolder;

        }
        .divone1{
            padding-bottom: 100px;
            background: -webkit-linear-gradient(#fff0e3,#fcfcfc); /* Safari 5.1-6.0 */
            background: -o-linear-gradient(#fff0e3,#fcfcfc);  /* Opera 11.1-12.0 */
            background: -moz-linear-gradient(#fff0e3,#fcfcfc); /* Firefox 3.6-15 */
            background: linear-gradient(#fff0e3,#fcfcfc); /* 标准语法*/
        }

        .left{
            width: 10%;
            background: url(../resources/admin/login/huodongimg/back_jt.png) no-repeat center;
            background-size: 10px;
            height: 40px;
            color: #272727;
        }
        .end-of-event{
            width: 100%;
            text-align: center;
            display: block;
            font-size: 0.7rem;
            margin-top: 1rem;
        }
        .wrap,.prize{
            width: 90%;
            margin: 0 auto;
        }
        .prize{
            margin-top: 1rem;
        }
        .prize span{
            display: block;
            font-size: 0.8rem;
            padding: 0.3rem 0;
        }

        .group{
            text-align: center;
            width: 90%;
            height: 1.8rem;
            background: #ecc59a;
            border-radius: 50px;
            line-height: 1.8rem;
            font-size: 0.8rem;
            margin: 0 auto;
            cursor: pointer;
            margin-bottom: 0.5rem;
        }
        .group a{
            text-decoration: none;
            color:#fff;
        }
        .organize-a-team{
            font-size: 1rem;
        }
        .reading,.organize-a-team,.Number-of-periods{
            padding-bottom: 5px;
        }
        .Number-of-periods{
            font-size: 0.7rem;
        }
        .reading{
            font-size: 0.8rem;
        }
        .Number-of-people{
            width: calc(100% - 30px);
            margin-top: 1rem;
            margin-left: 15px;
            text-align: center;
            height: 5.8rem;
            z-index: 10;
            overflow-x: hidden;
            overflow-y: auto;
        }
        .portrait{
            width: 20%;
            float: left;
            margin-bottom: 0.5rem;

        }
        .head-portrait{
            position: relative;
            left: 50%;
            margin-left: -1.25rem;
            width: 2.4rem;
            height: 2.4rem;
            border-radius: 50%;
            border: 1px solid #ccc;
            overflow: hidden;
        }
        .head-portrait img{
            width: 100%;
            height: 100%;
        }
        .personnel{
            position: absolute;
            bottom: 0;
            left: 0;
            text-align: center;
            width: 100%;
            height: 0.8rem;
            background: #fbd4a9;
        }
        .personnel span{
            font-size: 0.5rem;
        }
        .dividing-line{
            width: 90%;
            height: 1px;
            border-bottom: 1px solid rgb(223, 201, 141);
            margin: 0 auto;

        }
        .openid{
            display: none;
        }
        .headimgurl{
            display: none;
        }
        .ids{
            display: none;
        }
        .nickname{
            display: none;
        }
        .total{
            display: none;
        }
        .middle-picture{
            margin-top: 1rem;
            margin-left: 0.5rem;
            width: 2.5rem;
            height: 2.5rem;
            border-radius: 50%;
            overflow: hidden;

        }
        .middle-picture img{
            width: 100%;
            height: 100%;

        }
        .sss{
            padding-left: 3.5rem;
            color: #000;
            margin-top: -4.7rem;
            line-height: 6.5;
            font-size: 20;
            font-family: "宋体";
        }
        .xia{
            margin-top: 3.2rem;

        }
        .e{
            margin-top: 0.5rem;
            font-size: 15px;
        }
        .ee{
            margin-top: 1rem;
            font-size: 15px;
        }
    </style>
</head>
<body>
<div class="openid">${openid}</div>
<div class="headimgurl">${headimgurl}</div>
<div class="ids">${ids}</div>
<div class="nickname">${nickname}</div>
<div class="total">${total}</div>

<div class="divone">
    <div class="middle-picture">
        <img src="<%-- ${headimgurl} --%>../resources/admin/login/img/toxian.jpg" alt="">

    </div>
    <div class="sss">
       <%--  ${nickname} --%>我们
    </div>
    <div class="balance"><h5>我的奖励:<span id="yue">0</span> <span>元</span></h5></div>

    <div class="discount">
        <div class="discount-web-x">

                <img src="../resources/admin/login/huodongimg/qq.png" alt="" style="width: 40%">

         <span class="e" style="font-family: 宋体">  <strong style="font-family: 宋体">你已成为晶药师学历推广人~</strong><br><br>你的身边有人要提升学历吗，如果有，快去邀请获取奖励吧~</span>
        </div>

        <div class="discount-web-y">
            <div class="discount-web-coupon">
                <%--<h4 onclick="tixian()">提现</h4>--%>
                <%--<h4 onclick="ccto">继续邀请</h4>--%>
                  <h5 onclick="tixian()">提现</h5>
                  <h5 onclick="ccto()">前往邀请</h5>

            </div>

        </div>


    </div>
</div>

<div class="divone1">
    <div class="dividing-line"></div>
    <div class="Number-of-people">
       <c:if test="${empty wxUser2}">
    <span>暂无邀请好友</span>
</c:if>
        <c:if test="${not empty wxUser2}">
        <c:forEach items="${wxUser2}" var="wxUser">
        <div class="portrait">
            <div class="head-portrait">
                <img src="${wxUser.headimgurl}" alt="">
            </div>
        </div>

        </c:forEach>
        </c:if>
    </div>


</div>


</body>
 <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<script>
$(function () {
 var total=$(".total").html();
var count="";
if(total==1) {
     count=total*30;
     $("#yue").html(count);
 }
 else if (total>=2&&total<=4){
      count=total*40;
     $("#yue").html(count);
 }
  else  if (total>=5&&total<=7){
         count=total*60;
        $("#yue").html(count);
    }
   else if (total>=8){
         count=total*100;
        $("#yue").html(count);
    }
});
       // $("#cc").on("click",function () {
       //     var ids=$(".ids").text().trim();
       //     var nickname=$(".nickname").text().trim();
       //     var headimgurl=$(".headimgurl").text().trim();
       //
       //     //window.location.href="xuelipro?ids="+ids+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
       //   $("#ccto").attr("href","xuelipro?ids="+ids+"&nickname="+nickname+"&headimgurl="+headimgurl+"")
       // });
function ccto() {
    var ids=$(".ids").text().trim();
    var nickname=$(".nickname").text().trim();
    var openid=$(".openid").text().trim();
    var headimgurl=$(".headimgurl").text().trim();

    window.location.href="../xuelituijianren/zuxiangqing?ids="+ids+"&nickname="+nickname+"&headimgurl="+headimgurl+"&openid="+openid+"";
}
       function tixian(){
           var yue=$("#yue").html();
           var ids=$(".ids").text().trim();
           var total=$(".total").html();
           var openid=$(".openid").text().trim();
           var nickname=$(".nickname").text().trim();
           var headimgurl=$(".headimgurl").text().trim();
           var count="";
           if(total==1) {
               alert("你确定提现？目前佣金档位处于30元/每人,已成功邀请1人，还差1人能够提升一个档位~");
           }
           else if (total==2){
               alert("你确定提现？目前佣金档位处于40元/每人,已成功邀请2人，还差3人能够提升一个档位~");
           }
           else if (total==3){
               alert("你确定提现？目前佣金档位处于40元/每人,已成功邀请3人，还差2人能够提升一个档位~");
           }
           else if (total==4){
               alert("你确定提现？目前佣金档位处于40元/每人,已成功邀请4人，还差1人能够提升一个档位~");
           }
           else if (total==5){
               alert("你确定提现？目前佣金档位处于60元/每人,已成功邀请5人，还差3人能够提升一个档位~");
           }
           else if (total==6){
               alert("你确定提现？目前佣金档位处于60元/每人,已成功邀请6人，还差2人能够提升一个档位~");
           }
           else if (total==7){
               alert("你确定提现？目前佣金档位处于60元/每人,已成功邀请7人，还差1人能够提升一个档位~");
           }
           else if (total>=8){
               alert("你确定提现？目前佣金档位处于100元/每人,已成功邀请"+total+"人");
           }

           window.location.href="../xuelituijianren/tixian?yue="+yue+"&total="+total+"&openid="+openid+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
       }


// $("#cc").on("click",function () {
//     var yue=$("#yue").html();
//     var ids=$(".ids").text().trim();
//     var total=$(".total").html();
//     var openid=$(".openid").text().trim();
//     var count="";
//     if(total==1) {
//         alert("你确定提现？目前佣金档位处于30元/每人,已成功邀请1人，还差1人能够提升一个档位~");
//
//     }
//     else if (total==2){
//         alert("你确定提现？目前佣金档位处于40元/每人,已成功邀请2人，还差3人能够提升一个档位~");
//     }
//     else if (total==3){
//         alert("你确定提现？目前佣金档位处于40元/每人,已成功邀请3人，还差2人能够提升一个档位~");
//     }
//     else if (total==4){
//         alert("你确定提现？目前佣金档位处于40元/每人,已成功邀请4人，还差1人能够提升一个档位~");
//     }
//     else if (total==5){
//         alert("你确定提现？目前佣金档位处于60元/每人,已成功邀请5人，还差3人能够提升一个档位~");
//     }
//     else if (total==6){
//         alert("你确定提现？目前佣金档位处于60元/每人,已成功邀请6人，还差2人能够提升一个档位~");
//     }
//     else if (total==7){
//         alert("你确定提现？目前佣金档位处于60元/每人,已成功邀请7人，还差1人能够提升一个档位~");
//     }
//     else if (total>=8){
//         alert("你确定提现？目前佣金档位处于100元/每人,已成功邀请"+total+"人");
//     }
//
//        // window.location.href="tixian?yue="+yue+"&ids="+ids+"&total="+total+"&openid="+openid+"";
//          $("#tixian").attr("href","tixian?yue="+yue+"&ids="+ids+"&total="+total+"&openid="+openid+"")
//
//
//
// })
</script>
</html>
