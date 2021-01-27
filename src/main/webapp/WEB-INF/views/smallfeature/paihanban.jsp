<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <!--  <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;" name="viewport" /> -->
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
   <!--  <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> 
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
   <script src="http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
   <script src="http://crm.jingyaoshi.net/Scripts/jquery-1.10.2.min.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/lib/jquery.cookie.js"></script>
    <title>每日打卡</title>
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
        *{
            margin: 0;
            padding: 0;
        }
        a{
            text-decoration: none;
            color: #000;
        }
        body{
            max-width: 1080px;
            min-width: 320px;
            width: 100%;
            margin: 0 auto;
            font-family: Arial, Helvetica;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            
        }
        .wrapper{
            padding-bottom: 50px;
            background: #ffcccc;
        }
        .header{
            width: 100%;
            height:100%;
        }
        .header img,.head-portrait img{
            width: 100%;
            height: 100%;
        }
        .header-nav{
            position: relative;
            width: 100%;
            height: 2rem;
            background: #ffcccc;
            border-radius: 0 0 5px 5px;
        }
        .head-portrait{
            position: absolute;
            top: .4rem;
            left: .8rem;
            width: 1.2rem;
            height: 1.2rem;
            border-radius: 50%;
            overflow: hidden;
        }
        .head-share{
            position: absolute;
            top: .6rem;
            left: 2.5rem;
            width: .8rem;
            height: .8rem;
            border-radius: 50%;
            background: #fff;
            border: 1px dashed #ccc;
        }
        .head-share::before{
            content: "";
            width: .5rem;
            height: .5rem;
            position: absolute;
            top: .15rem;
            left: 50%;
            transform: translate(-50%,0);
            background: url(../resources/admin/login/img/JH.png) no-repeat center;
            background-size: 100%,100%;
            
        }
        .clockin{
            width: 2.5rem;
            height: .6rem;
            background: #FF7F50;
            border-radius: 10px;
            border: 1px #ccc dashed;
        }
        .exchange-gifts{
            position: absolute;
            top: 1.2rem;
            right: .5rem;
           
        }
        
         .chojian-gifts{
            position: absolute;
            top: .4rem;
            right: .5rem;
           
        }
        
        .clockin a{
            display: block;
            font-size: .25rem;
            text-align: center;
            line-height: .6rem;
        }
        .integral{
            display: flex;
            width: 94%;
            height: 2.2rem;
            background: #eef7f7;
            border-radius: 10px 10px 0 0;
            margin: 0 auto;
        }
        .integral .punch-the-clock{
            position: relative;
            width: 50%;
        }
        .punch-the-clock-1{
            width: 100%;
            height: 100%;
            margin: 0 auto;
            font-size: 0.3rem;
        }
        .My-points span,.study span{
            font-size: .4rem;
        }
        .one{
            padding: .3rem 0 0 .4rem;
        }
        .My-points{
            padding-top: .45rem;
        }
        .My-point{
            border: none;
           /*  background: #3366ff; */
           font-weight: bold;          
        }
        .My-point>a{
            color: #fff;
           }
        .Tz{
            margin-top: .2rem;
        }
        .TzS{
            position:absolute;
            top: .2rem;
            right: .3rem;
            width: 2.5rem;
        }
        .reminder{
            width: 100%;
            height: 1.2rem;
            background: #ffcccc;
            border-radius: 0 0 5px 5px;
        }
        .Tips{
            width: 94%;
            height: .6rem;
            background: #FFA07A;
            font-size: .25rem;
            line-height: .6rem;
            color: #fff;
            border-radius: 0 0 5px 5px;
            margin: 0 auto;
           /*  text-align:center; */
        }
        .Tips>p{
            padding-left: .55rem;
        }
        .Numberofpeople{
            font-size: .25rem;
           
        }
        .Numberofpeople>p{
            color: #fff;
            padding-left: .55rem;
            padding-top: .15rem;

        }
        .My-ranking{
            width: 94%;
            height: 2rem;
            background: #FFA07A;
            font-size: .4rem;
            border-radius: 5px 5px 0 0;
            margin: 0 auto;
        }
        .My-ranking-T{
            width: 100%;
            font-size: .4rem;
            font-weight: bold;
            text-align: center;
            line-height: 1rem;
            position:relative;
            top:-7%;
            color: #fff;
        	
        }
        .tipss{
            font-size: .25rem;
            padding-left: .6rem;
             position:relative;
             top:-5%;
        }
        .tipss>p{
            color: #fff;
        }
        .Ranking{
            width: 94%;
            margin: 0 auto;
            background: #fff;
            font-size: .3rem;
        }
        .Pai-tou{
            display: flex;
            height: 1rem;
            border-bottom: 1px #ccc solid;
            color: #666668;
        }
        .PM{
            width:20%;
        }
        .TX{
            width: 18%;
        }
        .XM{
            width: 38%;
        }
        .DF{
            width: 24%;
        }
        .paihang{
            text-align: center;
            line-height: 1rem;
        }
        .brand-top,.brand-bottom {
          display: flex;
          width: 100%;
          height: 1.3rem;
          border-bottom: 1px solid #cccccc;
        }
        .brand-flag {
          width: 20%;
          height: 100%;
          position: relative;
        }
        .brand-flag .T{
            width: .8rem;
            height: .8rem;
            position: absolute;
            top: .25rem;
            left: 50%;
            transform: translate(-50%,0);
        }
        
        .first {
          background: url(../resources/admin/login/img/first.png)  no-repeat center;
          background-size: 60% 60%;
        }
        .second {
          background: url(../resources/admin/login/img/second.png) no-repeat center;
          background-size: 60% 60%;
        }
        .third {
          background: url(../resources/admin/login/img/third.png) no-repeat center;
          background-size: 60% 60%;
        }
        .brand-flag>p {
          text-align: center;
          line-height: 1.3rem;
          font-size: .4rem;
          color: #666668;
        }
        .brand-flag .P {
          display: none;
        }
        .goods {
          display: flex;
          width: 18%;
          height: 100%;
        }
        .goods-name {
            width: 38%;
            position: relative;
            
        }
        .goods-name span{
            display: block;
            width: 80%;
            height: 1.3rem;
            line-height: 1.3rem;
            text-align: center;
            margin: 0 auto;
            white-space:nowrap;
            text-overflow:ellipsis;
            overflow:hidden;
            color: #666668;
        }
        .fractions {
          width: 24%;
          height: 100%;
          display: block;
          font-size: .35rem;
          text-align: center;
          line-height: 1.3rem;
          color: #fdaa2d;
           position: relative;
           
        }
        .goods-portrait {
            width: .8rem;
            height: .8rem;
            border-radius: 50%;
            overflow: hidden;
            position: relative;
            top: .25rem;
            left: 50%;
            transform: translate(-50%, 0);
        }
        .goods-portrait img {
          width: 100%;
          height: 100%;
        }
        #daka{
        	text-decoration:none;
        	font-size:15px;
        }
        #lipinduihuan{
        	text-decoration:none;
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
	 #dajiaddaka{
	 	text-decoration:none;
	 	font-size:15px;
	 }
	 .yanse{
	 	background-color:#808080;
	 }
	 .yanse2{
	 	background-color:#808080;
	 }
	 .shuanxing{
	 	display:none;
	 }
	 #dakadiv{
	 	background-color: #FF7F50;
	 }
	 #dajiaddaka{
	 	color:#FFFFFF;
	 	
	 }
	 #lipinduihuan{
	 	color:#FFFFFF;
	 }
	#jifenguize{
		 position:relative;
		 left:4%;
		 font-size:15px;
	 }
	.yidaka{
		display:none;
	}
	
	
	/*  弹出框cs效果  */
    	#Idiv{
    	     height:350px;
    	     width:300px;
    	     background-color:#FFFFFF; 
    	     border-radius: 15px;
    	     background: url(../resources/admin/login/img/jifenguize.png) no-repeat center ;
    	    background-size: 100% 100%;
    	 }
    	#mou_head{
    	     text-alig:center;
    	     padding-left: 30%;
    	  }
    	#buttont{
    		margin-left:35%;
    		margin-top:90%;
    		width:30%;
    	  }
    	#text{
    		 position: relative;
 			 left: 7%;
  			 top:250px;
  			 font-size:17px;
  			 text-alig:center;
  			 color:#fff;
    	  }
    	#lv1states{
    		font-size:25px;
    		color:#FFFF33;
    	  }
    	 /*  弹出框cs效果结束 */ 
    	 /* 关闭弹出层图片 */
        #img{
        	 width:50px;
        	 height:50px;
        	 /* position: relative;
        	 left: 130px;
        	 top:70%; */
         }
        #imgdiv{
        	 position: relative;
        	 top:105%;
        	 left:40%;
        }
		.id{
			display:none;
		}
	    .fenge{
	    	border:1px;
	    	border-color:#F0F8FF;
	    	background-color:#F0F8FF;
	    	height:30px;
	    	width:3px;	
	    	position: relative;
	    	left:50%;
	    	top:-50%;
	     }
	   #chakanjianpin{
	   	    position:relative;
	   	    margin-left:65%;
	   	    /* left:65%; */
	   	    top:-90%;
	   	    color:#F0F8FF;
	   		/* margin-top:100px; */
	    }
	   #chakan{
	   		position:relative;
	   		/* right:3%; */
	   		font-size:15px;
	   		margin-bottom:2%;
	    }
	 .fenxianzhojian{
	  	display:none;
	  }
	  .codes{
	  	display:none;
	   }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div class="shuanxing">${shuanxing}</div>
	<div  class="yidaka">${yidaka}</div>
	<div  class="fenxianzhojian">${fenxianzhojian}</div>
	<div class="codes">${codes}</div>
    <div class="wrapper">
        <div class="header"  >
            <img src="../resources/admin/login/img/xuanyuandenlu.jpg" alt=""  id="imgs">
        </div>
        <div class="header-nav">
            <div class="head-portrait">
               <img src="${yonhuheadimgurl}" alt="">
            </div>
            <div class="head-share"></div>
            <div class="exchange-gifts clockin"  onclick="duihuan()" id="duhuandiv">
                <a href="#"  id="lipinduihuan">兑换课程</a>
            </div>
            <div class="chojian-gifts clockin"   id="">
                <a href="#"  id="lipinduihuan"  onclick="cojian()">立即抽奖</a>
            </div>
        </div>
        <div class="integral">
            <div class="punch-the-clock">
                <div class="punch-the-clock-1">
                    <div class="My-points one">
                        我的积分：<span><span>${yonhunintegral}</span>分</span>
                    </div>
                    <div class="study one">
                        已连续学习打卡 <span class="dakatishu">${yonhunactivityClock}</span> 天
                    </div>
                </div>
            </div>
            <div class="punch-the-clock TzSs">
                <div class="punch-the-clock-1 TzS ">
                    <div class="My-point  clockin  Tz"  onclick="daka()" id="dakadiv">
                        <a href="#" id="daka">前往学习打卡</a>
                    </div>
                    <div class="My-point clockin Tz" onclick="dajiadaka()"  id="dajiadiv">
                        <a href="#" id="dajiaddaka">学习分享区</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="reminder">
            <div class="Tips"   onclick="layer()">
                <p id="jifenguize">查看活动规则</p>
            </div>
            <div class="fenge"></div>
            <div  id="chakanjianpin"  onclick="chakanjianpin()">
                 <p  id="chakan">查看奖品表单</p>
            </div>
        </div>
        <div class="My-ranking">
            <div class="Numberofpeople">
                <%-- <p>今日打卡人数：<span><span id="dakarenshu">${dakanumber+23}</span>人</span></p> --%>
                <p>今日打卡人数：<span><span id="dakarenshu">0</span>人</span></p>
            </div>
            <div class="My-ranking-T">
                我的排名：第<span>${yonhunpaiming}</span>名
            </div>
            <div class="tipss"  >
                <p>提示：排行榜每2小时刷新1次</p>
            </div>
        </div>
        <div class="Ranking">
            <div class="Pai-tou">
                <div class="paihang PM">排名</div>
                <div class="paihang TX">头像</div>
                <div class="paihang XM">昵称</div>
                <div class="paihang DF">积分</div>
            </div>


            	<!-- ----------  下面的不要删除  -------- -->              
                <!-- 用户排行信息(前三名) -->
           		<ul>
                 <li class="brand-top">
                    <div class="brand-flag first">
                        <p class="P">1</p>
                    </div>
                    <div class="goods">
                        <div class="goods-portrait">
                            <img src="${Headimgurl1}" alt="" >
                        </div>
                        </div>
                        <div class="goods-name">
                        <span id="name0">${Nickname1}</span>
                        </div>
                    
                    <div class="fractions">
                        <span id="fractions">${Integral1}</span>
                    </div>
                </li>
                <li class="brand-top">
                    <div class="brand-flag second">
                        <p class="P">2</p>
                    </div>
                    <div class="goods ">
                        <div class="goods-portrait">
                            <img src="${Headimgurl2}" alt="" >
                        </div>
                     </div>
                        <div class="goods-name">
                        	<span id="name1">${Nickname2}</span>
                        </div> 
                   
                    <div class="fractions">
                        <div id="fractions">${Integral2}<span id="fractions1"></span></div>
                    </div> 
                </li>
                <li class="brand-top">
                    <div class="brand-flag third">
                        <p class="P">3</p>
                    </div>
                    <div class="goods">
                        <div class="goods-portrait">
                            <img src="${Headimgurl3}" alt="">
                        </div>
                       </div>
					    <div class="goods-name"><span id="name1">${Nickname3}</span></div> 
                    
                    <div class="fractions">
                        <span id="fractions">${Integral3}</span>
                    </div>
                </li>
                
            </ul>   
            <!-- 第四名到一百名 -->
             <ul>
             <c:forEach items ="${findPaiHanyibai}" var = "findPaiHanyibai" varStatus="xh"   begin="3">
                 <li class="brand-bottom">
                     <%-- <div id="${findPaiHanyibai.openid}"  class="id">${xh.count+3}</div> --%>
                     <div class="brand-flag">
                     	<p class="Psan"  id="${xh.count}">${xh.count+3}</p><!-- 在EL表达式里面直接加值，就可以实现数字相加了 -->
                     </div>
                     <div class="goods">
                        <div class="goods-portrait">
                            <img src="${findPaiHanyibai.headimgurl}" alt="" >
                        </div>
                       </div>
                        <div class="goods-name">
                        	<span id="name0">${findPaiHanyibai.nickname}</span>
                        </div>
                    
                     <div class="fractions">
                        <span id="fractions">${findPaiHanyibai.integral}</span>
                     </div>  
                </li>
             </c:forEach>
             </ul> 

			<!-- <img alt="" src=""  id="yonhutupian"> -->
        </div>
        <input type="file" id="photo-file" style="display:none;" onchange="upload()">
    </div>
    <!--弹出层开始-->
<div id="Idiv" style="display:none; position:absolute; z-index:1000;">
     <div id="mou_head" style="width="100px; height=10px;z-index:1001; position:absolute;"></div>
    <!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
	 <div  id="imgdiv">
	 	<img  id="img"  alt="" src="../resources/admin/login/img/guanbi.png"  onclick="closeDiv()">
	 </div>
</div>
<!--结束-->
    <!-- <script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script> -->
    <script src="http://crm.jingyaoshi.net/Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../resources/admin/js/alertPopShowprac.js"></script>
    <script type="text/javascript">
		
    	$(function(){
    		 var  shuanxing  = $(".shuanxing").text();
    		 var  yidaka = $(".yidaka").text();
    		 var codes = $(".codes").text();
 			if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
 					|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
 					|| codes == "113"
 					){
 			/* 	$(".buttondiv").addClass("buttondivduxue"); */
 				$("#imgs").attr("src","../resources/admin/login/img/jifenshajieshu.jpg");
 			}else {
 				/* $(".buttondiv").addClass("buttondivyinye"); */
 				$("#imgs").attr("src","../resources/admin/login/img/jifenshajieshu.jpg");
 			}
    		 
    		 if(yidaka !="" && yidaka != null){
    			 $("#daka").text(yidaka);
    		 }
    		 if(shuanxing == "" || shuanxing == null){
    			 var  openid = $(".openid").text();
        		 window.location.href="../paihanban/paihanban?openid="+openid+"&codes="+codes+"";
    		 }
    		 
    	})
    	
    	
    	
    	//打卡按钮（点击打卡后进入上传图片页面）
 	    function  daka(){
 	    	/* $("#dakadiv").addClass("yanse2");
    		var  openid = $(".openid").text(); */
    		/* var  headimgurl = $(".headimgurl").text(); */
    		/* var  headimgurl = "http://thirdwx.qlogo.cn/mmopen/vi_32/uk7ucKk9BHuqaxGs6D4dgjFR8wYxZukXwrpQzwJUhw1libGIYfLA2mtpUn1hlkcHiavuJQp5eXrZkaU2Mxe8L0rw/132" */
    		/* var  nickname = $(".nickname").text(); */
    		/* var  nickname = "唐宋元明清"
    		var  dakatishu = $("#dakatishu").text(); *///当前用户打卡连续天数
    		/* var  dakarenshu = $("#dakarenshu").text(); *///打卡总人数
    		/* setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
    			$("#dakadiv").removeClass("yanse2");
					},60);
    		var  dakarenshu = $("#dakarenshu").text();
 	    	window.location.href="../tupianshancuan/tupianshancuan?openid="+openid+"&dakarenshu="+dakarenshu+""; */
 	    	 
    		var layerindex=layer.confirm('活动已结束，活动所得积分可前往商城兑换礼品。', 
					{
					title:'提醒',
					btn: ['立即前往商城'] //按钮
					}, function(){
						window.location.href="http://shop.jingyaoshi.net";
				 });
 	    		
 	    		
 	    }
        
 	 	
 	 	
        //进入兑换物品页面（查看有哪些物品可兑换）
 	 	function   duihuan(){
        	 /* $("#duhuandiv").addClass("yanse");
        	 var  openid = $(".openid").text();
        	 setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
        		 $("#duhuandiv").removeClass("yanse");
 					},60);
        	 
 	 		 window.location.href="../lipingzhanshi/lipingzhanshi?openid="+openid+""; */
        	
 	 		var layerindex=layer.confirm('活动已结束，活动所得积分可前往商城兑换礼品。', 
 					{
 					title:'提醒',
 					btn: ['立即前往商城'] //按钮
 					}, function(){
 						window.location.href="http://shop.jingyaoshi.net";
 				 });
 	 		 
        }
 	 	
        
        //查看大家的打卡
        function  dajiadaka(){
        	/* $("#dajiadiv").addClass("yanse");
        	var  openid = $(".openid").text();
        	var  dakarenshu = $("#dakarenshu").text();
        	setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
        		$("#dajiadiv").removeClass("yanse");
					},60); */
        	
        	/* window.location.href="../lipingzhanshi/dajaddaka?openid="+openid+"&dakarenshu="+dakarenshu+""; */
        	
        	var layerindex=layer.confirm('活动已结束，活动所得积分可前往商城兑换礼品。', 
    				{
    				title:'提醒',
    				btn: ['立即前往商城'] //按钮
    				}, function(){
    					window.location.href="http://shop.jingyaoshi.net";
    			 });
        	
        	
        }
        
        
    function paiming(openid){
        $.ajax({
                    url:"../paihang/paihang",
                    type:'post',
                    dataType:'json',
                data:openid,
                success:function(data){
                    if(data.type == 'success'){
                        var  weixin = data.datas;//回调回来的redis中的用户的微信信息
                        var  weixins  =  JSON.parse(weixin);//转化为对象(这里拿出的是所有用户的微信信息)
                            
                        /* result:[
                              {id:1,name:'中国银行'},
                              {id:3,name:'北京银行'},
                              {id:2,name:'河北银行'},
                              {id:10,name:'保定银行'},
                              {id:7,name:'涞水银行'}
                            ] */
                        
                        
                        console.log("存入redis中的微信信息:"+weixin);
                        console.log("对象:"+weixins);
                        console.log("percentage的值:"+weixins[0].percentage);
                        console.log("weixins的长度:"+weixins.length);
                        poorly(weixins); 
                    }else{
                        alert("页面出错请联系管理员！");
                    }
                }
                        
        })
        
    }
    
     function  poorly(weixins){//将微信信息传入进来进行排名
        console.log("对象的长度（用户数）："+weixins.length);
         //先拿出所有做题信息排用户的题目正确率
        function weixinspercentage(a,b){  
                    return a.percentage-b.percentage;  
                }
                   weixins.sort(weixinspercentage);
                console.log("排序后的数据"+weixins); 
         
         
         /* for(var i = 0 ; i<weixins.length;i++){//循环出所有的用户做题信息
                    console.log(weixins.percentage[i]);		
        } */
         //在用户正确率相同的情况下啊，在对用户做题时间进行排序
    
         
         
         //将排名的结果填入页面中显示
          for(var i = 0;i<weixins.length;i++){
                         console.log("i的值"+i); 
                         console.log("分数："+weixins[i].percentage); 
                     $("#img"+i).css("src",weixins[i].headimgurl);
                     $("#name"+i).text(weixins[i].nickname);
                     $("#defen"+i).text(weixins[i].int_second);
                     $("#fractions"+i).text(weixins[i].percentage);
             } 
         
     }
     
     
     //弹出层提示
     	
    //查看活动规则
    /*  function  layer(){
    	 var  openid = $(".openid").text();
    	 window.location.href="../chakan/chakanhuodonguize?openid="+openid+"";
    	 
		
		} */
    //查看奖品表单
	 /* function  chakanjianpin(){
		  var  openid = $(".openid").text();
		 window.location.href="../chakan/jianpinbiaodan?openid="+openid+""; 
		 
	 } */	
     
     
     
	function showDiv(){
		var Idiv     = document.getElementById("Idiv");
		var mou_head = document.getElementById('mou_head');
		Idiv.style.display = "block";
		//以下部分要将弹出层居中显示
		Idiv.style.left=(document.documentElement.clientWidth-Idiv.clientWidth)/2+document.documentElement.scrollLeft+"px";
		Idiv.style.top =(document.documentElement.clientHeight-Idiv.clientHeight)/2+document.documentElement.scrollTop-50+"px";
 
		//以下部分使整个页面至灰不可点击
		var procbg = document.createElement("div"); //首先创建一个div
		procbg.setAttribute("id","mybg"); //定义该div的id
		procbg.style.background = "#000000";
		procbg.style.width = "100%";
		procbg.style.height = "100%";
		procbg.style.position = "fixed";
		procbg.style.top = "0";
		procbg.style.left = "0";
		procbg.style.zIndex = "500";
		procbg.style.opacity = "0.6";
		procbg.style.filter = "Alpha(opacity=70)";
		//背景层加入页面
		document.body.appendChild(procbg);
		document.body.style.overflow = "hidden"; //取消滚动条
 
		//以下部分实现弹出层的拖拽效果
		var posX;
		var posY;
	mou_head.onmousedown=function(e){
		if(!e) e = window.event;//IE
		posX = e.clientX - parseInt(Idiv.style.left);
		posY = e.clientY - parseInt(Idiv.style.top);
		document.onmousemove = mousemove;
	}
		document.onmouseup = function()
	{
		document.onmousemove = null;
	}
	function mousemove(ev){
	if(ev==null) ev = window.event;//IE
		Idiv.style.left = (ev.clientX - posX) + "px";
		Idiv.style.top = (ev.clientY - posY) + "px";
	}
	}
	function closeDiv() {//关闭弹出层
		var Idiv=document.getElementById("Idiv");
		Idiv.style.display="none";
		document.body.style.overflow = "auto"; //恢复页面滚动条
		var body = document.getElementsByTagName("body");
		var mybg = document.getElementById("mybg");
		body[0].removeChild(mybg);
	}
    //进入抽奖
    function  cojian(){
    	/* var  openid = $(".openid").text();
    	var  nickname = $(".nickname").text();
    	var  daka  = $("#daka").text();
    	var  dakarenshu  = $("#dakarenshu").text();
    	var  codes = $(".codes").text();
    	if(daka == "今日已打卡"){
    		window.location.href="../Luckydraw/Luckydraw?openid="+openid+"&nickname="+nickname+"&dakarenshu="+dakarenshu+"&codes="+codes+"";
    	}else {
    		var  weidaka = "weidaka"
    		window.location.href="../Luckydraw/Luckydraw?openid="+openid+"&nickname="+nickname+"&weidaka="+weidaka+"&dakarenshu="+dakarenshu+"&codes="+codes+"";
    		
		} */
    	
    	var layerindex=layer.confirm('活动已结束，活动所得积分可前往商城兑换礼品。', 
				{
				title:'提醒',
				btn: ['立即前往商城'] //按钮
				}, function(){
					window.location.href="http://shop.jingyaoshi.net";
			 });
		
		
    }
     	
     	
     	
    </script>
</body>
</html>