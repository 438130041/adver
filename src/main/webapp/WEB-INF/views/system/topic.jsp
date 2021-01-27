<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 	 <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> -->
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>每日一练</title>
</head>
<style>
	   
	    *{
            margin: 0;
            padding: 0;
        }
        body{
            font-family: "微软雅黑", "宋体",Arial, sans-serif;
        }
        a{
        color:#A9A9A9;
        
        }
        .warp{
            width: 90%;
            margin: 20px auto;
        }
        .Specialty {
            position: relative;
            width: 100%;
            border-bottom: 1px solid rgb(214, 214, 214);
            padding: 8px 0;
        }  
        .course{
            font-size: 13px;
            font-weight: 600; 
            padding-left: 20px;
        }
        .course::after{
            /* content:"";
            width: 8px;
            height: 8px;
            border: solid tomato;
          /*   border-width: 0 2px 2px 0; */
           /*  transform: translate(-50%, -50%) rotate(-45deg); */
            position: absolute;
            top: 25px;
            left: 93%; */
        }
        .course::before{
            content: "";
            width: 7px;
            height: 7px;
            border: solid tomato;
            border-width: 2px;
           /*  transform: translate(-50%, -50%) rotate(-45deg); */
            position: absolute;
            top:22px;
            left:2%;
            border-radius:50%;
        }
        .subject{
            display: inline-block;
            border: 1px solid 	#C0C0C0;
            border-radius: 10px;
            padding: 1px 10px;
            margin-top: 10px ;
            margin-right: 10px;
            font-size: 12px; 
            text-align:center;  
            text-decoration:none;  
        }
         .subject1{
          display:none;
        } 
        .subject2{
        		display:none;
        }
        .subject3{
        		display:none;
        }
        .div{
        	padding-top:3%;
        	padding-bottom:3%;
        }
       a:link{
        	color:#808080;
        	text-decoration:none;

        } 
        
          .img1{
          	height: 10px;
          	width: 10px;
           	position: absolute;
        	left:90%;
 			/* top:40%;  */
 			/* display:block;   */
          }
           .img2{
          	height: 10px;
          	width: 10px;
          	position: absolute;
        	left:90%;
 			/* top:20%;
 			display:none;  */
          }
          li{
          	list-style-type:none;
          }
          .nickname{
         		display: none;
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

<body >

<div class="warp">
		<div class="nickname">${nickname}</div>
		<div class="openid">${openid}</div>
		<div class="headimgurl">${headimgurl}</div>
		<div  class="days">${days}</div>
		<div  class="integral">${integral}</div><!-- 累计积分 -->
		<div  class="dateTime">${dateTime}</div><!-- 当前登录时间 -->
		<div  class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
		<div  class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
		<div  class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
        <div class="Specialty"  id="Specialty1">
                <div  class="">
                	<h5 class="course"  id="course1">
                		执业药师<img alt="" src="../resources/admin/login/img/right1.png" class="img1">
                	</h5>
                	<span >
                	</span>
                </div>
                <div  class="subject1">
                <div class="subject"  id="subjects">
                	<div  class="div" >
         			 	<a  href="" id="asubjects">  
							执业中药师
					 	</a> 
					</div>
                </div>
                <div class="subject"  id="west">
                	<div class="div" >
               			<a  href="" id="awest"> 
							执业西药师
					    </a> 
					</div>
                </div> 
                </div>
        </div>
    </div> 





 <script type="text/javascript">
  /*       $(document).ready(function(){ */
	  		//获得用户微信信息
	  		
        	 var isTrue1 = false;
        $("#course1").click(function(){
             $(".subject1").slideToggle("slow");//让题型选择显示
            if (isTrue1){
                    isTrue1 = false;
                    $(".img1").css("transform","rotate(0deg)");//将伪类值改为0（水平）
                }else{
                    isTrue1 = true;
                    $(".img1").css("transform","rotate(90deg)");//将伪类值改为90（垂直）
               };
            });
           
        	  var isTrue2 = false;
        $("#course2").click(function() {
                $(".subject2").slideToggle("slow"); 
                if (isTrue2) {
                    isTrue2 = false;
                    $(".img2").css("transform", "rotate(0deg)");
              } else {
                  isTrue2 = true;
                   $(".img2").css("transform", "rotate(90deg)");
               } ;
            });
        

        	  var isTrue3 = false;
        $("#course3").click(function() { 
                $(".subject3").slideToggle("slow"); 
                if (isTrue3) {
                    isTrue3 = false;
                    $(".img3").css("transform", "rotate(0deg)");
              } else {
                  isTrue3 = true;
                   $(".img3").css("transform", "rotate(90deg)");
               };
             }); 
        
        var  nickname = $(".nickname").text();
     	var  openid = $(".openid").text();
     	var  headimgurl = $(".headimgurl").text();
        var  days  = $(".days").text();//登录天数
        var  dateTime = $(".dateTime").text();//当前登录时间
        var  integral = $(".integral").text();//累计积分
        var  lv1state = $(".lv1state").text();//礼物领取状态
        var  lv2state = $(".lv2state").text();//礼物领取状态
        var  lv3state = $(".lv3state").text();//礼物领取状态
        //执业中药师
		  $("#subjects").click(function(){
					$("#asubjects").attr("href","../subjects/subjects?topic=subjects&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"");
		   })
		   
		   
		 //执业西药师
		  $("#west").click(function(){
					$("#awest").attr("href","../subjects/subjects?topic=west&nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&days="+days+"&dateTime="+dateTime+"&integral="+integral+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"");
		   })  
            
       /*  }); */
   </script>
</body>
</html>