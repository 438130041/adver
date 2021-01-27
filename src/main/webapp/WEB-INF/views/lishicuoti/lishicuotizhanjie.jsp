<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
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
   	<script src="http://crm.jingyaoshi.net/Content/layer/layer.js"></script>
   	<script src="http://crm.jingyaoshi.net/Scripts/jquery-1.10.2.min.js"></script>
    <script src="http://crm.jingyaoshi.net/Content/lib/jquery.cookie.js"></script>
    <title>章节选择</title>
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
        /* background: #646161;  */
        background: #f7f7f7;
        padding-bottom: 100px;
        overflow: hidden;
     }
     .head{
        width: calc(100% - 30px);
        margin-left: 15px;
        display: flex;
        height: 1.5rem;
        font-size: 0.8rem;
        margin: 0 auto;
        margin-top: 0.6rem;
     }
     .head-subject{
        -webkit-box-flex: 1;      /* OLD - iOS 6-, Safari 3.1-6 */
        -moz-box-flex: 1;         /* OLD - Firefox 19- */
        -webkit-flex: 1;          /* Chrome */
        -ms-flex: 1;              /* IE 10 */
        flex: 1;                  /* NEW, Spec - Opera 12.1, Firefox 20+ */
        font-weight: 800;
        line-height: 1.6rem;
        color: #ff7b00;
     }
     .head-switch{
        color: #fff;
        text-align: center;
     }
     .head-switch-p{
        position: relative;
        top: 50%;
        background: #ff813d;
        transform: translate(0 ,-50%);
        padding: 0.1rem 0.5rem;
        cursor: pointer;
        border-radius: 50px;
        font-size: 0.5rem;
     }
     .chapter{
         width: 100%;
         height: 4rem;
         background:#fff;
         margin-top: 0.5rem;
         overflow: hidden;
     }
     .chapte-item{
         width: calc(100% - 30px);
         margin-left: 15px;
     }
     .Section{
        display: flex;
        width: 100%;
        
        margin-top: 0.8rem;
        
     }
     .Section-p{
        width: 100%;
        height: 1.8rem;
        overflow: hidden;
        
     }
     .Section-p span{
        font-size: 0.6rem;
        line-height: 0.9rem;
        font-weight: 800;
        display: block;
     }
     .Section-x{
        width: 4rem;
        font-size: 0.6rem;
        text-align: right;
        line-height: 1.3rem;
        color: #ff7b00;
        cursor: pointer;
     }
     .Section-x::before{
         content: "";
     }
     .Statistics-count{
         display: flex;
         margin-top: 0.3rem;
         position: relative;
         left:-2%; 
     }
     .Statistics{
        width: 4rem;
        text-align: right;
        font-size: 0.5rem;
        color: #9b9b9b;
     }
     #progress{
        width:100%;
        border-radius: 0.1rem;
        }
    #progressbar{
        width:95%;
        height:0.2rem;
        margin-top: 0.23rem;
        border-radius: 0.1rem;
        background-color: rgb(223, 223, 223);
        }
    .fill{
        height: 0.2rem;
        border-radius: 0.5rem;
        background-color: #FFA500;
        }
      .kemu{
          display:none;
       }
      .openid{
      	 display:none;
       }
      .headimgurl{
      	 display: none;
      }
     .nickname{
     	 display:none;
      }
     .days{
     	 display: none;
      }
     .integral{
     	 display:none;
      }
     .dateTime{
     	 display:none;
      }
     .lv1state{
     	display: none;
      }
     .lv2state{
     	display:none;
     }
     .lv3state{
     	display: none;
     }
     .kemuZYHXY{
     	display:none;
     }
     .size{
     	display:none;
     }
      #img{
      	width:70%;
        height:70%;
        margin-left:60px;
        margin-bottom:80px;
       }
      .kuaishudati{
      		border:1px;
      		border-color:#FF6633;
      		border-style: outset;
      		/* background-color:red; */
      		height:50px;
      		width:160px;
      		margin-left:110px;
      		position:absolute;
      		top:270px;
      		border-radius: 25px;
       }
      .text{
      	  font-size:25px;
      	  color:#FF6633;
      	  position:absolute;
      	  top:8px;
      	  left:28px;
       }
     </style>
</head>
<body>
	<div class="kemu">${kemu}</div>
	<div  class="kemuZYHXY">${kemuZYHXY}</div>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div  class="days">${days}</div>
	<div class="size">${size}</div>
	<div  class="integral">${integral}</div><!-- 累计积分 -->
	<div  class="dateTime">${dateTime}</div>
	<div  class="lv1state">${lv1state}</div><!-- 礼物领取状态 -->
	<div  class="lv2state">${lv2state}</div><!-- 礼物领取状态 -->
	<div  class="lv3state">${lv3state}</div><!-- 礼物领取状态 -->
    <div class="wrapper">
        <div class="head">
            <div class="head-subject" id="knowledge_Name">
               		${knowledge_Name}
            </div>
            <div class="head-switch">
                <div class="head-switch-p"  onclick="switchs()">切换科目</div>
            </div>
        </div>
        <div class="Subject exercises">
           <c:forEach items = "${zhangjie}" var = "zhangjie" >
           <div class="length"></div>
           <%-- <div class="" id="">${zhangjie.sortCode}</div> --%>
             <div class="chapter" >
                <div class="chapte-item">
                    <div class="Section">
                        <div class="Section-p">
                            <span>${zhangjie.knowledge_Name}</span>
                        </div>	 <!-- 点击事件的循环，在点击事件中传入参数(该章节的章节id) -->
                        <div class="Section-x"  onclick="start('${zhangjie.knowledge_Id}')" id="${zhangjie.knowledge_Id}">开始练习</div>
                    </div>
                    <div class="Statistics-count">
                        <div id="progress">
                            <div id="progressbar">										<!-- class属性中可以有多个属性值，但是id属性中只能有一个属性值并且不能有空格 -->							
                                <div class="fill ${zhangjie.knowledge_Id}"   style='width:0%;'  id="sortCode${zhangjie.sortCode}"  ></div>
                            </div>
                        </div>
                        <div class="Statistics">
                            <span>剩余题数:</span><span class="yizuotishu${zhangjie.sortCode}"></span><span id="cuotishu${zhangjie.knowledge_Id}"   class="timushu${zhangjie.sortCode}">${zhangjie.title_Sum}</span>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
    
    
            <!--弹出层开始-->
<div id="Idiv" style="display:none; position:absolute; z-index:1000;">
     <div id="mou_head" style="width="100px; height=10px;z-index:1001; position:absolute;"></div>
    <!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
	 <div  id="imgdiv">
	 <!-- 	<img  id="img"  alt="" src="../resources/admin/login/img/guanbi.png"  onclick="closeDiv()"> -->
	 	     <img  id="img"  alt="" src="../resources/admin/login/img/tishi.jpg">
			 <!-- 答题按钮 -->
			  <div class="kuaishudati"  onclick="closeDiv()">
			  		<p class="text" >快速答题</p>
			  </div>
	 </div>
</div>
</body>
<script src="http://crm.jingyaoshi.net/Scripts/bootstrap.min.js"></script>
<script type="text/javascript" src="../resources/admin/js/alertPopShowprac.js"></script>
<script type="text/javascript">
	
	/* $(function(){
			var kemu  = $(".kemu").text();
			alert("科目："+kemu)
	    	
	}) */
	
	
	var  openid = $(".openid").text();
	var  headimgurl = $(".headimgurl").text();
	var  nickname = $(".nickname").text();
	var  days = $(".days").text();
	var  kemu  = $(".kemu").text();
	var  integral = $(".integral").text();
	var  dateTime = $(".dateTime").text();
	var  kemuZYHXY = $(".kemuZYHXY").text();
	var  lv1state = $(".lv1state").text();
	var  lv2state = $(".lv2state").text();
	var  lv3state = $(".lv3state").text();
	
	
	//进度条进度显示
	$(function(){
		var  size = $(".size").text();//该科目中章节数量（已有的章节个数）
		for(var  i = 1;i <= 33;i++){
			var  sortCodes  = "sortCode"+i;//不同的章节class
			var  timushu =  $(".timushu"+i+"").text();//该章节下所有题目数
			 /* alert("剩余错题数："+timushu); */
			if(timushu == null || timushu == ""){//如果查询出来的题目数为空，说明该章节下已经已经没有题
				$(".timushu"+i+"").text("0");//更改剩余题目数据

					var Idiv     = document.getElementById("Idiv");
					var mou_head = document.getElementById('mou_head');
					Idiv.style.display = "block";
					//以下部分要将弹出层居中显示
					Idiv.style.left=(document.documentElement.clientWidth-Idiv.clientWidth)/2+document.documentElement.scrollLeft+"px";
					Idiv.style.top =(document.documentElement.clientHeight-Idiv.clientHeight)/2+document.documentElement.scrollTop-50+"px";
			 
					//以下部分使整个页面至灰不可点击
					var procbg = document.createElement("div"); //首先创建一个div
					procbg.setAttribute("id","mybg"); //定义该div的id
					procbg.style.background = "#FFFFFF";//#FFFFFF
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
			
			if(timushu == 0){//该章节下面的题目已经做完
				 $("#"+  sortCodes +"").css("width", 100 + "%");//通过字符串拼接的方式给进度条宽度赋值
				 
			} 
		}
		
	}) 
	
	
	
	//没有题目时点击快速答题
	function closeDiv() {
		window.location.href="../kemutopic/kemutopic?nickname="+nickname+"&openid="+openid+"&headimgurl="+headimgurl+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+""; 
	} 
	
	
	
	/* console.log("id的值："+openid);  */
    function  start(knowledge_Id){//点击开始练习后进入练习页面(这里使用了点击事件的循环，会根据点击的按钮传入对应的参数)
	     var ids = $("#cuotishu"+knowledge_Id+"").text();//错题剩余题数（如果剩余错题数为0，给与相应的提示）
		/*  alert("剩余错题数为："+ids); */
		 if(ids == 0){
			 layer.confirm('温故而知新，将错题再复习一遍，才能让知识更加巩固哦~', {
		            title: "提示",
		            btn: ['立即前往历史错题','取消']//按钮
		        }, function () {
		        	/* console.log("前往历史错题"); */
		        }, function () {
		        	console.log("取消");
		        });
		 	}else {//进入章节选择页面
				window.location.href="../lishicuotikemuzhangjie/practice?knowledge_Id="+knowledge_Id+"&kemu="+kemu+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&kemuZYHXY="+kemuZYHXY+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"";
			}
	}
 	
	
	function switchs(){//切换科目（回到科目选择页面）
			/* alert("微信id："+openid); *///
			window.location.href="../lishicuotikemuzhangjie/switch?openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"";
	}
	
	
</script>
</html>