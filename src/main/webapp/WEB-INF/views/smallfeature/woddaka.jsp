<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="dakaurl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>学习区</title>
    
    <script>
        (function () {
          function computed() {
            let HTML = document.documentElement,
              winW = HTML.clientWidth,
              desW = 750;
            if (winW >= desW) {
              HTML.style.fontSize = "100px";
              return;
            }
            HTML.style.fontSize = winW / desW * 100 + 'px';
          }
          computed();
          window.addEventListener('resize', computed);
        })();
      </script>
    <style>
        body{
            max-width: 1080px;
            min-width: 320px;
            width: 100%;
            margin: 0 auto;
            font-family: Arial, Helvetica;
            -webkit-tap-highlight-color:rgba(0,0,0,0)
        }
        .wrapper{
            padding-bottom: 50px;
            /* background: #ffcccc; */
        }
        .header{
            width: 100%;
            height: 1rem;
            font-size: 0.35rem;
            position: relative;
            background: #fff;
        }
        .heade>a{
            line-height: 1rem;
            display: block;
            padding-left: .7rem;
            color: #000;
            text-decoration: none;
        }
        .heade::after{
            content: "";
            width: 2rem;
            height: .6rem;
            background: url(../resources/admin/login/img/logo.png) no-repeat center;
            background-size: 100% 100%;
            position: absolute;
            right: .4rem;
            top: 50%;
            transform: translateY(-50%);
        }
        .heade>a::before{
            content: "";
            width: .4rem;
            height: .3rem;
            background: url(../resources/admin/login/img/return.png) no-repeat center;
            background-size: 100% 100%;
            position: absolute;
            left: .2rem;
            top: 50%;
            transform: translateY(-50%);
        }
        .head-wrap{
            width: 100%;
            height: .7rem;
            /* background: red; */
            display: flex;
            font-size: .3rem;
            line-height: .7rem;
            text-align: center;
        }
        .head-Y{
            width: 100%;
            background: #ffcccc;
        }
        p{
            margin: 0;
        }
        .head-YD{
            width: 50%;
        }
        .central-section{
            width: 100%;
            margin-top: .5rem;
        }
        .central-section-T{
            display: flex;
            height: 3rem;
            margin-top: .3rem;
        }
        .head-central{
            width: 40%;
            position: relative;
            font-size:.3rem ;
        }
        .head-portrait-nav{
            width: 60%;
            cursor: pointer;
        }
        .head-portrait{
            
        }
        .portrait{
            position: absolute;
            top: .3rem;
            left: 50%;
            transform: translateX(-50%);
            width: 1.3rem;
            height: 1.3rem;
            border-radius: 50%;
            overflow: hidden;
        }
        img{
            width: 100%;
            height: 100%;
        }
        .name>span,.punch-the-clock>p{
            display: block;
            text-align: center;
            margin-bottom: .15rem;
        }
        .name-na{
            width: 100%;
            text-align: center;
            position: absolute;
            top: 1.8rem;
        }
        .head-portrait{
            width: 90%;
            height: 100%;
        }
		.openid{
			display:none;
		}
	    .headimgurl{
	    	display:none;
	    }
	    .nickname{
	    	display:none;
	    }
	    #fanhui{
	    	text-decoration:none;
	    }
	   .imageurl{
	   		display:none;
	   }
	   #imgs{
	   		width:100%;
	   		height:100%;
	    }
	  .annimg{
	  		position:relative;
	  		float:left;
	  		margin-top:-12%;
	  		margin-left:52%;
	  		/* margin-bottom:-5%; */
	  		/* left:15%; */
	  }
	  #xuexi{
	      width:110px;
	  	  background-color:#FFCC33;
	  	  border:none;
	  	  margin-bottom:1%;
	  	  font-weight:900;
	  	  color:#000000;
	   }
	  .kecen{
	  	    position:relative;
	  		float:left;
	  		margin-top:-11.6%;
	  		margin-left:55%;
	  		margin-bottom:-5%;
	  
	    }
	  #kecen{
	  		 width:120px;
	  		 background-color:#FFCC33;
	  		 border:none;
	  		 color:#000000;
	  		 font-weight:900;
	    }
	 .
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div  class="imageurl">${imageurl}</div>
    <div class="wrapper">
        <div class="header">
            <div class="heade" onclick="fanhui()">
                <a href="javascript:;" id="fanhui">返回</a>
            </div>
        </div>
        <div class="head-wrap">
            <div class="head-Y">
                <p>我的打卡日记</p>
            </div>
        </div>
         <div  class="xuexi">
			       <div class="xuexiimg">
			       		<img alt="" src="../resources/admin/login/img/woddaka.jpg"  id="imgs">
			       </div>
			       <div  class="annimg"><button type="button" class="btn btn-success"  id="xuexi"  onclick="xuexi()">立即学习</button></div>
        </div>
        <div class="central-section">
             <c:forEach items ="${selecttwoddaka}" var = "selecttwoddaka" >
                <div class="central-section-T">
                <div class="head-central">
                    <div class="head-portrait">
                        <div class="portrait">
                            <img src="${selecttwoddaka.headimgurl}" alt="">
                        </div>
                        <div class="name-na">
                            <div class="name">
                                 <span>${selecttwoddaka.nickname}</span>
                            </div>
                            <div class="punch-the-clock">
                                <p>打卡日期<span>${selecttwoddaka.dakatime}</span></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="head-portrait-nav">
                    <div class="head-portrait">
                        <img src="${selecttwoddaka.dakaurl}" alt="">
                    </div>
                </div>
            	</div>
             </c:forEach>
        </div>
    </div>
</body>
	<script type="text/javascript">
		
		
		
	//点击返回返回到排行榜页面
	function  fanhui(){
		var openid = $(".openid").text();
			/* $("#fanhui").attr("href","../paihanban/paihanban?openid="+openid+"") */
		window.location.href="../paihanban/paihanban?openid="+openid+"";
	}
		
	//开始学习
	function  xuexi(){
		window.location.href="http://public.jingyaoshi.net";
	}
	
	</script>

</html>
