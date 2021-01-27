<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
  <!--   <script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script> -->
 <!--    <script src="../resources/admin/layui-2.5.4/layui.js"></script>
    <link rel="stylesheet" href="../resources/admin/layui-2.5.4/css/layui.css"> -->
    <title>学习打卡</title>
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
  		.tupianxianshi{
  			border:1px solid red;
  			height:2.56rem;
			  width:86%;
			  position: absolute;
			  top: 2.99rem;
			  left: 7%;
  			/* background-color:blue; */
  		}
  		.tishi{
  			margin-top:5%;
  			/* margin-left:1%; */
  			text-align:center;
  			font-size:20px;
  		}
  	.biji{
  		border:1px solid #00FF00;
  		width:25%;
  		height:130px;
  		margin-top:5%;
  		margin-left:5%;
  		float:left;
  	}
  	.shipin{
  		border:1px solid #00FF00;
  		width:25%;
  		height:130px;
  		margin-top:5%;
  		margin-left:7%;
  		float:left;
  	 }
  	 .jietu{
  	 	border:1px solid #00FF00;
  		width:25%;
  		height:130px;
  		margin-top:5%;
  		margin-left:7%;
  		float:left;
  	 }
  	 .tupianjuli{
  	 	overflow: auto;
  	  }
  	 
  	 .texttishi{
  	 	/* border:1px solid red; */
  	 	height:100px;
  	 	width:100%;
  	 	overflow: auto;  
  	 	
  	 }
  	.bijitext{
  		margin-left:10%;
  		margin-top:3%;
  		float:left;
  	 }
  	.shipintext{
  		margin-left:17%;
  		margin-top:3%;
  		float:left;
  	 }
  	.zuotitext{
  		margin-left:18%;
  		margin-top:3%;
  		float:left;
  	 }
  	 #ann{
  	 	 width:40%;
  	 	 margin-left:5%;
  	 	 margin-top:-6%;
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
  	#imgs{
  		width:100%;
  		height: 100%;
  	}
  	#imgbiji{
  		width:100%;
  		height:100%;
  	}
  	#imgshipi{
  		width:100%;
  		height:100%;
  	}
  	#imgjietu{
  		width:100%;
  		height:100%;
  	}
  	.tupianshancuan{
  		padding-bottom:25px;
  	 }
  	#imgdaka{
  		width:100%;
  	 }
  	.header{
        margin: 0;
        padding: 0;
        height: 40px;
        background-color:#f7f7f8;
    }
    .heade>a{
             font-size: 18px;
             line-height: 40px;
             margin-left: 30px;
             color: #000
    }
    a:active, a:hover{
             text-decoration: none;
             outline: none;
    }
    .heade>a::before{
        content: "";
        width: 20px;
        height: 20px;
        position: absolute;
        top: 10px;
        left: 10px;
        background: url(../resources/admin/login/img/right.png) no-repeat center ;
        background-size:100% 100%;
        -webkit-transform: rotate(180deg);
        -moz-transform: rotate(180deg);
        -o-transform: rotate(180deg);
        -ms-transform: rotate(180deg);
        transform: rotate(180deg);
    }
   #daka{
   		width:40%;
   		margin-left:8%;
   		margin-top:-6%;
     }
    .Tbase64{
    	display:none;
     }
    .dakarenshu{
    	display:none;
    }
    #imgTs{
    	display:none;
    }
    #dituimg{
    	width:127%;
    	height:100%;
    	margin-top:-11.5%;
    	position:relative;
   		left:-12%;
   		float:left;
	 }
	 


	 .picture{
		 width: 100%;
		 height: 6rem;
		 position: relative;
	 }
	 .picture>img{
		 width: 100%;
		 height: 100%;
	 }
	 .wenben{
	 		border:1px;
	 		border-color:red;
	 		width:51%;
	 		height:20%;
	 	  /*   background-color:blue;  */
	 		position:relative;
	 		top:-89%;
	 		margin-left:10%;
	 		border-radius:7px;
	  }
	  .textp{
	  		text-align:center;
	  		margin-top:5%;
	   }
	  .huanwenzi{
	  		position:relative;
	 		top:-102%;
	  		margin-left:67%;
	   }
	   
	  #huanwenziann{
	  		width:135px;
	  		height:52px;
	  		font-size:23px;
	   }
	  #huanyijuimgs{
	  		width:95%;
	   		height:90%;
	   	}
	 .yanse{
	 	background-color:#808080;
	 }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div  class="Tbase64"></div>
	<div  class="dakarenshu">${dakarenshu}</div>
  <div class="col-md-12 header">
        <div class="heade"  onclick="fanhui()">
          <a href="javascript:;">返回</a>
       </div>
   </div>
	<div>
			<!-- <img alt="" src="../resources/admin/login/img/xuexidaka.jpg"  id="imgdaka"> -->
			<img alt="" src="../resources/admin/login/img/xuexidaka.jpg"  id="imgdaka">
	</div>
	
	<div  class="tupianshancuan">
	  <div class="picture">
		  <img src="../resources/admin/login/img/ditu.jpg" alt="">
		  <!-- 上传的图片显示 -->
		  <div class="tupianxianshi">
			<!-- 底图 -->
			<img alt="" src=""  id="imgs">
		  </div>
		  <div  class="wenben">
		  	<p  class="textp">${state}</p>
		  </div>
		  <div class="huanwenzi"   onclick="huanyiju()">
		        <img alt="" src="../resources/admin/login/img/huanyiju.png"  id="huanyijuimgs">
		  		<!-- <button type="button" class="btn btn-default"  id="huanwenziann">换一句</button> -->
		  </div>
	  </div>
		
		<!-- text -->
		<div class="tishi">
			上传举例：学习笔记,视屏学习,做题截图,下列三选一
		</div>
		<!-- 图片举例 -->
		<div class="tupianjuli">
			<!-- 学习笔记 -->
			<div class="biji">
				<img alt="" src="../resources/admin/login/img/imgbiji.png"  id="imgbiji">
			</div>
			<!-- 视屏学习 -->
			<div class="shipin">
				<img alt="" src="../resources/admin/login/img/imgshipi.png" id="imgshipi">
			</div>
			<!-- 做题截图 -->
			<div class="jietu">
				<img alt="" src="../resources/admin/login/img/imgjietu.png" id="imgjietu">
			</div>
		</div>
		<!-- text提示 -->
		<div class="texttishi">
			<div class="bijitext">
				<span >
				学习笔记
				</span>
			</div>
			<div class="shipintext">
				<span >
				视屏学习
				</span>
			</div>
			<div class="zuotitext">
				<span >
				做题截图
				</span>
			</div>
			
		</div>
    	 <button type="button" class="btn btn-primary btn-lg" id="ann"  onclick="tupian()">上传学习照</button>
		 <button type="button" class="btn btn-primary btn-lg" id="daka"  onclick="daka()">打卡</button>
		 <input type="file" id="photo-file" style="display:none;" >
		 <!-- <input type="file" id="photo-file" style="display:none;" onchange="upload()">  -->
		
	</div>
   <script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
<script type="text/javascript">
		
		function tupian(){
			/* alert("打开选择框"); */
			$("#photo-file").click();//打开图片选择框
			/* upload(); */
		}
		
		$("#photo-file").change(function () {
	        var m_this = this;
	        var imgurl = cutImageBase64(m_this, null, 200, 0.8);
	    });
		
		function cutImageBase64(m_this, id, wid, quality) {
			/* alert("进入图片上传"); */
	        var file = m_this.files[0];
	        var URL = window.URL || window.webkitURL;
	        var blob = URL.createObjectURL(file);
	        var base64;
	        var img = new Image();
	        img.src = blob;
	        /* alert("进入图片上传"); */
	        img.onload = function () {
	        	/* alert("进入图片上传"); */
	            var that = this;
	            //生成比例
	            var w = that.width,
	                h = that.height,
	                scale = w / h;
	            w = wid || w;
	            h = 200;
	            //生成canvas
	            var canvas = document.createElement('canvas');
	            var ctx = canvas.getContext('2d');
	            $(canvas).attr({
	                width: w,
	                height: h
	            });
	            ctx.drawImage(that, 0, 0, w, h);
	            // 生成base64
	            base64 = canvas.toDataURL('image/jpeg', quality || 0.8);
	            // console.log(base64)
	            $("#imgs").attr("src", base64);
	            $(".Tbase64").text(base64);
	            layer.msg("图片上传成功,请点击打卡按钮进行打卡",{icon:3});
	           	/* var  openid  = $(".openid").text();
	           	CucuenTuPian(openid,base64);  */
	        };

	    }
		
	function daka(){
		var  img  =  $("#imgs").attr("src");
		if(img == "" || img == null){
				layer.msg("请先上传学习照",{icon:3});
				return;
	   		}
		
		if(img != "" || img != null){
			var  Tbase64 = $(".Tbase64").text();
			var  openid  = $(".openid").text();
           	CucuenTuPian(openid,Tbase64);
		}
		
	}
		
		
	  function  CucuenTuPian(openid,imageurl){
		  /* alert("将数据存入数据库中"); */
		  /*   window.location.href="../urltupian/urltupian?openid="+openid+"&imageurl="+imageurl+""; */
		  var  state = $(".textp").text();
		   $.ajax({
		    	url:'../urltupian/urltupian',
		    	dataType:'json',
		    	type:'post',
		    	data:{openid:openid,dakaurl:imageurl,state:state},
		    	success:function(data){
		    		if(data.type == 'success'){
		    			 $("#imgs").attr("");
		    			 layer.msg("打卡成功",{icon:3});
		    			 var  dakarenshu  = $(".dakarenshu").text();
		           	     window.location.href="../lipingzhanshi/dajaddaka?openid="+openid+"&dakarenshu="+dakarenshu+"";
		    		}else{
						alery("页面出错请联系管理员！");
					}
		    		
		    	}
		    	
		    }); 
		  
	  } 
		
		 
	 //换一句
	 function huanyiju(){
		 $("#huanyijuimgs").addClass("yanse");
		 setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
 			$("#huanyijuimgs").removeClass("yanse");
					},60);
		 $.ajax({
             url:"../tupianshancuan/Pictureidea",
             type:'post',
         success:function(data){
             if(data.type == 'success'){
            	 var  state = data.state;
            	 $(".textp").text(state);
             }else{
                 alert("页面出错请联系管理员！");
             }
         }
                 
 		})
		 
	 }
	  
		 
	//返回
	function  fanhui(){
				var  openid  = $(".openid").text();
				window.location.href="../paihanban/paihanban?openid="+openid+"";
		}
		
	
</script>
</body>
</html>