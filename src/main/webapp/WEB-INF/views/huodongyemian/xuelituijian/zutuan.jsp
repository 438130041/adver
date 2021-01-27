<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>面授集训营组团秒杀</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="css/home/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
</head>
<style>
    .openid{
       display: none;
    }
    .mobile{
        display: none;
    }
    .ids{
        display: none;
    }
    .msg{
        display: none;
    }
    .total{
        display: none;
    }
</style>

<body>
<div class="openid">
    ${openid}
</div>
<div class=".msg">
    ${msg}
</div>
<div class="mobile">
    ${mobile}
</div>
<div class="ids">
    ${ids}
</div>
<div class="total">
    ${total}
</div>
<div class="panel-heading">
    <div>
        <img src="../resources/admin/login/huodongimg/b.jpg" style="width: 100%">
    </div>
</div>
<%--<div id="O1" style="text-align: center"><a href="" id="O2" class="btn btn-info">邀人组团</a></div>--%>
<br>
<div class="col-xs-12" style="text-align:center;" id="O3">
    <input id="btnres"  style="width: 100% ;height: 6%;font-size: 130%; border-radius: 50px;" class="btn btn-primary" type="button" value="加入队伍成功，查看我的队伍" onclick="Linktoa()">
</div>
<%--<div id="O3" style="text-align: center;width: 100%;height: 7%;font-size: 150%"><a href="" id="O4" class="btn btn-info" >加入队伍成功，查看我的队伍</a></div>--%>

</body>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<script>

    $(function () {
        var openid=$(".openid").text().trim();
        var ids=$(".ids").text().trim();
        $("#zudui").hide();
        var total=$(".total").text();
        if (total==0){
            // alert("您还没有邀请够三人！")
            console.log("0");
        }
        else  if(total==1){
            alert("加入队伍成功，还差2人组队成功，快去邀请朋友加入参与秒杀吧~");
        }
        else  if(total==2){

            alert("加入队伍成功，还差1人组队成功，快去邀请朋友加入参与秒杀吧~");

        }
        else  if(total==3){
            alert("恭喜组队成功");
            window.location.href="fortosuccess?ids="+ids+"&openid="+openid+"";
            $("#O3").hide();
          //  alert("加入队伍成功，还差1人组队成功，快去邀请朋友加入参与秒杀吧~~");
        }
        // else  if(total>=4){
        //     alert("恭喜组队成功");
        //     window.location.href="fortosuccess?ids="+ids+"";
        //     $("#O3").hide();
        // }

    });
    var openid=$(".openid").text().trim();
    var mobile=$(".mobile").text();


    var opop="";
    // alert("openid:"+openid);
    // alert("ids:"+ids);
    // $("#O1").on("click",function () {
    //     $("#O2").attr("href","forOrderget?openid="+openid+"&mobile="+mobile+"&ids="+ids+"")
    // });
    // $("#O3").on("click",function () {
    //     // $("#O4").attr("href","forOrderget?ids="+ids+"&openid="+opop+"");
    //     $("#O4").attr("href","Orderget?ids="+ids+"");
    // })
    // $("#O3").on("click",function () {
    //     // $("#O4").attr("href","forOrderget?ids="+ids+"&openid="+opop+"");
    //     $("#O4").attr("href","TOrderget?ids="+ids+"");
    // })
function Linktoa() {
    var openid=$(".openid").text().trim();
    var ids=$(".ids").text().trim();
    window.location.href="TOrderget?ids="+ids+"&openid="+openid+"";
    // if(openid==null||openid==""){
    //     alert("没有权限");
    //     return false;
    // }else {
    //     window.location.href="TOrderget?ids="+ids+"&openid="+openid+"";
    // }

}
</script>
</html>
