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
    <title>科目选择</title>
    <script>
        function setRootFontSize() {
            var width = document.documentElement.clientWidth || document.body.clientWidth;
            fontSize = (width / 16);
            document.getElementsByTagName('html')[0].style['font-size'] = fontSize + 'px';
            }
            setRootFontSize();
            window.addEventListener('resize', function() {
            setRootFontSize();
            }, false);
    </script>
    <style>
    body{
        max-width: 1080px;
        min-width: 320px;
        margin: 0 auto;
    }
     @media only screen and (min-width:1080px)  { html {font-size: 50px !important} }
     *{
         margin: 0;
         padding: 0;
         -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
     }
     .wrapper{
         width: 100%;
         /* background: red; */
         background: #f7f7f7;
         overflow: hidden;
         padding-top: 20px;
         padding-bottom: 100px
         
     }
    .course{
        font-size: 0.7rem;
        color: #ff7b00;
        text-align: center;
        width: 80%;
        height: 2.2rem;
        line-height: 2.2rem;
        border: 1px solid #ff7b00;
        margin: 0 auto;
        border-radius: 70px;
        margin-top: 0.8rem;
        font-weight: 800;
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
    .integral{
      display: none;
     }
    .dateTime{
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
     #YXY{
         text-decoration:none;
      }
     #YXE{
         text-decoration:none;
      } 
     #YXZH{
         text-decoration:none;
     }
     #ZYY{
         text-decoration:none;
      }
     #ZYE{
     	 text-decoration:none;
      }
     #ZYZH{
         text-decoration:none;
     }
    #YS{
         text-decoration:none;
     }
    .nickname{
    	display: none;
     }
    .number{
    	display:none;
     }
    </style>
</head>
<body>
	<div class="number">${number}</div>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div  class="days">${days}</div>
	<div  class="integral">${integral}</div><!-- 累计积分 -->
	<div  class="dateTime">${dateTime}</div>
	<div  class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
	<div  class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
	<div  class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
    <div class="wrapper">
        <a  href="" id="YXY"><div class="course"  onclick="YXY()"> 药学专业知识一</div></a>
        <a  href="" id="YXE"><div class="course"  onclick="YXE()"> 药学专业知识二</div></a>
        <a  href="" id="YXZH"><div class="course"  onclick="YXZH()"> 药学综合知识与技能</div></a>
        <a  href="" id="ZYY"><div class="course"  onclick="ZYY()">中药学专业知识一</div></a>
        <a  href="" id="ZYE"><div class="course"  onclick="ZYE()">中药学专业知识二</div></a>
        <a  href="" id="ZYZH"><div class="course"  onclick="ZYZH()">中药学综合知识与技能</div></a>
        <a  href="" id="YS"><div class="course"  onclick="YS()">药事管理与法规</div></a>
    </div>

<script type="text/javascript">
	//通过不同点击不同按钮，传给后台不同的参数，查询出对应科目下的题目章节
	var  openid = $(".openid").text();
	var  headimgurl = $(".headimgurl").text();
	var  nickname = $(".nickname").text();
	var  days = $(".days").text();
	var  integral = $(".integral").text();//累计积分
	var  dateTime = $(".dateTime").text();
	var  lv1state = $(".lv1state").text();
	var  lv2state = $(".lv2state").text();
	var  lv3state = $(".lv3state").text();
    
	
	
	function  YXY(){//药学专业知识一按钮
		var YXY = "YXY";
		var  kemuZYHXY = "西药";
		 $("#YXY").attr("href","../kemuxuanze/kemuxuanze?kemu="+YXY+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""); 
		/*  $("#YXY").attr("href","../kemuxuanze/kemuxuanze?kemu="+ YXY +""); */
	}
	function  YXE(){//药学专业知识二按钮
		var YXE = "YXE";
		var  kemuZYHXY = "西药";
		 $("#YXE").attr("href","../kemuxuanze/kemuxuanze?kemu="+YXE+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""); 
		 /* $("#YXE").attr("href","../kemuxuanze/kemuxuanze?kemu="+ YXE +""); */
	}
	function YXZH(){//药学综合知识与技能按钮
		var YXZH = "YXZH";
		var  kemuZYHXY = "西药";
		 $("#YXZH").attr("href","../kemuxuanze/kemuxuanze?kemu="+YXZH+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""); 
		/*  $("#YXZH").attr("href","../kemuxuanze/kemuxuanze?kemu="+ YXZH +""); */
	}
	function ZYY(){//中药学专业知识一按钮
		var ZYY = "ZYY";
		var  kemuZYHXY = "中药";
		 $("#ZYY").attr("href","../kemuxuanze/kemuxuanze?kemu="+ZYY+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""); 
		/*  $("#ZYY").attr("href","../kemuxuanze/kemuxuanze?kemu="+ ZYY +""); */
	}
	function ZYE(){//中药学专业知识二按钮
		var  ZYE = "ZYE";
		var  kemuZYHXY = "中药";
		 $("#ZYE").attr("href","../kemuxuanze/kemuxuanze?kemu="+ZYE+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"");  
		/* $("#ZYE").attr("href","../kemuxuanze/kemuxuanze?kemu="+ ZYE +""); */
	}
	function ZYZH(){//中药学综合知识与技能按钮
		var ZYZH = "ZYZH";
		var  kemuZYHXY = "中药";
		 $("#ZYZH").attr("href","../kemuxuanze/kemuxuanze?kemu="+ZYZH+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""); 
		/* $("#ZYZH").attr("href","../kemuxuanze/kemuxuanze?kemu="+ ZYZH +""); */
	}
	function YS(){//药事管理与法规按钮
		var  YS = "YS";
		var  kemuZYHXY = "中药";
		 $("#YS").attr("href","../kemuxuanze/kemuxuanze?kemu="+YS+"&kemuZYHXY="+kemuZYHXY+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""); 
		/* $("#YS").attr("href","../kemuxuanze/kemuxuanze?kemu="+ YS +""); */
	} 
</script>
</body>
</html>