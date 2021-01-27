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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
    <title>中奖记录</title>
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
            background: rgb(243, 243, 243);
        }
        .wrapper{
            padding-bottom: 100px;
            
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
        .Points-exchange{
            margin-top: 0.6rem;
        }
        .Points-exchange ul li{
            list-style: none;
        }
        .Integral-acquisition{
            width: 90%;
            height: 2.5rem;
            margin: 0 auto;
            /* background: url(./images/bg.jpg) no-repeat center; */
            background: url(../resources/admin/login/img/bg.jpg) no-repeat center;
            background-size: 100% 100%;
            font-size: .3rem;
            position: relative;
            margin-top: .3rem;
        }
        .Integral-acquisition-p>p{
            margin: 0.55rem .8rem;
            display: inline-block;
        }
        .Integral-acquisition-jf>p{
            margin-left: .8rem;
            margin-top: .2rem;
            float: left;
        }
        .Integral-acquisition-jf>p>span{
            font-size: 0.4rem;
        }
        .duihuan{
            width: 1.5rem;
            height: .5rem;
            background: #ffcc66;
            float: right;
            margin-right: .6rem;
        }
        .duihuan>a{
            display: block;
            text-align: center;
            line-height: .5rem;
            font-size: .25rem;
        }
        .duihuan a{
        	text-decoration:none;
        }
        .heade a{
        	text-decoration:none;
          }
        .openid{
        	display:none;
        }
       .dianji{
       		margin-top:10%;
       		margin-left:15%;
       }
       #imgs{
       		width:100%;
       		height:100%;
       		position:relative;
       		left:-8%;
       		margin-top:3%;
       }
       #baojian{
       	position:relative;
       	top:-15%;
       }
      .lqfenxianye{
      		display:none;
      }
      #prize{
      	padding-top:25px;
		margin-left:12%;
       }
      #sflq{
      	display:none;
       }
      .fenxian{
      	display:none;
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
	<div class="lqfenxianye">${lqfenxianye}</div>
	<div class="fenxianzhojian">${fenxianzhojian}</div>
	<div class="codes">${codes}</div>
    <div class="wrapper">
        <div class="header">
            <div class="heade"  onclick="fanhui()">
                <a href="javascript:;">返回</a>
            </div>
        </div>
       <!--  <div  class="dianji">
        	<span>点击“前往兑换”进入商城点击“礼品兑换”</span>
        	<img alt="" src="../resources/admin/login/img/lipin.png"  id="imgs">
        </div> -->
        <div class="Points-exchange">
            
            <c:forEach items ="${insertjilu}" var = "insertjilu">
            	
            	<ul>
                <li> 
                    <div class="Integral-acquisition" >
                        <div class="Integral-acquisition-p">
                            <!-- <p>小病医生—— 全面覆盖药店常见病</p> -->
                             <div  id="prize"><p>${insertjilu.prize}</p></div>  
                        </div>
                        <div class="Integral-acquisition-jf">
                            <P>状态：<span  class="zhuantai">${insertjilu.state}</span></P> 
                            <div class="duihuan" onclick="duihuan${insertjilu.daima}()" >
                                <%-- <c:if test="${insertjilu.daima} == '联系老师'">
                                	<p>请联系班主任开课<p>
                                </c:if> --%>
                                <a href="javascript:;"  class="linqu">前往领取</a>
                                <div   id="sflq" class="${insertjilu.daima}">${insertjilu.state}</div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            	
            </c:forEach>
        </div>
    </div>
</body>	
	<script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
	<script src="http://crm.jingyaoshi.net/Scripts/bootstrap.min.js"></script>
	<script type="text/javascript">
	  	$(function(){
	 		var  openid = $(".openid").text();
	 		var  lqfenxianye  = $(".lqfenxianye").text();
	 		var  fenxianzhojian = $(".fenxianzhojian").text();
	 		var   codes = $(".codes").text();
	 		if(lqfenxianye == "lqfenxianye"){//查询出已有奖品
 	 			window.location.href="../jilu/jiluget?openid="+openid+"&codes="+codes+"";
	 			
	 		}
	 	}) 
	 	
	 	
		//慢病专员
	 function  duihuan340(){
			var  openid = $(".openid").text();
	  		var   codes = $(".codes").text();
	  		var   text = $(".340").text();
	  		var   yininqu =new  RegExp("已领取");
	  		if(yininqu.test(text)){
	  			layer.msg("中奖物品已领取",{icon:3});
	  		}else {
	  			$.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid}, 
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							window.location.href="http://shop.jingyaoshi.net/details?GoodsID=340";
						}
					}
				});
	  			
			}
	  		
	  	}
	 	//小病医生
	 	function  duihuan339(){
	 		var  openid = $(".openid").text();
	  		var   codes = $(".codes").text();
	  		var   text = $(".339").text();
	  		var   yininqu =new  RegExp("已领取");
	 		if(yininqu.test(text)){
	 			layer.msg("中奖物品已领取",{icon:3});
	 		}else {
	 			$.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid}, 
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							window.location.href="http://shop.jingyaoshi.net/details?GoodsID=339";
						}
					}
				});
	 			
			}
	 		
	 	}
	   //保健按摩师
	 	function  duihuan342(){
	 		var  openid = $(".openid").text();
	  		var   codes = $(".codes").text();
	  		var   text = $(".342").text();
	  		var   yininqu =new  RegExp("已领取");
		    if(yininqu.test(text)){
		    	layer.msg("中奖物品已领取",{icon:3});
		    }else {
		    	$.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid}, 
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							window.location.href="http://shop.jingyaoshi.net/details?GoodsID=342";
						}
					}
				});
			}
		    
	 	}
	  //健康管理师
	 	function  duihuan341(){
	 		var  openid = $(".openid").text();
	  		var   codes = $(".codes").text();
	  		var   text = $(".341").text();
	  		var   yininqu =new  RegExp("已领取");
		  	if(yininqu.test(text)){
		  		layer.msg("中奖物品已领取",{icon:3});
		  	}else {
		  		$.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid}, 
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							window.location.href="http://shop.jingyaoshi.net/details?GoodsID=341";
						}
					}
				});
			}
	 	}
	  //单科刷分题库
	 	function  duihuan336(){
	 		var  openid = $(".openid").text();
	  		var   codes = $(".codes").text();
	  		var   text = $(".336").text();
	  		var   yininqu =new  RegExp("已领取");
		  	if(yininqu.test(text)){
		  		layer.msg("中奖物品已领取",{icon:3});
		  		return;
		  	}else {
		  		$.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid}, 
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "shuanfenti";
					  		var  openid  = $(".openid").text();
					 		window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
		  		
			}
	 	}
	 	//单科密押卷
	 	function  duihuan337(){
	 		var  openid = $(".openid").text();
	  		var   codes = $(".codes").text();
	  		var   text = $(".337").text();
	  		var   yininqu =new  RegExp("已领取");
	 		if(yininqu.test(text)){
	 			layer.msg("中奖物品已领取",{icon:3});
	 		}else {
	 			$.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid}, 
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "miyajuan";
				 			var  openid  = $(".openid").text();
				 			window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
			}
	 	}
	 	
    //新增中奖物品
	 	//全科冲刺礼包
	 	function  duihuan551(){
	 		var  openid = $(".openid").text();
	  		var   codes = $(".codes").text();
	  		var   text = $(".551").text();
	  		var   yininqu =new  RegExp("已领取");
    	  if(yininqu.test(text)){
    		  layer.msg("中奖物品已领取",{icon:3});
    	  }	else {
    		  $.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid}, 
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "qianfenlibao";
				    		var  openid  = $(".openid").text();
				    	    window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
			}
    	}
	 	//习题解析班
	 	function  duihuan552(){
	 		var  openid = $(".openid").text();
	  		var   codes = $(".codes").text();
	  		var   text = $(".552").text();
	  		var   yininqu =new  RegExp("已领取");
	 		if(yininqu.test(text)){
	 			layer.msg("中奖物品已领取",{icon:3});
	 		}else {
	 			$.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid}, 
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "xitijiexiban";
				    		var  openid  = $(".openid").text();
				    		window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
			}
	 		
	 	}
	 //最难科目突破班
	 function  duihuan553(){
		 var  openid = $(".openid").text();
	  	 var   codes = $(".codes").text();
	  	var   text = $(".553").text();
  		var   yininqu =new  RegExp("已领取");
		 if(yininqu.test(text)){
			 layer.msg("中奖物品已领取",{icon:3});
		 }else {
			 $.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid},  
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "tupoban";
					    	 var  openid  = $(".openid").text();
					    	 window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
		}
	 }
	 //救命抢分班
	 function  duihuan554(){
		 var  openid = $(".openid").text();
	  	 var   codes = $(".codes").text();
	  	var   text = $(".554").text();
  		var   yininqu =new  RegExp("已领取");
		 if(yininqu.test(text)){
			 layer.msg("中奖物品已领取",{icon:3});
		 }else {
			 $.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid},  
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "joumingban";
					    	 var  openid  = $(".openid").text();
					    	 window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
		}
	 }
	//vip刷分题库
	function  duihuan555(){
		var  openid = $(".openid").text();
	  	 var   codes = $(".codes").text();
	  	var   text = $(".555").text();
  		var   yininqu =new  RegExp("已领取");
		if(yininqu.test(text)){
			layer.msg("中奖物品已领取",{icon:3});
		}else {
			 $.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid},  
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{

							var  leixing  =  "vipshuanfenti";
					    	var  openid  = $(".openid").text();
					    	window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
		}
	}
	//16天集训营
	function  duihuan556(){
		var  openid = $(".openid").text();
	  	 var   codes = $(".codes").text();
	  	var   text = $(".556").text();
  		var   yininqu =new  RegExp("已领取");
		if(yininqu.test(text)){
			layer.msg("中奖物品已领取",{icon:3});
		}else {
			 $.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid},  
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "jixuenying";
					    	var  openid  = $(".openid").text();
					    	window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
		}
	}
	//终极密押卷
	function  duihuan557(){
		var  openid = $(".openid").text();
	  	 var   codes = $(".codes").text();
	  	var   text = $(".557").text();
  		var   yininqu =new  RegExp("已领取");
		if(yininqu.test(text)){
			layer.msg("中奖物品已领取",{icon:3});
		}else {
			 $.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid},  
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
								title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "zhojimiyajuan";
					    	var  openid  = $(".openid").text();
					    	window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
		}
	}
	//押题冲刺班
	function duihuan558(){
		var  openid = $(".openid").text();
	  	 var   codes = $(".codes").text();
	  	var   text = $(".557").text();
  		var   yininqu =new  RegExp("已领取");
		if(yininqu.test(text)){
			layer.msg("中奖物品已领取",{icon:3});
		}else {
			 $.ajax({
					url:'../fenxianyemian/fenxianzhuce',
					dataType:'json',
					type:'post',
					data:{openid:openid},  
					success:function(data){
						if(data.type == 'success'){//没有报名
							var layerindex=layer.confirm('您还没有报名打卡活动，快去报名吧~', 
									{
									title:'提醒',
									btn: ['确定','取消'] //按钮
									}, function(){
										var openid = $(".openid").text();
										var   codes = $(".codes").text();
										if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
											|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
											|| codes == "113"
											){
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}else {
												window.location.href="../fenxianyemian/zhucebaoming?openid="+openid+"&codes="+codes+"";
											}
									 },function(){
										this.hide();
									 });
						}else{
							var  leixing  =  "yatichoci";
					    	var  openid  = $(".openid").text();
					    	window.location.href="../xuanzeyaokaidkemu/xuanzeyaokaidkemu?leixing="+leixing+"&openid="+openid+"";
						}
					}
				});
		}
	}
	
	
	
	
	
	
	 	
	 	
	 	
		//页面返回
		function  fanhui(){
			var  openid = $(".openid").text();
			window.location.href="../paihanban/paihanban?openid="+openid+"";
		}
	</script>
	
</html>