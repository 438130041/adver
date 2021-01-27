
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测一测</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="../resources/admin/css/huodongcss/bootstrap.min.css">
<%--    <link rel="stylesheet" href="css/shangcheng.css">--%>
    <link href="../resources/admin/css/huodongcss/master.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script  type="text/javascript"  src="../resources/admin/js/huodongjs/swiper.min.js"></script> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
</head>
<style>
.ids{
    display: none;
}
.middle-picture{
    margin-top: 3rem;
    margin-left: 0.5rem;
    width: 7.5rem;
    height: 7.5rem;
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
    padding-left: 10rem;
    color: #000;
    margin-top: -12rem;
    line-height: 6.5;
    font-size: 20;
    font-family: "宋体";
}
.aaa{
    padding-left: 10rem;
    margin-top: -5rem;
}
.xxx{
    padding-left: 25rem;
    margin-top: -11rem;
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
    .aa{
        width: 100%;
        height:100%;
    }
    .middle{
        width: 100%;
        height:45%;
        margin-top: 11rem;
    }
    .ee{
        margin-top: 3rem;
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
<div class="panel-heading">

    <div class="middle-picture">
        <img src="<%-- "${headimgurl} --%>../resources/admin/login/img/toxian.jpg" alt="">
    </div>
    <div class="sss">
        <%-- ${nickname} --%>我们
    </div>
    <div class="aaa"><h5>测一测</h5></div>
    <div class="xxx">
        <img src="../resources/admin/login/huodongimg/xx.png" style=" width: 100%" >
    </div>
    <div class="middle">
        <img src="../resources/admin/login/huodongimg/tt.png" alt="" style="width: 100%;height: 100%">

    </div>

    <div style="padding-left:25px;" class="qq">
        <span>您目前从事的行业？</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhiji" id="hangye" value="医药行业">医药行业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhiji" id="hangye1" value="其他行业">其他行业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhiji" id="hangye2" value="在家待业">在家待业
        </label>
    </div>

<%--    <div style="padding-left:25px;" class="qq">--%>
<%--        <span>您目前所在哪个年龄段？</span>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="age" id="age1" value="22岁以下"> 22岁以下--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="age" id="age2" value="22-28岁">22-28岁--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="age" id="age3" value="29-35岁">29-35岁--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="age" id="age4" value="35岁以上">35岁以上--%>
<%--        </label>--%>
<%--    </div>--%>



<%--    <div style="padding-left:25px;" class="qq1">--%>
<%--        <span>您目前的职级是？</span>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="zhiji" id="zhiji1" value="药店店员"> 药店店员--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="zhiji" id="zhiji2" value="药店店长">药店店长--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="zhiji" id="zhiji3" value="药店质量负责人">药店质量负责人--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="zhiji" id="zhiji4" value="其他岗位">其他岗位--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="zhiji" id="zhiji5" value="在家待业">在家待业--%>
<%--        </label>--%>
<%--    </div>--%>


    <div style="padding-left:25px;" class="qq2" id="yaoqiu">
        <span>您是否知道即将实施的药店分类级别管理,要求所有从业人员全部要求有专业学历？</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="yaoqiu" id="yaoqiu1" value="是"> 是
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="yaoqiu" id="yaoqiu2" value="否">否
        </label>
    </div>

    <div id="yaoqiur" class="ee">
        <img src="../resources/admin/login/huodongimg/ww.png" width="100%">
    </div>

    <div style="padding-left:25px;"  class="qq3" id="wending">
        <span>现在的工作,你是否觉得稳定？</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="wending" id="wending1" value="是,挺安稳的">是,挺安稳的
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="wending" id="wending2" value="否,不够开销"> 否,不够开销
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="wending" id="wending3" value="还想努力升职加薪">还想努力升职加薪
        </label>
    </div>


    <div style="padding-left:25px;"  class="qq4" id="mudi">
        <span>您提升学历的目的是？</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="mudi" id="mudi1" value="升职或转岗工作需要"> 升职或转岗工作需要
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="mudi" id="mudi2" value="目光长远,为之后做准备"> 目光长远,为之后做准备
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="mudi" id="mudi3" value="考证件需要专业学历"> 考证件需要专业学历
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="mudi" id="mudi4" value="适应药店专业化要求"> 适应药店专业化要求
        </label>
    </div>

    <div style="padding-left:25px;"  class="qq5" id="tisheng">
        <span>您是否愿意提升自己的学历？</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="manyi" id="manyi1" value="是的,我愿意"> 是的,我愿意
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="manyi" id="manyi2" value="不,我认为没有必要">不,我认为没有必要
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="manyi" id="manyi3" value="我已经报名,并在就读中">我已经报名,并在就读中
        </label>
    </div>


    <div style="padding-left:25px;"  class="qq2" id="zuigao">
        <span>您目前取得的最高学历</span>

        <select id="sel">
            <option value="请选择">请选择</option>
            <option value="初中">初中</option>
            <option value="高中">高中</option>
            <option value="中专">中专</option>
            <option value="大专">大专</option>
            <option value="本科">本科</option>
        </select>
    </div>

    <div style="padding-left:25px;"  class="qq2" id="benke">
        <span>您的本科学历是？</span>

        <select id="selben">
            <option value="请选择">请选择</option>
            <option value="全日制学历">全日制学历</option>
            <option value="非全日制学历">非全日制学历</option>
        </select>
    </div>

    <div style="padding-left:25px;"  class="qq5" id="benkezhuanye">
        <span>请选择您的本科专业</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="benkezhuanye"  value="药学或中药学专业"> 药学或中药学专业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="benkezhuanye"  value="相关专业">相关专业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="benkezhuanye"  value="其他非专业">其他非专业
        </label>
    </div>

    <div style="padding-left:25px;"  class="qq5" id="timebenke">
        <span>本科毕业时间?</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="biyetimes3"  value="1985~2017年之间毕业">1985~2017年之间毕业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="biyetimes3"  value="2018年毕业">2018年毕业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="biyetimes3"  value="2019~2020年之间毕业">2019~2020年之间毕业
        </label>
    </div>


    <div style="padding-left:25px;"  class="qq2" id="dazhuan">
        <span>您的大专学历是？</span>

        <select id="sels">
            <option value="请选择">请选择</option>
            <option value="全日制学历">全日制学历</option>
            <option value="非全日制学历">非全日制学历</option>
        </select>
    </div>

    <div style="padding-left:25px;"  class="qq5" id="zhuanda">
        <span>请选择您的大专专业？</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhuanda"  value="药学或中药学专业"> 药学或中药学专业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhuanda"  value="相关专业">相关专业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhuanda"  value="其他非专业">其他非专业
        </label>
    </div>

    <div style="padding-left:25px;"  class="qq5" id="timedazhuan">
        <span>大专毕业时间?</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="biyetimes1"  value="1985~2015年之间毕业">1985~2015年之间毕业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="biyetimes1"  value="2016年毕业">2016年毕业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="biyetimes1"  value="2017~2020年之间毕业">2017~2020年之间毕业
        </label>
    </div>



    <div style="padding-left:25px;"  class="qq5" id="zhuanyes">
        <span>请选择您的专业</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhuanye"  value="药学或中药学专业"> 药学或中药学专业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhuanye"  value="相关专业">相关专业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zhuanye"  value="其他非专业">其他非专业
        </label>
    </div>


    <div style="padding-left:25px;"  class="qq5" id="time">
        <span>毕业时间?</span>
        <br>
        <label class="radio-inline">
            <input type="radio" name="biyetime"  value="1985~2013年之间毕业">1985~2013年之间毕业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="biyetime"  value="2014~2020年之间毕业">2014~2020年之间毕业
        </label>
        <br>
    </div>

<%--    <div style="padding-left:25px;"  class="qq5" id="times">--%>
<%--        <span>什么时候毕业?</span>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="biyetimes"  value="1985~2012年之间毕业">1985~2012年之间毕业--%>
<%--        </label>--%>
<%--        <br>--%>
<%--        <label class="radio-inline">--%>
<%--            <input type="radio" name="biyetimes"  value="2013~2020年之间毕业">2013~2020年之间毕业--%>
<%--        </label>--%>
<%--        <br>--%>
<%--    </div>--%>


<br>
    <div class="map-input" id="fuli">
       <h5>你需要的福利是？</h5>
        <span>提示：学历优惠/兼职推广提成/执业药师课程/小病医生课程/慢病管理课程</span>
         <br>
        <input type="text"  name="age" id="fulis">
    </div>
    <br>

    <div class="map-input" id="xinxi">
        <ul>
            <li><span>姓名</span><input type="text"  name="name" id="name"></li>
            <li><span>手机号码</span><input type="text" name="mobile"  id="mobile"></li>
        </ul>
    </div>


<div class="panel-body">
    <div class="col-xs-12" style="text-align:center;">
        <input id="btnres"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="查看结果" onclick="Lifor()">
    </div>

</div>
</div>
</body>
<script type="text/javascript"></script>
<script>
   var choo="";
   var zhongzhuan="";
   var dazhuan="";
   var ben="";
   var dazhuanxue="";
   var benkexue="";
   var zhijis="";
        //微信分享
        $(function () {
            $("#yaoqiu").hide();//是否知道
            $("#wending").hide();//对自己工作是否满意
            $("#mudi").hide();//提升学历的目的
            $("#tisheng").hide();//是否愿意提升自己的学历
            $("#zuigao").hide();//目前取得的最高学历
            $("#fuli").hide();//需要的福利
             $("#xinxi").hide();
            $("#yaoqiur").hide();
            $("#zhuanyes").hide();
            $("#time").hide();
           // $("#times").hide();
            $("#dazhuan").hide();
            $("#timedazhuan").hide();
           // $("#timeda").hide();
            $("#zhuanda").hide();
            $("#benke").hide(); //本科学历
            $("#benkezhuanye").hide();//本科专业
            $("#timebenke").hide();
            //$("#timebenkes").hide();
            //选择最高学历下拉框
            $('#sel').on("change",function(){
                var ss=$('#sel option:selected').val();
                choo=ss;
                if (ss==="请选择"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                   // $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").hide();
                    $("#xinxi").hide();
                    $("#zhuanyes").hide();
                    $("#time").hide();
                    //$("#times").hide();
                }
                if (ss==="初中"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").hide();
                    $("#xinxi").show();
                    $("#zhuanyes").hide();
                    $("#time").hide();
                    $("#times").hide();
                }
                if ($('#sel option:selected').val() ==="高中"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").hide();
                    $("#xinxi").show();
                    $("#zhuanyes").hide();
                    $("#time").hide();
                    $("#times").hide();
                }
                if ($('#sel option:selected').val() ==="中专"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").hide();
                    $("#zhuanyes").show();
                    $("#xinxi").hide();
                    $("#time").hide();
                    $("#times").hide();
                }
                if ($('#sel option:selected').val() ==="大专"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").show();
                    $("#zhuanyes").hide();
                    $("#time").hide();
                    $("#times").hide();
                    $("#xinxi").hide();
                }
                if ($('#sel option:selected').val() ==="本科"){
                    $("#benke").show(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").hide();
                    $("#zhuanyes").hide();
                    $("#time").hide();
                    $("#times").hide();
                    $("#xinxi").hide();
                }
            })

        $("input[name='yaoqiu']").change(function () {
                   if($('input[name="yaoqiu"]:checked').val()==="否"){
                             $("#yaoqiur").show();
                   }
                   else {
                       $("#yaoqiur").hide();
                   }
        })
            //中专相关专业单选按钮
            $("input[name='zhuanye']").change(function () {
               var sv=$('input[name="zhuanye"]:checked').val();
                zhongzhuan=sv;
                if($('input[name="zhuanye"]:checked').val()==="药学或中药学专业"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#time").show();
                    $("#times").hide();
                    $("#xinxi").show();
                }
              else  if($('input[name="zhuanye"]:checked').val()==="相关专业"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#time").show();
                    $("#times").hide();
                    $("#xinxi").show();
                }
                else {
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#zhuanda").hide();
                    $("#dazhuan").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#time").hide();
                    $("#times").hide();
                    $("#xinxi").show();
                }
            })
  //大专下拉框
            $('#sels').on("change",function() {
                var sss = $('#sels option:selected').val();
                dazhuanxue=sss;
                if (sss === "请选择") {
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#xinxi").hide();
                    $("#zhuanda").hide();
                    $("#time").hide();
                    $("#times").hide();
                }
                else if(sss==="全日制学历"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#zhuanda").show();
                    $("#time").hide();
                    $("#times").hide();
                    $("#xinxi").hide();
                }
                else if(sss==="非全日制学历"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#zhuanda").show();
                    $("#time").hide();
                    $("#times").hide();
                    $("#xinxi").hide();
                }
            });

         //大专单选按钮
            $("input[name='zhuanda']").change(function () {
                var dd=$('input[name="zhuanda"]:checked').val();
                dazhuan=dd;
                if($('input[name="zhuanda"]:checked').val()==="药学或中药学专业"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").show();
                    $("#timeda").hide();
                    $("#xinxi").show();
                }
                else  if($('input[name="zhuanda"]:checked').val()==="相关专业"){
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").show();
                    $("#timeda").hide();
                    $("#xinxi").show();
                }
                else {
                    $("#benke").hide(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#xinxi").show();
                }
            })
     //本科学历下拉框
            $('#selben').on("change",function() {
                var s = $('#selben option:selected').val();
                benkexue=s;
                if (s === "请选择") {

                    $("#benke").show(); //本科学历
                    $("#benkezhuanye").hide();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#xinxi").hide();
                    $("#zhuanda").hide();
                    $("#time").hide();
                    $("#times").hide();
                }
                else if(s==="全日制学历"){

                    $("#benke").show(); //本科学历
                    $("#benkezhuanye").show();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#zhuanda").hide();
                    $("#time").hide();
                    $("#times").hide();
                    $("#xinxi").hide();
                }
                else if(s==="非全日制学历"){
                    $("#benke").show(); //本科学历
                    $("#benkezhuanye").show();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#zhuanda").hide();
                    $("#time").hide();
                    $("#times").hide();
                    $("#xinxi").hide();
                }
            });
            //本科专业单选按钮
            $("input[name='benkezhuanye']").change(function () {
                var ll=$('input[name="benkezhuanye"]:checked').val();
                ben=ll;
                if($('input[name="benkezhuanye"]:checked').val()==="药学或中药学专业"){
                    $("#zhuanda").hide();
                    $("#benke").show(); //本科学历
                    $("#benkezhuanye").show();//本科专业
                    $("#timebenke").show();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#xinxi").show();
                }
                else  if($('input[name="benkezhuanye"]:checked').val()==="相关专业"){
                    $("#zhuanda").hide();
                    $("#benke").show(); //本科学历
                    $("#benkezhuanye").show();//本科专业
                    $("#timebenke").show();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#xinxi").show();
                }
                else {
                    $("#zhuanda").hide();
                    $("#benke").show(); //本科学历
                    $("#benkezhuanye").show();//本科专业
                    $("#timebenke").hide();
                    $("#timebenkes").hide();
                    $("#timedazhuan").hide();
                    $("#timeda").hide();
                    $("#xinxi").show();
                }
            })

        });
      //所属行业
   $("input[name='zhiji']").change(function () {
       var hangye=$('input[name="zhiji"]:checked').val();
       zhijis=hangye;
       if($('input[name="zhiji"]:checked').val()==="医药行业"){
           $("#yaoqiu").show();//是否知道
           $("#wending").show();//对自己工作是否满意
           $("#mudi").show();//提升学历的目的
           $("#tisheng").show();//是否愿意提升自己的学历
           $("#zuigao").show();//目前取得的最高学历
           $("#fuli").hide();//需要的福利
           $("#xinxi").hide();
           $("#yaoqiur").hide();
           $("#zhuanyes").hide();
           $("#time").hide();
           // $("#times").hide();
           $("#dazhuan").hide();
           $("#timedazhuan").hide();
           // $("#timeda").hide();
           $("#zhuanda").hide();
           $("#benke").hide(); //本科学历
           $("#benkezhuanye").hide();//本科专业
           $("#timebenke").hide();
       }
       else  if($('input[name="benkezhuanye"]:checked').val()==="其他专业"){
           $("#yaoqiu").show();//是否知道
           $("#wending").show();//对自己工作是否满意
           $("#mudi").show();//提升学历的目的
           $("#tisheng").show();//是否愿意提升自己的学历
           $("#zuigao").show();//目前取得的最高学历
           $("#fuli").hide();//需要的福利
           $("#xinxi").hide();
           $("#yaoqiur").hide();
           $("#zhuanyes").hide();
           $("#time").hide();
           // $("#times").hide();
           $("#dazhuan").hide();
           $("#timedazhuan").hide();
           // $("#timeda").hide();
           $("#zhuanda").hide();
           $("#benke").hide(); //本科学历
           $("#benkezhuanye").hide();//本科专业
           $("#timebenke").hide();
       }
       else {
           $("#zhuanda").hide();
           $("#benke").show(); //本科学历
           $("#benkezhuanye").show();//本科专业
           $("#timebenke").hide();
           $("#timebenkes").hide();
           $("#timedazhuan").hide();
           $("#timeda").hide();
           $("#xinxi").show();
       }
   });

        function Lifor() {
            var mudi=$('input[name="mudi"]:checked').val();//获取提升学历目的单选按钮的值
            var fulis=$("#fulis").val();//获取年龄单选按钮的值
            var zhiji=$('input[name="zhiji"]:checked').val();//获取年龄单选按钮的值
            var yaoqiu=$('input[name="yaoqiu"]:checked').val();//获取年龄单选按钮的值
            var wending=$('input[name="wending"]:checked').val();

             var manyi=$('input[name="manyi"]:checked').val();
             var biyetime=$('input[name="biyetime"]:checked').val();//获取中专毕业时间按钮的值
            var biyetimes1=$('input[name="biyetimes1"]:checked').val();//获取大专毕业时间按钮的值
            var biyetimes3=$('input[name="biyetimes3"]:checked').val();
            var xueli = $("select").val();//被选项目的值
            var name="无姓名";
            var mobile="无电话";
            var ids=$(".ids").text().trim();
            var nickname=$(".nickname").text().trim();
            var headimgurl=$(".headimgurl").text().trim();
            var phoneR = /(^1[3|4|5|7|8|9]\d{9}$)|(^09\d{8}$)/
            // if(age==""||age==null){
            //    alert("请选择所处年龄段");
            //     return false;
            // }

            // if(zhiji==""||zhiji==null){
            //     alert("请选择所属行业");
            //     return false;
            // }
            // if(yaoqiu==""||yaoqiu==null){
            //     alert("请选择是否");
            //     return false;
            // }
            // if(wending==""||wending==null){
            //     alert("请选择目前工作是否稳定");
            //     return false;
            // }
            // if(mudi==""||mudi==null){
            //     alert("请选择提升学历的目的");
            //     return false;
            // }
            // if(manyi==""||manyi==null){
            //     alert("请选择是否愿意提升学历");
            //     return false;
            // }
            // if(choo==""||choo==null){
            //     alert("请选择您的最高学历");
            //     return false;
            // }

            if(choo==="中专"){
                if(zhongzhuan==""||zhongzhuan==null){
                    alert("请选择您的专业");
                    return false;
                }
              //   else if(zhongzhuan==="药学或中药学专业"||zhongzhuan==="相关专业"){
              //       window.location.href="zuxuelis?ids="+ids+"&mudi="+mudi+"&age="+age+"&zhiji="+zhiji+"&wending="+wending+"&manyi="+manyi+"&choo="+choo+"&name="+name+
              //           "&mobile="+mobile+"&zhongzhuan="+zhongzhuan+"&dazhuanxue="+dazhuanxue+"&dazhuan="+dazhuan+"&benkexue="+benkexue+"&ben="+ben+"&biyetime="+biyetime+
              //           "&biyetimes1="+biyetimes1+"&biyetimes3="+biyetimes3+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
              //       console.log('==');
              //       return  false;
              //   }
              // else if (zhongzhuan==="其他非专业"){
              //       window.location.href="wenjuan?ids="+ids+"&mudi="+mudi+"&age="+age+"&zhiji="+zhiji+"&wending="+wending+"&manyi="+manyi+"&choo="+choo+"&name="+name+
              //           "&mobile="+mobile+"&zhongzhuan="+zhongzhuan+"&dazhuanxue="+dazhuanxue+"&dazhuan="+dazhuan+"&benkexue="+benkexue+"&ben="+ben+"&biyetime="+biyetime+
              //           "&biyetimes1="+biyetimes1+"&biyetimes3="+biyetimes3+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
              //       return  false;
              //
              //   }
            else {
                    console.log('==');
                }
            }

            if(choo==="大专"){
                if (dazhuanxue==""||dazhuanxue==null) {
                    alert("请选择您的大专学历层次");
                    return false;
                }
              else  if(dazhuan==""||dazhuan==null){
                    alert("请选择您的大专专业");
                    return false;
                }
              else if(dazhuan==="药学或中药学专业"||dazhuan==="相关专业"){
                    window.location.href="zuxiti?ids="+ids+"&mudi="+mudi+"&age="+age+"&zhiji="+zhiji+"&wending="+wending+"&manyi="+manyi+"&choo="+choo+"&name="+name+
                        "&mobile="+mobile+"&zhongzhuan="+zhongzhuan+"&dazhuanxue="+dazhuanxue+"&dazhuan="+dazhuan+"&benkexue="+benkexue+"&ben="+ben+"&biyetime="+biyetime+
                        "&biyetimes1="+biyetimes1+"&biyetimes3="+biyetimes3+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
                    return false;
                }
              else if (dazhuan==="其他非专业"){
                    window.location.href="zuxuelis?ids="+ids+"&mudi="+mudi+"&age="+age+"&zhiji="+zhiji+"&wending="+wending+"&manyi="+manyi+"&choo="+choo+"&name="+name+
                        "&mobile="+mobile+"&zhongzhuan="+zhongzhuan+"&dazhuanxue="+dazhuanxue+"&dazhuan="+dazhuan+"&benkexue="+benkexue+"&ben="+ben+"&biyetime="+biyetime+
                        "&biyetimes1="+biyetimes1+"&biyetimes3="+biyetimes3+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
                  console.log('77777777777777');
                    return false;
                }
              else {
                    console.log('77777777777777')
                }
            }

            if(choo==="本科"){
                if (benkexue==""||benkexue==null) {
                    alert("请选择您的本科学历层次");
                    return false;
                }
              else  if(ben==""||ben==null){
                    alert("请选择您的本科专业");
                    return false;
                }
                else if(ben==="药学或中药学专业"||ben==="相关专业"){
                    window.location.href="zuxiti?ids="+ids+"&mudi="+mudi+"&age="+age+"&zhiji="+zhiji+"&wending="+wending+"&manyi="+manyi+"&choo="+choo+"&name="+name+
                        "&mobile="+mobile+"&zhongzhuan="+zhongzhuan+"&dazhuanxue="+dazhuanxue+"&dazhuan="+dazhuan+"&benkexue="+benkexue+"&ben="+ben+"&biyetime="+biyetime+
                        "&biyetimes1="+biyetimes1+"&biyetimes3="+biyetimes3+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
                    console.log('77777777777777');
                    return false;
                }
              else if(ben==="其他非专业"){
                    window.location.href="zuxuelis?ids="+ids+"&mudi="+mudi+"&age="+age+"&zhiji="+zhiji+"&wending="+wending+"&manyi="+manyi+"&choo="+choo+"&name="+name+
                        "&mobile="+mobile+"&zhongzhuan="+zhongzhuan+"&dazhuanxue="+dazhuanxue+"&dazhuan="+dazhuan+"&benkexue="+benkexue+"&ben="+ben+"&biyetime="+biyetime+
                        "&biyetimes1="+biyetimes1+"&biyetimes3="+biyetimes3+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
                    console.log('77777777777777');
                    return false;
                }
              else {
                    console.log('77777777777777');
                }
            }


            if(choo==="初中"||choo==="高中"||choo==="中专"){
                window.location.href="wenjuan?ids="+ids+"&mudi="+mudi+"&age="+age+"&zhiji="+zhiji+"&wending="+wending+"&manyi="+manyi+"&choo="+choo+"&name="+name+
                    "&mobile="+mobile+"&zhongzhuan="+zhongzhuan+"&dazhuanxue="+dazhuanxue+"&dazhuan="+dazhuan+"&benkexue="+benkexue+"&ben="+ben+"&biyetime="+biyetime+
                    "&biyetimes1="+biyetimes1+"&biyetimes3="+biyetimes3+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
                return  false;
            }

        }





</script>
</html>
