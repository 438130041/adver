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
    <title>切换科目</title>
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
    
    .imglogs{
    	margin-top:10px;
    	margin-left:65%;
    }
    
     .picture{
         width: 70px;
         height: 70px;
         border-radius: 50%;
         overflow: hidden;
         margin-top:-5px;
         margin-left:20px;
     }
    .picture img{
        width: 70px;
        height: 70px;
    }
    .information{
        position: absolute;
        top: 20px;
        left: 105px;
         margin-top:65px;
        margin-left:6px;
        font-size:20px;
        font-weight:bold;
    }
   /* .information{
   	    margin-top:65px;
        margin-left:6px;
        font-size:20px;
        font-weight:bold;
   } */
   .ann{
       margin-top:20px;
       margin-left:27%;
     
   }
  .namejys{
  	   font-size:20px;
       font-weight:bold;
  	   color:#000000;
   }
   .namejys{
   	   padding-right:50px;
   	   position:relative;
   	   left:310px;
   	   top:-38px;
    }
   .haibao{
      
      position:relative;
      left:30px;
      top:40px;
      
   }
   .nickname{
   		display:none;
   }
   .openid{
   	    display:none;
   }
   .headimgurl{
   	    display:none;
   }
    </style>
</head>
<body>
	<div class="nickname">${nickname}</div>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class=""><img src="../resources/admin/login/img/logo_icon.png"  class="imglogs"><div class="namejys">晶药师</div></div>
	<div  class="yonhu">
	    <div class="picture"><!-- 将div设置为圆形 （用户头像）-->
             <img src="../resources/admin/login/img/photos.png" id="img">
        </div>
        <div class="information">
            <span class="nicknames">卓乐玛</span>
        </div>
	</div>
        <div class="ann">
		 		<button type="button" class="btn btn-primary btn-lg"   onclick="forwarding()">生成专属发圈海报</button>
		</div>
	<div  class="haibao">
		<div class="imghaibao">
			<img alt="" src="../resources/admin/login/img/haibao1_1597910484252.png"  style="width:85%;height:100%">
		</div>
	</div>
	 
<script type="text/javascript">
	
	
	//点击生成专属二维码
	 function  forwarding(){
	 /*  var   openid = $(".openid").text(); *///获取到用户微信id
		 var   openid =   "okSrrjjtR9tsH0uy6evWqV6z3PDA";
	  /* var   nickname = $(".nickname").text(); */
		 var   nickname =  "你我他";
		 
		 
		 //通过用户微信id在后台生成用户专属的二维码//wxlinkxueli//用户扫码后进入海报，在海报页面点击生成专属二维码进入要转发的海报页面
		 var  url = "http://shop.jingyaoshi.net/ceshi/ceshi/tcm/posters?openid="+ openid +"";
		 //将链接参数传到后台
		 window.location.href="../copywriter/copywriter?url="+url+"&openid="+openid+"&nickname="+nickname+"";
	}
	
</script>
</body>
</html>