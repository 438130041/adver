
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>请填写开课信息,填完提交开课</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="js/swiper.min.js"></script>
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
    .openid{
        display: none;
    }
.inpt,.number,.ant-radio-wrapper,.ant-form-item-label,.label-item{
    margin-top: .3rem;
    padding-left: 0.3rem;
}
.names{
    font-size: .3rem;
    height: .6rem;
    line-height: .6rem;
    margin-bottom: .2rem;
}
.content-box{

    padding-bottom: 5rem;
}
body{
    background: #fdecda;;
}
.mm{
    font-size: .3rem;
    height: 3.5rem;


}
.font{
    width: 70%;
    height: 75%;
    font-size: 16px;
}
    .sels{
       width: 45%;
    }
    .iu{

    }
    .dd{
        color: red;
    }
    .code{
        display: none;
    }
</style>
<body>
<div class="openid">
    ${openid}
</div>

<div class="code">
    ${code}
</div>

<div class="content-box">
    <div class="iu"><img src="pt/rt.png" alt="" style="width: 100%"></div>

    <div style="padding-left:15px;"  class="qq5" id="isjysacount">
        <label class="dd">*</label><label>你是否已有晶药师学习账号？</label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="isyou"  value="是"> 是
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="isyou" value="否">否
        </label>

    </div>

    <div class="inpt" style="padding-left:15px;" id="jysacount">
        <label class="dd">*</label>  <label>你的晶药师学习账号</label>
        <div class="mm">
            <input type="text"  name="acount" id="acount" class="font">
        </div>
    </div>


    <div class="inpt" style="padding-left:15px;" id="hidename">
          <label class="dd">*</label>  <label>你的真实姓名</label>
        <div class="mm">
        <input type="text"  name="name" id="name" class="font">
        </div>
    </div>

    <div class="inpt" style="padding-left:15px;" id="hidemobile">
        <label class="dd">*</label><label id="phone">   </label>
        <div class="mm">
        <input type="text" name="mobile"  id="mobile" class="font">
        </div>
    </div>

    <div class="inpt" style="padding-left:15px;" id="hidedanwei">
        <label class="dd">*</label><label>工作单位</label>
       <div class="mm">
        <input type="text" name="danwei"  id="danwei" class="font">
       </div>
    </div>

    <div style="padding-left:15px;"  class="qq2" id="zuigao">
        <label class="dd">*</label><label>目前取得的最高学历</label>
        <select id="sel" class="sels">
            <option value="请选择">请选择</option>
            <option value="高中">高中</option>
            <option value="中专">中专</option>
            <option value="已有中专,大专正在读药学专业">已有中专,大专正在读药学专业</option>
            <option value="大专">大专</option>
            <option value="本科">本科</option>
        </select>
    </div>

    <div style="padding-left:15px;"  class="qq5" id="bigzhuanye">
        <label class="dd">*</label><label>取得的最高学历所读专业</label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zgzy" id="zgzy1" value="药学"> 药学
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zgzy" id="zgzy2" value="药学相关专业">药学相关专业
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="zgzy" id="zgzy3" value="其他非专业">其他非专业
        </label>
    </div>

    <div style="padding-left:15px;"  class="qq5" id="tisheng">
        <label class="dd">*</label><label>想要提升学历到大专/本科吗？</label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="manyi" id="manyi1" value="想要了解学历提升"> 想要了解学历提升
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="manyi" id="manyi2" value="不想提升学历">不想提升学历
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="manyi" id="manyi3" value="想要帮朋友了解学历">想要帮朋友了解学历
        </label>
    </div>




    <div style="padding-left:15px;"  class="qq2" id="zhiwu">
        <label class="dd">*</label><label>职务</label>
        <select id="sel1" class="sels">
            <option value="请选择">请选择</option>
            <option value="店长">店长</option>
            <option value="店员">店员</option>
            <option value="质量管理责任人">质量管理责任人</option>
            <option value="总部职能部门">总部职能部门</option>
            <option value="单体药店/诊所">单体药店/诊所</option>
            <option value="药厂/业务代表">药厂/业务代表</option>
            <option value="非医药行业/其他">非医药行业/其他</option>
        </select>
    </div>


    <div style="padding-left:15px;"  class="qq5" id="gongyizy">
        <label class="dd">*</label><label>选择公益课专业</label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="gongyizy" id="gongyizy1" value="中药学"> 中药学
        </label>
        <br>
        <label class="radio-inline">
            <input type="radio" name="gongyizy" id="gongyizy2" value="药学">药学
        </label>
    </div>


    <div class="qq5" id="kemu" style="padding-left: 15px">
        <label class="dd">*</label><label>选择公益课科目</label>
        <div class="name-radio" style="padding-left: 20px">
            <div class="checkbox"><input type="checkbox" class="check goods-check goodsCheck" name="checkbox" value="专业知识一" style="font-size: 18px">专业知识一</div>
            <div class="checkbox"><input type="checkbox" class="check goods-check goodsCheck" name="checkbox" value="专业知识二">专业知识二</div>
            <div class="checkbox"><input type="checkbox" class="check goods-check goodsCheck" name="checkbox" value="综合知识与技能">综合知识与技能</div>
            <div class="checkbox"><input type="checkbox" class="check goods-check goodsCheck" name="checkbox" value="药事管理与法规">药事管理与法规</div>
        </div>
    </div>






<div class="panel-body">
    <div class="col-xs-12" style="text-align:center;">
        <input id="btnres"  style="width: 100% ;height: 6%;font-size: 140%;border-radius: 50px;" class="btn btn-primary" type="button" value="前往立即开课" onclick="Lifor()">
    </div>

</div>
</div>
</body>
<script type="text/javascript"></script>
<script>
  var aocuntis="";
  var zuigaozy="";
    $(function () {
         $("#tisheng").hide(); //想要提升学历到大专/本科吗

        $("#zhiwu").hide();  //职务
        $("#gongyizy").hide(); //公益课专业
        $("#kemu").hide();//公益课科目
        $("#jysacount").hide(); //晶药师学习账号
        $("#hidename").hide();//姓名
        $("#hidemobile").hide();//手机号
        $("#hidedanwei").hide();//工作单位
        $("#zuigao").hide();//最高学历
        $("#bigzhuanye").hide();//最高学历所读专业


        var sel=$('#sel option:selected').val(); //目前取得的最高学历

         $("input[name='isyou']").change(function () {
             var isjysacount=$('input[name="isyou"]:checked').val();//是否有晶药师学习账号
             // alert(isjysacount);
            if (isjysacount === "是") {
                var acount=$("#acount").val();//晶药师学习账号
                $("#jysacount").show(); //晶药师学习账号
                $("#hidemobile").show();//手机号
                $("#hidename").show();//姓名
                $("#hidedanwei").show();//工作单位
                $("#zuigao").show();//最高学历
                $("#phone").html("你的手机(用来核实学习账号)");
                $("#tisheng").hide(); //想要提升学历到大专/本科吗
                $("#bigzhuanye").hide();//最高学历所读专业
                $("#zhiwu").hide();  //职务
                $("#gongyizy").hide(); //公益课专业
                $("#kemu").hide();//公益课科目

                // if (acount==null||acount==""){
                //     layer.msg("请输入晶药师学习账号",{icon:6});
                //     return false;
                // }
            }
            if (isjysacount === "否") {
                $("#jysacount").hide(); //晶药师学习账号
                $("#hidename").show();//姓名
                $("#hidemobile").show();//手机号
                $("#phone").html("你的手机(用作注册学习账号,请务必填写正确)");
                $("#hidedanwei").show();//工作单位
                $("#zuigao").show();//最高学历
                $("#tisheng").hide(); //想要提升学历到大专/本科吗
                $("#bigzhuanye").hide();//最高学历所读专业
                $("#zhiwu").hide();  //职务
                $("#gongyizy").hide(); //公益课专业
                $("#kemu").hide();//公益课科目
            }
         })

        $('#sel').on("change",function() {
            var sel=$('#sel option:selected').val(); //目前取得的最高学历
               if (sel==="请选择"){
                   $("#tisheng").hide(); //想要提升学历到大专/本科吗
                   $("#zhiwu").hide();  //职务
                   $("#gongyizy").hide(); //公益课专业
                   $("#kemu").hide();//公益课科目
                   $("#bigzhuanye").hide();//最高学历所读专业
               }

            if (sel==="高中"){
                $("#tisheng").show(); //想要提升学历到大专/本科吗
                $("#zhiwu").show();  //职务
                $("#gongyizy").show(); //公益课专业
                $("#kemu").show();//公益课科目
                $("#bigzhuanye").hide();//最高学历所读专业
            }

            if (sel==="中专"){
                $("#tisheng").show(); //想要提升学历到大专/本科吗
                $("#zhiwu").show();  //职务
                $("#gongyizy").show(); //公益课专业
                $("#kemu").show();//公益课科目
                $("#bigzhuanye").show();//最高学历所读专业
            }

            if (sel==="已有中专,大专正在读药学专业"){
                $("#tisheng").hide(); //想要提升学历到大专/本科吗
                $("#zhiwu").show();  //职务
                $("#gongyizy").show(); //公益课专业
                $("#kemu").show();//公益课科目
                $("#bigzhuanye").hide();//最高学历所读专业
            }

            if (sel==="大专"||sel==="本科"){
                $("#tisheng").hide(); //想要提升学历到大专/本科吗
                $("#zhiwu").hide();  //职务
                $("#gongyizy").hide(); //公益课专业
                $("#kemu").hide();//公益课科目
                $("#bigzhuanye").show();//最高学历所读专业
                $("input[name='zgzy']").change(function () {
                    var zgzy=$('input[name="zgzy"]:checked').val();//最高学历所读专业
                    // alert(zgzy);
                     if (zgzy==="药学"||zgzy==="药学相关专业"){
                        $("#zhiwu").show();  //职务
                        $("#gongyizy").show(); //公益课专业
                        $("#kemu").show();//公益课科目
                    }

                    if (zgzy==="其他非专业"){
                        $("#tisheng").show();//想要提升学历到大专/本科吗
                        $("#zhiwu").show();  //职务
                        $("#gongyizy").show(); //公益课专业
                        $("#kemu").show();//公益课科目
                    }
                });
            }
        });

   });
        function Lifor() {

            var acount=$("#acount").val();//晶药师学习账号
            var name=$("#name").val();//姓名
            var mobile=$("#mobile").val();//手机号
            var danwei=$("#danwei").val();//工作单位
            var sel=$('#sel option:selected').val(); //目前取得的最高学历
            var isjysacount=$('input[name="isyou"]:checked').val();//是否有晶药师学习账号
            var tsxueli=$('input[name="manyi"]:checked').val();//想要提升学历到大专/本科吗

            var zhiwu=$('#sel1 option:selected').val();//职务
            var zgzy=$('input[name="zgzy"]:checked').val();//最高学历所读专业
            var gongyizy=$('input[name="gongyizy"]:checked').val();//选择公益课专业
            var kemu="";
            var openid=$(".openid").text().trim();
            var code=$(".code").text().trim();
            var mobileR = /(^1[3|4|5|7|8|9]\d{9}$)|(^09\d{8}$)/

            $("input:checkbox[name='checkbox']:checked").each(function () {
                kemu+=$(this).val()+",";
            });

            if (isjysacount==null||isjysacount==""){
                layer.msg("请选择是否有晶药师学习账号",{icon:6});
                return false;
            }
            if (isjysacount==="是"){
                // alert(isjysacount);
                   if (acount==null||acount==""){
                       layer.msg("请输入晶药师学习账号",{icon:6});
                       return false;
                   }
            }

            if (name==null||name==""){
                layer.msg("请输入姓名",{icon:6});
                return false;
            }
            if(mobile==""||mobile==null){
                layer.msg("请输入手机号",{icon:6})
                return false;
            }
            if (!mobileR.test(mobile)) {
                layer.msg("手机号码格式有误",{icon:6});
                return false;
            }
            if(danwei==""||danwei==null){
                layer.msg("请输入工作单位",{icon:6});
                return false;
            }
            if (sel==="请选择") {
                layer.msg("请选择目前取得的最高学历",{icon:6});
                return false;
            }

            if (sel==="高中") {
                // alert(sel);

                if(tsxueli==""||tsxueli==null){
                    layer.msg("请选择是否想要提升学历",{icon:6});
                    return false;
                }



            }

            if (sel==="中专") {
                // alert(sel);
                if (zgzy == null || zgzy == "") {
                    layer.msg("请选择最高学历所读专业", {icon: 6});
                    return false;
                }
                if(tsxueli==""||tsxueli==null){
                    layer.msg("请选择是否想要提升学历",{icon:6});
                    return false;
                }
            }

            if (sel==="大专"||sel==="本科") {
                // alert(sel);
                if (zgzy == null || zgzy == "") {
                    layer.msg("请选择最高学历所读专业", {icon: 6});
                    return false;
                }
                if(zgzy==="其他非专业"){
                    if(tsxueli==""||tsxueli==null){
                        layer.msg("请选择是否想要提升学历",{icon:6});
                        return false;
                    }
                }
            }

            if (zhiwu==="请选择") {
                layer.msg("请选择职务",{icon:6});
                return false;
            }
            if(gongyizy==""||gongyizy==null){
                layer.msg("请选择公益课专业",{icon:6});
                return false;
            }
            if(kemu==""||kemu==null){
                layer.msg("请选择公益课科目",{icon:6});
                return false;
            }

            $.ajax({
                type:'post',
                dataType:'json',
                url:'sumbitwenjuan',
                data: {
                    "acount": acount,
                    "name": name,
                    "mobile": mobile,
                    "danwei": danwei,
                    "sel": sel,
                    "isjysacount": isjysacount,
                    "tsxueli": tsxueli,
                    "zhiwu": zhiwu,
                    "zgzy": zgzy,
                    "gongyizy": gongyizy,
                    "kemu": kemu,
                    "openid": openid,
                    "code": code
                },success:function (data) {
                       if (data.type==="yes"){
                           layer.msg("提交成功",{icon:6});
                            window.location.href="lastbst?code="+code;
                       }
                    if (data.type==="had"){
                        layer.msg("您已提交过信息,无需重复提交",{icon:6});
                        window.location.href="lastbst?code="+code;
                    }


                },error:function () {
                    layer.msg("系统错误",{icon:6});
                }
            })
        }





</script>
</html>
