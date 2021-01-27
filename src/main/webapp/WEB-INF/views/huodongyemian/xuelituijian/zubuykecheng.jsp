<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单确认</title>
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
    .openid{
        display: none;
    }
    .jifen{
        display: none;
    }
    .myjifen{
        display: none;
    }
    .swiper-wrapper {
        height: 15rem;
        max-width:200%;

    }
</style>
<body>
<div class="../resources/admin/login/huodongimg/ddf.png" alt="" width="100%" height="100%">
</div>
<div class="map-input">
    <ul>
        <li><span>姓名</span><br>
            <input type="text"  name="receiver" id="name"></li>
        <li><span>手机号码</span><br>
            <input type="text" name="mobile"  id="mobile"></li>
    </ul>
</div>

<br>

<div style="padding-left:25px;">
    <span>有没有晶药师账号</span>
    <br>
    <label class="radio-inline">
        <input type="radio" name="you" id="you" value="有"> 有
    </label>
    <br>
    <label class="radio-inline">
        <input type="radio" name="you" id="wu" value="无"> 无
    </label>
</div>
<br>

<div class="map-input">
    <ul>
        <li id="syscount1"><span>账号</span><br>

            <input type="text" name="kemu" id="syscount" placeholder="请输入晶药师账号"></li>
    </ul>
</div>


<br>
<div style="padding-left:25px;" class="map-input">
    <span>选择专业</span>
    <br>
    <label class="radio-inline">
        <input type="radio" name="subject" id="subject" value="中药"> 中药
    </label>
    <br>
    <label class="radio-inline">
        <input type="radio" name="subject" id="wsubject" value="西药"> 西药
    </label>

</div>
<br>
<p style="padding-left:25px;">价格:<span id="jiage" class="zongjifen">${forgoods.markePrice}</span>元</p>
<div>

</div>
<br>
<div id="subject2" class="map-input" style="padding-left:25px;">
    <span style="padding-left:25px;">选择科目</span>

            <div class="checkbox"><input type="checkbox" class="check goods-check goodsCheck" name="checkbox" value="专业知识一">专业知识一</div>
            <div class="checkbox"><input type="checkbox" class="check goods-check goodsCheck" name="checkbox" value="专业知识二">专业知识二</div>
            <div class="checkbox"><input type="checkbox" class="check goods-check goodsCheck" name="checkbox" value="综合知识与技能">综合知识与技能</div>
            <div class="checkbox"><input type="checkbox" class="check goods-check goodsCheck" name="checkbox" value="药事管理与法规">药事管理与法规</div>

</div>


<br>
<div id="kemu" class="map-input">
    <span style="padding-left:25px;">今年打算考几科</span>
    <div style="padding-left:25px;">
        <label class="radio-inline">
            <input type="radio" name="for" value="1科" > 1科
        </label>
        <label class="radio-inline">
            <input type="radio" name="for" value="2科"> 2科
        </label>
        <label class="radio-inline">
            <input type="radio" name="for" value="3科"> 3科
        </label>
        <label class="radio-inline">
            <input type="radio" name="for" value="4科"> 4科
        </label>
    </div>
</div>
<br>
</div>

<br>
<br>
<br>
<div class="mod_btns" >
    <div class="mod_btns_v2" id="confirm"  onclick="addorderbuy()">

        <input type="hidden" name="status" id="status" value="未付款">

        <a href="#" class="mod_btn">
            点击购买
        </a>
    </div>
</div>
</body>
<script src="js/jquery.min.js"></script>
<script>
    $(function () {
        $("#subject2").hide();
        $("#syscount1").hide();
        var ss="";
        var jiage=$("#jiage").text();
        var one=jiage*2;
        var two=jiage*3;
        var three="1596";

        $('input[type=checkbox]').click(function(){
           // $(this).attr('disabled','disabled');
            var s=$("input[name='checkbox']:checked").length;
            if(s <= 1)
            {
                // alert("长度："+s);
          $("#jiage").html(jiage);
            }
            else if (s===2){
                // alert("长度："+s);
                $("#jiage").html(one);
            }
            else if (s===3){
                // alert("长度："+s);
                $("#jiage").html(two);
            }
            else if (s===4){
                // alert("长度："+s);
                $("#jiage").html(three);
            }
        });

    //     $("input:checkbox[name='checkbox']:checked").click(function () {
    //         ss+=$(this).val();
    //         alert("选中的值："+ss)
    //
    //     //单个
    //      if (ss.val()==="专业知识一"||ss.val()==="专业知识二"||ss.val()==="综合知识与技能"||ss.val()==="药事管理与法规"){
    //          console.log("11111");
    //            $("#jiage").html(jiage);
    //      }
    //      //两个
    //      else if (ss.val()==="专业知识一"&&ss.val()==="综合知识与技能"){
    //
    //          $("#jiage").html(one);
    //      }
    //      else if (ss.val()==="专业知识一"&&ss.val()==="专业知识二"){
    //          $("#jiage").html(one);
    //      }
    //      else if (ss.val()==="专业知识一"&&ss.val()==="药事管理与法规"){
    //          $("#jiage").html(one);
    //      }
    //
    //      else if (ss.val()==="专业知识二"&&ss.val()==="综合知识与技能"){
    //          $("#jiage").html(one);
    //      }
    //      else if (ss.val()==="专业知识二"&&ss.val()==="药事管理与法规"){
    //          $("#jiage").html(one);
    //      }
    //
    //      else if (ss.val()==="综合知识与技能"&&ss.val()==="药事管理与法规"){
    //          $("#jiage").html(one);
    //      }
    //
    //      //三个
    //      else if (ss.val()==="专业知识一"&&ss.val()==="专业知识二"&&ss.val()==="综合知识与技能"){
    //          $("#jiage").html(two);
    //      }
    //      else if (ss.val()==="专业知识一"&&ss.val()==="专业知识二"&&ss.val()==="药事管理与法规"){
    //          $("#jiage").html(two);
    //      }
    //      else if (ss.val()==="专业知识二"&&ss.val()==="综合知识与技能"&&ss.val()==="药事管理与法规"){
    //          $("#jiage").html(two);
    //      }
    //      //全选
    //      else if (ss.val()==="专业知识二"&&ss.val()==="专业知识二"&&ss.val()==="综合知识与技能"&&ss.val()==="药事管理与法规"){
    //          $("#jiage").html(three);
    //      }
    // })
    });

    $("#subject").on("click",function () {
        $("#subject2").show();

    });
    $("#wsubject").on("click",function () {
        $("#subject2").show();
    });
    $("#you").on("click",function () {
        var syscount=$("#syscount").val();
        $("#syscount1").show();
        if(syscount==""||syscount==null){
            layer.msg("请填写晶药师账号",{icon: 3});
        }
    });

    $("#wu").on("click",function () {
        var ss = "请输入晶药师账号";
        $("#syscount1").hide();
        $("#syscount").val(ss);

    });

    function addorderbuy() {

        var subject=$('input[name="subject"]:checked').val();//获取选中的中西药单选按钮的值

        var jiage=$("#jiage").text();
        var choo=$('input[name="you"]:checked').val();//获取有无账号的单选按钮
        var kemu=$('input[name="for"]:checked').val();//获取单选按钮考几科的按钮
        var syscount=$("#syscount").val();
        var status=$("#status").val();

        var mobile=$("#mobile").val();
        var name=$("#name").val();
        var phoneR = /(^1[3|4|5|6|7|8|9]\d{9}$)|(^09\d{8}$)/
        var checks="";

        $("input:checkbox[name='checkbox']:checked").each(function () {
            checks+=$(this).val()+",";
            //alert("选中的值："+checks)
        });



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
        if(choo==""||choo==null){
            layer.msg("请选择是否有晶药师账号",{icon: 3});
            return false;
        }
        if(syscount==""||syscount==null){
            layer.msg("请填写晶药师账号",{icon: 3});
            return false;
        }
        if(subject==""||subject==null){
            layer.msg("请选择考试科目",{icon: 3});
            return false;
        }
        if(checks==null||checks==""||checks==undefined){
            alert("请勾选需要购买的商品")
            return false;
        }
        if(kemu==""||kemu==null){
            layer.msg("请选择今年打算考几科",{icon: 3});
            return false;
        }
        $.ajax({
            type:'post',
            url:'tikuorderwith',
            dataType:"json",
            data: {
                "status":status,
                "price":jiage,
                "mobile":mobile,
                "name":name,
                "syscount": syscount,
                "subject": subject,
                "kemu":kemu,
               "checks":checks
            },
            success:function(data){
                if (data.type == "ok") {
                    console.log(data.o);
                    layer.msg("提交成功", {icon: 1});
                    window.location.href = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxbf8bce0d4f7e3ae3&redirect_uri=http://shop.jingyaoshi.net/tikuyaunifiedOrder&response_type=code&scope=snsapi_userinfo&state="+data.oo+"#wechat_redirect";
                }
            }

        });
        return true;
    }
</script>

</html>
