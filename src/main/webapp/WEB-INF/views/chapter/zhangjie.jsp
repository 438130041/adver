<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
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
    <title>章节练习</title>
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
        width:100%;
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
                            <span>进度   </span><span class="yizuotishu${zhangjie.sortCode}">0</span>/<span  class="timushu${zhangjie.sortCode}">${zhangjie.title_Sum}</span>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</body>
<script type="text/javascript">
	
	var  openid = $(".openid").text();
	var  headimgurl = $(".headimgurl").text();
	var  nickname = $(".nickname").text();
	var  days = $(".days").text();
	var  integral = $(".integral").text();
	var  dateTime = $(".dateTime").text();
	var  kemuZYHXY = $(".kemuZYHXY").text();
	var  lv1state = $(".lv1state").text();
	var  lv2state = $(".lv2state").text();
	var  lv3state = $(".lv3state").text();
	
	
	$(function(){
		var  storagejindu = window.localStorage;//window.localStorage，H5的页面缓存
    	var  size = $(".size").text();//该科目中的章节数量
    	/* alert("章节数："+size); */
		//根据已经做的题目数将做题进度显示出来
		//根据循环获取到章节顺序
		for(var i = 1;i<=size;i++){
		     var  timushu =  $(".timushu"+i+"").text();//该章节下所有题目数
		      /* alert("timushu的值："+timushu);  */
			 var  sortCodes  = "sortCode"+i;//不同的章节class
		     if(timushu == null || timushu == ""){
		    	 /* alert("为空进入"); */
		    	 var  timushu = "timushu";
		    	 var  sortCodes = "sortCode";
		     }
		   /*   console.log("章节class："+sortCodes); */
			 var  knowledge_Id =  $("#"+sortCodes+"").prop("class");//获取到对应章节id
			 /* alert("knowledge_Id的值："+knowledge_Id); */
			 var  knowledge_Ids = knowledge_Id.replace("fill","");//最终的章节id
			 var  knowledge_Idsqukong = $.trim(knowledge_Ids);//去掉字符串两边的空格
			 if(storagejindu["que"+knowledge_Idsqukong] != null && storagejindu["que"+knowledge_Idsqukong] != "null"){
			     var  quest = storagejindu["que"+knowledge_Idsqukong].replace("que","");//该章节下最后做到的题（不同的章节缓存不同）
			     var  length = quest.replace("que","");//已做题目数
			    /*  console.log("length值："+length); */
			     $(".yizuotishu"+ i +"").text(length);//用户已经做题的数量
		    	 var  width = 1/timushu*100;//进度条初始值为1除以总数乘以100
			     var  widths = width*length;//每页进度占比等于初始值乘以页码
			     /* console.log("widths值："+length); */
			     $("#"+  sortCodes +"").css("width", widths + "%");//通过字符串拼接的方式给进度条宽度赋值
			 }
		     
		}
		
	})
	
	
	
	
	/* console.log("id的值："+openid);  */
    function  start(knowledge_Id){//点击开始练习后进入练习页面(这里使用了点击事件的循环，会根据点击的按钮传入对应的参数)
    	 var  kemu = $(".kemu").text();//根据科目查询出科目下的章节
    	    /*  alert("题型："+kemuZYHXY);  */ 
    	  /*   alert("选择的科目："+kemu);  */
    	 window.location.href="../tfcpractice/practice?knowledge_Id="+knowledge_Id+"&kemu="+kemu+"&openid="+openid+"&headimgurl="+headimgurl+"&nickname="+nickname+"&days="+days+"&integral="+integral+"&dateTime="+dateTime+"&kemuZYHXY="+kemuZYHXY+"&lv1state="+lv1state+"&lv2state="+lv2state+"&lv3state="+lv3state+"";
	}
 	
	
	
	function switchs(){//切换章节（回到章节选择页面）
		  window.location.href="../switch/switch";
	}
	
	
	
</script>
</html>