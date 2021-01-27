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
            width: 50%;
            background: #ffcccc;
        }
        p{
            margin: 0;
        }
        .head-YD{
            width: 50%;
        }
        .central-section{
            width: 90%;
            margin: 0 auto;
        }
        .central-section-T{
            margin-top: .35rem;
            padding-bottom: .2rem;
        }
        .head-central{
            width: 100%;
            /* position: relative; */
            font-size:.3rem ;
        }
        .head-portrait-nav{
            width: 70%;
            height: 4rem;
            cursor: pointer;
        }
        .head-portrait-no{
            width: 100%; 
        }
        .head-portrait-no>img{
            width: 100%;
            height: 100%;
        }
        .portrait{
            /* position: absolute;
            top: .3rem;
            left: 50%;
            transform: translateX(-50%); */
            width: 1rem;
            height: 1rem;
            border-radius: 50%;
            overflow: hidden;
        }
        .portrait>img{
            width: 100%;
            height: 100%;
        }
        .name{
            width: 100%;
            color: #e66926;
            font-size: .35rem;
        }
        .name>span,.punch-the-clock>p{
            display: block;
            text-align: left;
            
        }
        .punch-the-clock{
            font-size: .3rem;
            color: #ef8b29;
        }
        .name-na{
            width: 80%;
            margin-left: .2rem;
            line-height: 0.5rem;
            margin-top: .04rem;
        }
        .head-portrait{
            width: 100%;
            display: -webkit-box;
        }
        .head-portrait>img{
            width: 100%;
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
	   		height:100%；
	    }
	  .annimg{
	  		position:relative;
	  		float:left;
	  		margin-top:-12%;
	  		margin-left:11%;
	  		/* margin-bottom:-5%; */
	  		/* left:15%; */
	  }
	  #xuexi{
	      width:120px;
	  	  background-color:#FFCC33;
	  	  border:none;
	  	  margin-bottom:1%;
	  	  font-weight:900;
	  	  color:#000000;
	   }
	  .kecen{
	  	    position:relative;
	  		float:left;
	  		margin-top:-11.8%;
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
	 #woddaka{
		     width:100%;	 
		    height:100%;
            border-radius: 0 ;
	  }
	 .wenben{
             margin:.15rem 0; 
	 	  }
	  .textp{
	  		font-size:.3rem ;
	  		text-align:left;
	  		
	   }
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
                <p>大家都在学什么</p>
            </div>
            <div class="head-YD">
               <%--  <p>参与学习打卡总人数:<span>${dakarenshu}人</span></p> --%>
               <button type="button" class="btn btn-info"  id="woddaka"  onclick="woddaka()">我的学习日记</button>
            </div>
        </div>
        <div  class="xuexi">
			       <div class="xuexiimg">
			       		<img alt="" src="../resources/admin/login/img/xuexi.jpg"  id="imgs">
			       </div>
			       
			       	<div  class="annimg"><button type="button" class="btn btn-success"  id="xuexi"  onclick="xuexi()">开始学习</button></div>
			       	<div  class="kecen"><button type="button" class="btn btn-success"  id="kecen"  onclick="kecen()">免费申请课程</button></div>
			      
        </div>
        
        <div class="central-section">
            
             <c:forEach items ="${dajiadakashuju}" var = "dajiadakashuju" varStatus="xh" >
                <div class="central-section-T">
                <div class="head-central">
                    <div class="head-portrait">
                        <div class="portrait">
                            <img src="${dajiadakashuju.headimgurl}" alt="">
                        </div>
                        <div class="name-na">
                            <div class="name">
                                 <span>${dajiadakashuju.nickname}</span>
                            </div>
                            <div class="punch-the-clock">
                                <p>已打卡<span><span>${dajiadakashuju.dakatishu}</span>天</span></p>
                            </div>
                        </div>
                    </div>
                    <div  class="wenben">
                        <p  class="textp">${dajiadakashuju.state}</p>
                    </div>
                </div>
                <div class="head-portrait-nav">
                    <div class="head-portrait">
                        <img src="${dajiadakashuju.dakaurl}" alt=""  id="imgs">
                    </div>
                </div>
            	</div>
             </c:forEach>
            
            <%-- <div class="central-section-T">
                <div class="head-central">
                    <div class="head-portrait">
                        <div class="portrait">
                            <img src="${headimgurl}" alt="">
                        </div>
                        <div class="name-na">
                            <div class="name">
                                 <span>${nickname}</span>
                            </div>
                            <div class="punch-the-clock">
                                <p>已打卡<span><span>${dakatishu}</span>天</span></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="head-portrait-nav">
                    <div class="head-portrait">
                        <img src="https://uploadfilesbucket.cdn.bcebos.com/2.jpg" alt="">
                    </div>
                </div>
            </div> --%>
            <!-- <div class="central-section-T">
                <div class="head-central">
                    <div class="head-portrait">
                        <div class="portrait">
                            <img src="https://uploadfilesbucket.cdn.bcebos.com/2.jpg" alt="">
                        </div>
                        <div class="name-na">
                            <div class="name">
                                 <span>昵称</span>
                            </div>
                            <div class="punch-the-clock">
                                <p>已打卡<span>10天</span></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="head-portrait-nav">
                    <div class="head-portrait">
                        <img src="https://uploadfilesbucket.cdn.bcebos.com/2.jpg" alt="">
                    </div>
                </div>
            </div> -->
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
		
	//学习
	function  xuexi(){
		
		window.location.href="http://public.jingyaoshi.net";
	}
	
	//免费申请课程
	function  kecen(){
		
		window.location.href="http://shop.jingyaoshi.net/details?GoodsID=303";
	}
	
	//查看我的打卡
	function  woddaka(){
		var  openid = $(".openid").text();
		/* alert("id:"+openid); */
		window.location.href="../chakan/woddaka?openid="+openid+"";
	}
	
	</script>

</html>
