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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://static.runoob.com/assets/jquery/2.0.3/jquery.min.js"></script>
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</head><!-- 第一个页面 -->
<style>
    .openid{
        display: none;
    }
    .nickname{
        display: none;
    }
    .headimgurl{
        display: none;
    }
</style>
<body>
<div class="openid">${openid}</div>
<div class="nickname">${nickname}</div>
<div class="headimgurl">${headimgurl}</div>
<div class="panel-heading">
    <div>
        <img src="../resources/admin/login/huodongimg/qqw.jpg" style="width: 100%">
    </div>
</div>
<div class="panel-body">

    <div class="col-xs-12  ">
        <div class="form-group">
            <input  class="form-control"  id="name" name="name"  type="text" placeholder="姓名">
        </div>
    </div>

    <div class="col-xs-12  ">
        <div class="form-group">
            <input class="form-control" id="mobile" name="mobile"   type="text" placeholder="手机">
        </div>
    </div>

    <div class="col-xs-12" style="text-align:center;">
        <input id="btnres"  style="width: 100%" class="btn btn-primary" type="button" value="成为推广人" onclick="Linkfor()">
    </div>

</div>
</body>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<script>
   
	$(function(){
		var  openid = $(".openid").text();
		var  nickname = $(".nickname").text();
		var  headimgurl = $(".headimgurl").text();
		$.ajax({
            url:'../xuelituijianren/chaxuen',
            type:'post',
            dataType:'json',
            data:{
                'openid':openid,
                "nickname":nickname,
                "headimgurl":headimgurl
            },
            success:function (data) {
                if (data.type == "success"){
                	/* alert("查询"); */
                    //alert("ID:"+datas)
                    layer.msg("您已注册",{icon:1}); 
                    window.location.href="../xuelituijianren/zufenxiang?openid="+openid+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
                }
            }
        });
		
		
	}) 

   function Linkfor() {
        var name=$("#name").val();
        var headimgurl=$(".headimgurl").text().trim();
        var mobile=$("#mobile").val();
        var openid=$(".openid").text().trim();
        var nickname=$(".nickname").text().trim();
        var mobileR = /(^1[3|4|5|6|7|8|9]\d{9}$)|(^09\d{8}$)/;
        if(name==null||name==""){
            layer.msg("请输入姓名",{icon:3})
            return false;
        }
        else  if(mobile==""||mobile==null){
            layer.msg("请输入手机号",{icon:3})
            return false;
        }
        else if (!mobileR.test(mobile)) {
            layer.msg("手机号码格式有误",{icon:3});
            return false;
        }
        else {
            $.ajax({
                url:'../xuelituijianren/xuelituijianren',
                type:'post',
                dataType:'json',
                data:{
                    'StudentsName':name,
                    'number':mobile,
                    'openid':openid,
                    "nickname":nickname,
                    "headimgurl":headimgurl
                },
                success:function (data) {
                    if (data.type == "success"){
                        //alert("ID:"+datas)
                        /* alert("成功"); */
                         layer.msg("提交成功",{icon:1}); 
                        window.location.href="../xuelituijianren/zufenxiang?openid="+openid+"&nickname="+nickname+"&headimgurl="+headimgurl+"";
                    }if(data.type == "error") {
                        layer.msg("您已登录过");
                    }
                }
            });
        }
    }
</script>
</html>
