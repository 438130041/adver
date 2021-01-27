<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
     <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  -->
    <!-- <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
   <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel="stylesheet" href="css/paihangbang.css">
    <title>Document</title>
    <script>
	</script>
 </head>
 
 <style>
 	html {
  font-size: 50px;
}
* {
  margin: 0;
  padding: 0;
}
body {
  min-width: 320px;
  width: 750px;
  margin: 0 auto;
  line-height: 1.5;
  font-family: Arial, Helvetica;
  background: #F2F2F2;
}
ul {
  list-style: none;
}
@media screen and (min-width: 320px) {
  html {
    font-size: 21.33333333px;
  }
}
@media screen and (min-width: 360px) {
  html {
    font-size: 24px;
  }
}
@media screen and (min-width: 375px) {
  html {
    font-size: 25px;
  }
}
@media screen and (min-width: 384px) {
  html {
    font-size: 25.6px;
  }
}
@media screen and (min-width: 400px) {
  html {
    font-size: 26.66666667px;
  }
}
@media screen and (min-width: 414px) {
  html {
    font-size: 27.6px;
  }
}
@media screen and (min-width: 424px) {
  html {
    font-size: 28.26666667px;
  }
}
@media screen and (min-width: 480px) {
  html {
    font-size: 32px;
  }
}
@media screen and (min-width: 540px) {
  html {
    font-size: 36px;
  }
}
@media screen and (min-width: 720px) {
  html {
    font-size: 48px;
  }
}
@media screen and (min-width: 750px) {
  html {
    font-size: 50px;
  }
}
.wrapper {
  width: 15rem;
}
.headr {
  position: fixed;
  width: 15rem;
  height: 6.8rem;
  background: #fdaa2d;
  z-index: 1;
}
.head {
  position: absolute;
  top: 1.4rem;
  left: 1.7rem;
  width: 3.6rem;
  height: 3.6rem;
  border-radius: 50%;
  border: 2px solid #ffffff;
  overflow: hidden;
}
.head img {
  width: 3.62rem;
  height: 3.62rem;
}
.head-pm {
  position: absolute;
  top: 4rem;
  left: 1.1rem;
  width: 5rem;
  height: 1.2rem;
  line-height: 1.2rem;
  text-align: center;
  font-size: 0.8rem;
  background: url(../resources/admin/login/img/pm.png) 0rem -2rem no-repeat;
  background-size: 5rem 6rem;
  color: #ffffff;
}
.results {
  position: absolute;
  top: 1.6rem;
  right: 0;
  width: 8rem;
  height: 4rem;
}
.name,
.major,
.fraction,
.timeuse {
  font-size: 0.6rem;
  padding: 0.14rem 0;
  font-weight: 540;
  color: #fff;
}
.fraction {
  float: left;
}
.timeuse {
  float: right;
  padding-right: 0.7rem;
}
.ranking {
  position: absolute;
  top: 6.8rem;
  width: 14.6rem;
  padding-left: 0.2rem;
}
.brand-top {
  display: flex;
  width: 100%;
  height: 2.6rem;
  border-bottom: 1px solid #cccccc;
}
.brand-flag {
  width: 10%;
  height: 100%;
}
.brand-flag p {
  text-align: center;
  line-height: 2.6rem;
  font-size: 0.7rem;
}
.brand-flag .P {
  display: none;
}
.goods {
  display: flex;
  width: 56%;
  height: 100%;
}
.time {
  width: 15%;
  height: 100%;
}
.fractions {
  width: 19%;
  height: 100%;
}
.goods-portrait {
  width: 2rem;
  height: 2rem;
  margin: 0.3rem 0.4rem 0 0.3rem;
  border-radius: 50%;
  overflow: hidden;
}
.goods-portrait img {
  width: 2rem;
  height: 2rem;
}
.goods-name {
  font-size: 0.6rem;
  line-height: 2.6rem;
}
#time {
  display: block;
  font-size: 0.6rem;
  line-height: 2.6rem;
}
#fractions {
  display: block;
  line-height: 2.6rem;
  color: #fdaa2d;
}
.first {
  background: url(../resources/admin/login/img/first.png) 0.2rem 0.8rem no-repeat;
  background-size: 1rem;
}
.second {
  background: url(../resources/admin/login/img/second.png) 0.2rem 0.8rem no-repeat;
  background-size: 1rem;
}
.third {
  background: url(../resources/admin/login/img/third.png) 0.2rem 0.8rem no-repeat;
  background-size: 1rem;
}
 	
 </style>
<body>	
	<div id="openid">${openid}</div>
    <div class="wrapper">
        <div class="headr">
            <div class="head">
                <img src="${headimgurl}" alt="">
            </div>
            <div class="head-pm">
                <div class="pm">第<span id="pm">100</span>名</div>
            </div> 
            <div class="results">
                <div class="details"> 
                    <div class="name">姓名:<span id="nickname">${nickname}</span></div>
                    <div class="major">${Knowledge_Name}</div><!-- 提型名 -->
                    <div>
                        <div class="fraction">分数：<span id="fraction">${fractionPe}</span>分</div>
                        <div class="timeuse">用时：<span id="timeuse">00:${int_second}</span></div>
                    </div>            
                </div>
            </div>
        </div>
        <div class="ranking">
            <ul>
                <li class="brand-top">
                    <div class="brand-flag first">
                        <p class="P">1</p>
                    </div>
                    <div class="goods">
                        <div class="goods-portrait">
                            <img src="" alt="" id="img0">
                        </div>
                        <span class="goods-name">昵称：<span id="name0"></span></span>
                    </div>
                    <div class="time">
                        <span id="time">00:<span id="time0"></span></span>
                    </div>
                    <div class="fractions">
                        <span id="fractions"><span id="fractions0"></span></span>
                    </div>
                </li>
                <li class="brand-top">
                    <div class="brand-flag second">
                        <p class="P">2</p>
                    </div>
                    <div class="goods ">
                        <div class="goods-portrait">
                            <img src="" alt="" id="img1">
                        </div>
                        <span class="goods-name">昵称：<span id="name1"></span></span>
                    </div>
                    <div class="time">
                        <span id="time">00:<span id="time1"></span></span>
                    </div>
                    <div class="fractions">
                        <span id="fractions"><span id="fractions1"></span></span>
                    </div>
                </li>
                <li class="brand-top">
                    <div class="brand-flag third">
                        <p class="P">3</p>
                    </div>
                    <div class="goods">
                        <div class="goods-portrait">
                            <img src="../resources/admin/login/img/21.jpg" alt="">
                        </div>
                        <span class="goods-name">昵称</span>
                    </div>
                    <div class="time">
                        <span id="time">00:00</span>
                    </div>
                    <div class="fractions">
                        <span id="fractions">100</span>
                    </div>
                </li>
                <!-- <li class="brand-top">
                    <div class="brand-flag">
                        <p>4</p>
                    </div>
                    <div class="goods">
                        <div class="goods-portrait">
                            <img src="../resources/admin/login/img/21.jpg" alt="">
                        </div>
                        <span class="goods-name">昵称</span>
                    </div>
                    <div class="time">
                        <span id="time">00:00</span>
                    </div>
                    <div class="fractions">
                        <span id="fractions">100</span>
                    </div>
                </li> -->
                <!-- <li class="brand-top">
                    <div class="brand-flag">
                        <p>5</p>
                    </div>
                    <div class="goods">
                        <div class="goods-portrait">
                            <img src="../resources/admin/login/img/21.jpg" alt="">
                        </div>
                        <span class="goods-name">昵称</span>
                    </div>
                    <div class="time">
                        <span id="time">00:00</span>
                    </div>
                    <div class="fractions">
                        <span id="fractions">100</span>
                    </div>
                </li> -->
            </ul>
            <ul class="paiming" >
            
            </ul>
            
        </div>
    </div>
    
    <script type="text/javascript">
    	$(function(){
    		var  openid = $("#openid").text();
    		paiming(openid);
    	})
    	
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
        	 			$("#time"+i).text(weixins[i].int_second);
        	 			$("#fractions"+i).text(weixins[i].percentage);
        	 	} 
    	 	
    	 }
    	 
    	 
    	 //
    </script>
</body>
</html>