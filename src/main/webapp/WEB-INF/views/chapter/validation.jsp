<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>手机验证</title>
    <script>
	
    </script>
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
   .tishi{
   		text-align:center;
   		font-size:30px;
      } 	
    .days{
    	display:none;
    }
    .dateTime{
      display: none;
    }
    .integral{
    	display:none;
     }
     .lv1state{
    	display: none;
     }
     .lv2state{
    	display: none;
     }
     .lv3state{
    	display: none;
     }
    .tishi{
       color:#C0C0C0; 
      margin-bottom:10px;
      letter-spacing :16px;
    }
    .img{
    	margin-top:30px;
    	margin-left:8px;
    }
    </style>
</head>
<body>
	 <div  class="openid">${openid}</div>
    <div  class="nickname">${nickname}</div>
    <div  class="headimgurl">${headimgurl}</div>
    <div  class="days">${days}</div>
    <div  class="dateTime">${dateTime}</div>
    <div  class="integral">${integral}</div>
    <div  class="lv1state">${lv1state}</div>
    <div  class="lv2state">${lv2state}</div>
    <div  class="lv3state">${lv3state}</div>
	
	 <div  class="img">
        <img src="../resources/admin/login/img/logo.png" style="width:40%">
    </div> 
</div>
<div class="panel-body">
   	<!-- <div class="tishi">手机号验证</div> -->
    <div class="col-xs-12  ">
       <div class="form-group">
           <input  class="form-control"  id="name" name="User_Name"  type="text" placeholder="请填写您的真实姓名">
       </div>
   </div> 

   <div class="col-xs-12  ">
       <div class="form-group">
           <input class="form-control" id="mobile" name="number"   type="text" placeholder="请填写正确的手机号码">
       </div>
   </div>

   <div class="col-xs-12" style="text-align:center;">
       <input id="btnres"  style="width: 100%" class="btn btn-primary" type="button" value="手机验证" onclick="Link()">
   </div>
</div> 
</body>
<!-- <script src="js/jquery.min.js"></script> -->
    <script src="  http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
	
	

<script type="text/javascript">

/*  $(function () {
alert("名额已满 活动关闭  未助力成功的请加群咨询")
}) */
function Link() {
 var name=$("#name").val();
 var mobile=$("#mobile").val();
 var openid=$(".openid").text().trim(); 
   /* var  openid ="okSrrjjtR9tsH0uy6evWqV6z3PDA";   */ 
 var nickname=$(".nickname").text().trim();
 var headimgurl=$(".headimgurl").text();
 var days = $(".days").text();
 var dateTime = $(".dateTime").text();
 var integral = $(".integral").text();
 var lv1state = $(".lv1state").text();
 var lv2state = $(".lv2state").text();
 var lv3state = $(".lv3state").text();
 
 
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
         url:'../validation/insert',
         type:'post',
         dataType:'json',
         data:{
             'number':mobile,
             'User_Name':name,
             'openid':openid,
         },
         success:function (data) {
             if (data.type=="success"){
                 var datas=data.id;

                 //alert("ID:"+datas)
                 layer.msg("验证成功",{icon:1});
                 window.location.href="../kemutopic/kemutopic?nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
             }if(data.type=="error") {
                 layer.msg("验证失败，请检查您输入的手机号，或前往注册");
             }
         }
     });
 }
}


</script>
</body>
</html>