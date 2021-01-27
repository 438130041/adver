<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
    <!-- <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
    <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  -->
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520">
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <title>2020考前密押卷</title>
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
  *{
         margin: 0;
         padding: 0;
   }   

 body{
        max-width: 1080px;
        min-width: 320px;
        margin: 0 auto;
    }
   
   .beijingtupian{
   	 	background:url("../resources/admin/login/img/miyabeijinditu.jpg") no-repeat ;
   	 	width:100%;
   		height:100%;
		background-size: 100% 100%;
   	}


	.subject{
		width: 75%;
		height: 2rem;
		margin-top: .7rem;
		margin-left: 50%;
    	transform: translate(-50%);
	}
	.subject>a>img{
		width: 100%;
		height: 100%;
	}

	.ann{
		width: 100%;
		height: 100%;
		position: relative;
	}
	.ann-n{
		width: 100%;
		position: absolute;
		top: 29%; 
	}
	@media only screen and (min-width: 1023px) {
		.subject{
			height: .6rem;
		}
	}
   	/* .zyydiv{
   		width:100%;
   		height:46px;
   		position:absolute;
   		left: o.6rem;
   		margin-top:0.27rem;
   		border-radius:15px;
   	 }
   	.imgzyy{
   		width:100%;
   		height:100%;
   	 }
   	 .ann{


   	  }
   	  .yxydiv{
   	  		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:2.7rem;
   			border-radius:15px;
   	   }
   	  .imgyxy{
   	  		width:100%;
   			height:100%;
   	   }
   	 .zyediv{
   	 	    width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:5.2rem;
   			border-radius:15px;
   	  }
   	  .imgzye{
   	  		width:100%;
   			height:100%;
   	   }
   	  .yxediv{
   	  		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:7.7rem;
   			border-radius:15px;
   	   }
   	  .imgyxe{
   	  		width:100%;
   			height:100%;
   	   }
   	   .zyzhdiv{
   	   		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:10.2rem;
   			border-radius:15px;
   	    }
   	   .imgzyzh{
   	   		width:100%;
   			height:100%;
   	    }
   	   .yxzhdiv{
   	   		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:12.7rem;
   			border-radius:15px;
   	    }
   	   .imgyxzh{
   	   		width:100%;
   			height:100%;
   	    }
   	   .ysdiv{
   	   		width:100%;
   			height:46px;
   			position:absolute;
   			left: o.6rem;
   			margin-top:15.2rem;
   			border-radius:15px;
   	    }
   	   .imgys{
   	   		width:100%;
   			height:100%;
   	    } */
   	   .yanse{
	 		background-color:#808080;
		 }
   </style>
</head>
<body>
	<div class="beijingtupian">
		<div class="ann">
			<div class="ann-n">
		   		<%-- <div class="zyydiv subject"  onclick="ZYY()">
					 <a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/miyajuan/miyaZYY.pdf"   class=""   id="imgs" >
					  		 <img alt="" src="../resources/admin/login/miya/ZYY.png"  class="imgzyy">
					</a>
		 		</div>
		 		<div class="yxydiv subject"  onclick="YXY()">
		 			<a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/miyajuan/miyaYXY.pdf"   class=""   id="imgs">
					  		<img alt="" src="../resources/admin/login/miya/YXY.png"  class="imgyxy">
					</a>
		 		</div> 
		 		<div class="zyediv subject" onclick="ZYE()">
		 			<a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/miyajuan/miyaZYE.pdf"   class=""   id="imgs">
					  		<img alt="" src="../resources/admin/login/miya/ZYE.png"  class="imgzye">
					</a>
		 		</div>
		 		<div class="yxediv subject"  onclick="YXE()">
		 			<a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/miyajuan/miyaYXE.pdf"   class=""   id="imgs">
					  		<img alt="" src="../resources/admin/login/miya/YXE.png"  class="imgyxe">
					</a>
		 		</div>
		 		<div class="zyzhdiv subject"  onclick="ZYZH()">
		 			<a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/miyajuan/miyaZYZH.pdf"   class=""   id="imgs">
					  		<img alt="" src="../resources/admin/login/miya/ZYZH.png"  class="imgzyzh">
					</a>
		 		</div>
		 		<div class="yxzhdiv subject" onclick="YXZH()">
		 			<a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/miyajuan/miyaYXZH.pdf"   class=""   id="imgs"   >
					  		<img alt="" src="../resources/admin/login/miya/YXZH.png"  class="imgyxzh">
					</a>
		 		</div>
		 		<div class="ysdiv subject"  onclick="YS()">
		 			<a  href="../resources/admin/PDFJS/web/viewer.html?file=${pageContext.request.contextPath}/resources/admin/login/miyajuan/miyaYS.pdf"   class=""   id="imgs">
					  		<img alt="" src="../resources/admin/login/miya/YS.png"  class="imgys">
					</a>
				 </div> --%>
			</div>
		</div>
	</div>

<script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
<script type="text/javascript">
	
	
	
	function  YXY(){//药学专业知识一按钮
		
    		$(".yxydiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".yxydiv").removeClass("yanse"); 
			},60);
		/* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});  */ 
		
	   /*  var kemu = "YXY";
		window.location.href="../daankemu/miyachakan?kemu="+kemu+""  */
	}
	function  YXE(){//药学专业知识二按钮
		
		$(".yxediv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".yxediv").removeClass("yanse"); 
			},60);
		 /* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		}); */ 	
		
		/*  var kemu = "YXE";
		 window.location.href="../daankemu/miyachakan?kemu="+kemu+"" */ 
	}
	function YXZH(){//药学综合知识与技能按钮
		
		$(".yxzhdiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".yxzhdiv").removeClass("yanse"); 
			},60);
		/* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
					
				layer.close(layerindex);//弹框消失
		}); */ 
		
		/* var kemu = "YXZH";
		window.location.href="../daankemu/miyachakan?kemu="+kemu+""  */ 
	}
	function ZYY(){//中药学专业知识一按钮
		
		$(".zyydiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".zyydiv").removeClass("yanse"); 
			},60);
		$(".titls").text("中药学专业知识一");
		/* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});  */
		
		
		 /* var kemu = "ZYY";
		window.location.href="../daankemu/miyachakan?kemu="+kemu+"" */  
	}
	function ZYE(){//中药学专业知识二按钮
		
		$(".zyediv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".zyediv").removeClass("yanse"); 
			},60);
		/* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});  */ 
		
		/* var  kemu = "ZYE";
		window.location.href="../daankemu/miyachakan?kemu="+kemu+""  */
	}
	function ZYZH(){//中药学综合知识与技能按钮
		
		$(".zyzhdiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".zyzhdiv").removeClass("yanse"); 
			},60);
		/* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});  */ 
		
		/*  var kemu = "ZYZH";
		window.location.href="../daankemu/miyachakan?kemu="+kemu+"" */  
	}
	function YS(){//药事管理与法规按钮
		
		$(".ysdiv").addClass("yanse");
		setTimeout(function(){//ajax延时执行（因为文件夹中的图片刷新会延时，文件夹中的图片刷新出来后在将图片放入标签中才能显示出来）
				$(".ysdiv").removeClass("yanse"); 
			},60);
		/* var layerindex=layer.confirm('考试暂未开始!', 
				{
			      title:'提醒',
				  btn: ['确定'] //按钮
				}, function(){
			layer.close(layerindex);//弹框消失
		});   */
		
		/* var  kemu = "YS";
		window.location.href="../daankemu/miyachakan?kemu="+kemu+"" */  
	} 
</script>
</body>
</html>