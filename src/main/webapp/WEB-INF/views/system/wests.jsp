<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>每日一练</title>
    <style>
     *{
          margin: 0;
          padding: 0;
      }
     .personal {
         position: relative;
         width: 80%;
         margin: 30px auto;
     }
      .picture{
         width: 70px;
         height: 70px;
         border-radius: 50%;
         overflow: hidden;
     }
    .picture img{
        width: 70px;
        height: 70px;
    }
    .information{
        position: absolute;
        top: 13px;
        left: 100px;
    }
    .nickname{
        display: block;
        font-family: Times, TimesNR, 'New Century Schoolbook',
     Georgia, 'New York', serif;
        font-weight: 900;
        white-space:nowrap;
        font-size: 20px;
    }
    .archives{
        display: inline-block;
        margin-top: 5px;
    }
    .choice{
        width: 80%;
        height: 300px;
        margin: 0 auto;
    }
    .choice p{
        margin-bottom: 20px;
        margin-left: 3px;
        font-family:Arial, Helvetica, sans-serif;
        font-weight: 900;
        font-size: 18px;
    }
    .course a{
        display: block;
        border: 1px solid rgb(100, 162, 212);
        border-radius: 20px;
        padding: 10px 15px;
        margin-top:5px;
        text-decoration:none;
    }
    .btn{     
        position: absolute;
        bottom: 90px;
        left: 50%;
        margin-left: -40%;
        width: 80%;
        height: 40px;
        text-align:center;
       	color: rgba(0,0,0,0.1);
        line-height: 27px;
       /*  color: #fff; */
       /*  background-color: tomato;  */
        border-radius: 10px;  
        letter-spacing: 5px;
        
    }
    .btn a{
    		 text-align:center;
    		 text-decoration:none;
    		 color:	#F0FFFF;
    	}
    	.openid{
         	  display: none;
         	}
        .headimgurl{
              display: none;
            }
        .days{
        	display: none;
         }
        .dateTime{
            display: none;
          }
        .integral{
            display: none;
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
    </style>
</head>
<body>
     <div class="openid">${openid}</div>
	 <div class="headimgurl">${headimgurl}</div>
	 <div  class="days">${days}</div>
	 <div  class="integral">${integral}</div><!-- 累计积分 -->
	 <div  class="dateTime">${dateTime}</div>
	 <div  class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
	<div  class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
	<div  class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
    <div class="personal">
        <div class="picture"><!-- 将div设置为圆形 -->
            <a href="#"><img src=""  id="img"></a>
        </div>
        <div class="information">
            <span class="nickname">昵称：<span class="nicknames">${nickname}</span></span>
            <span class="archives">设置您的档案</span>
        </div>
    </div>
    <div>
        <div class="choice">
            <p>选择科目：</p>
            <div class="course">
            	<div ><a  class="fg"  id="FG">药事管理与法规</a></div>
            	<div ><a  class="zy"  id="ZY">药学专业知识一</a></div>
            	<div ><a  class="ze"  id="ZE">药学专业知识二</a></div>
            	<div ><a  class="zh"  id="ZH">药学综合知识与技能</a></div> 
         </div>
        </div>
    </div>

     <div  id="btn" class="btn btn-warning  col-xs-6">
     		<a  href=""  id="jump">
     			<div>开始练习</div>
     		</a>
     </div>
     
  <!-- js -->
  <script type="text/javascript">
 	 $(function () {
      		QueInIt();
      		
  		});
 	 	
 	 
 	var headimgurl = $(".headimgurl").text();//用户微信头像
	 var openid = $(".openid").text();//用户微信id
	 var nickname = $(".nicknames").text();//用户微信名称
	 var days = $(".days").text();//连续登录天数
	 var dateTime = $(".dateTime").text();//当前登录时间
	 var integral = $(".integral").text();
	 var lv1state  = $(".lv1state").text();//礼物领取状态
	 var lv2state  = $(".lv2state").text();//礼物领取状态
	 var lv3state  = $(".lv3state").text();//礼物领取状态
	 console.log("图片地址："+headimgurl);
	 console.log("用户微信id："+openid);
	 $("#img").attr("src",headimgurl);
 	 
 	   function  QueInIt(){
 		  /*  var  word =  $(".course").text();
 		   console.log(word) */
 		   //药事管理与法规
 		   $("#FG").click(function(){
 			  var  id = $(".course  #FG").prop("id");
 			  var subjectsid= $(".course  #FG").prop("id");
 			   console.log("题型"+subjectsid);    
 			  var  text = $("#FG").text();//获取到当前点击的a标签中的文本文档
 			   console.log("题型id"+text);   
 			 $("#FG").css("background-color","#DAA520");//点击a标签后给a标签一个背景颜色
 			 $("[id != FG]").css("background-color","");//同时删除id不为FG的标签的背景颜色
 			 if(id == "FG"){
 				$("#btn").click(function(){ 
 					 $("#jump").attr("href","../West/West?subjectsid="+subjectsid+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"");  //后台在根据装题型的div的id的不同跳转的页面不同
 				})
 			 }    
 		   })
 		   //药学专业知识一
 	   	 $("#ZY").click(function(){
 	   		var  id = $(".course  #ZY").prop("id");
 	   		var  text = $("#ZY").text();
 	   			 console.log(text); 
 	   		var subjectsid= $(".course  #ZY").prop("id");
 			$("#ZY").css("background-color","#DAA520");
 			$("[id!=ZY]").css("background-color","");
 			if(id  == "ZY"){
 				$("#btn").click(function(){
 					 $("#jump").attr("href","../West/West?subjectsid="+subjectsid+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"");
 				})
 			}
 		   })
 		   //药学专业知识二
 		  $("#ZE").click(function(){
 			 var  id = $(".course  #ZE").prop("id");
 	   		 var  text = $("#ZE").text();
 	   		 var subjectsid= $(".course  #ZE").prop("id");
 			 $("#ZE").css("background-color","#DAA520");
 			 $("[id!=ZE]").css("background-color","");
 			 if(id == "ZE"){
 				 $("#btn").click(function(){
 					 $("#jump").attr("href","../West/West?subjectsid="+subjectsid+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"");
 				 })
 			 }
 		   })
 		   //药学综合知识与技能
 		  $("#ZH").click(function(){
 			 var  id = $(".course  #ZH").prop("id");
 	   		 var  text = $("#ZH").text();
 	   		 var subjectsid= $(".course  #ZH").prop("id");
 			 $("#ZH").css("background-color","#DAA520");
 			 $("[id!=ZH]").css("background-color","");
 			 if(id == "ZH"){
 				 $("#btn").click(function(){
 					$("#jump").attr("href","../West/West?subjectsid="+subjectsid+"&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"");
 				 })
 			 }
 		   })
 	   
 	   }
 	 
 	  <%-- <%@include file="../resources/admin/js/WestsSubjects.js"%> --%>
  </script>
  
  
</body>
</html>