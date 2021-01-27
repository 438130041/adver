<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="haibao">
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
    <title>获取连接</title>
    <style>
		*{
          margin: 0;
          padding: 0;
        }
	    #img{
	    	width:50%;
	    	height:50%;
	    }
	    .imgdiv{
	    	margin-top:30%;
	    	margin-left:32%;
	    }
	    .textp{
	    	text-align:center;
	    	margin-top:10%;
	    	font-size:30px;
	     }
	    #User_Name{
	    	width:70%;
	    	height:40px;
	     }
	    .zhanghao{
	    	 position:relative;
	    	 left:15%;
	    	 margin-top:10%;
	     }
	     #codes{
	     	width:70%;
	     	height:40px;
	     }
	    .daima{
	    	position:relative;
	    	left:15%;
	    	margin-top:3%;
	    	
	    }
	    #anns{
	    	width:180px;
	    	height:40px;
	    	position:relative;
	    	left:25%;
	    	margin-top:10%;
	    	font-size:20px;
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
	  #shop1{
	  	position:relative;
	  	left:3%;
	  	padding-top:5%;
	  	text-align:center;
	  } 
	  .tishispan{
	  	position:relative;
	  	left:6%;
	  	text-align:center;
	  	
	  }
	  .tishi{
	  	padding-top:3%;
	  }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div class="yemianzhuti">
			<!-- 晶药师logo -->
			<div  class="imgdiv">
				<img alt="" src="../resources/admin/login/img/logo.png"  id="img">
			</div>
			<div class="text">
				<p class="textp"> 晶药师药考冲刺挑战赛 </p>
			</div>
			<!-- 老师信息输入框 -->
			<div class="xinxishuru">
				<div class="zhanghao">
					 <input  class="form-control"  id="User_Name" name="User_Name"  type="text" placeholder="老师账号(默认姓名)">
				</div>
				<div class="daima">
					 <input  class="form-control"  id="codes" name="codes"  type="text" placeholder="专属代码(默认为密码)">
				</div>
			</div>
			<!-- 按钮 -->
			<div  class="anndiv">
				<button type="button" class="btn btn-success"  id="anns"  onclick="copyText('shop1')" >获取链接</button>
			</div>
			<!-- 链接显示 -->
			<div id="shop1">
				
			</div>
			<!-- 提示 -->
			<div class="tishi"> 
				<span class="tishispan">
						
				</span>
			</div>
	</div>
	<script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
<script type="text/javascript">
		
		
		//点击获取专属链接
		function  copyText(shop){
			var  openid = $(".openid").text();
			var  headimgurl = $(".headimgurl").text();
			var  nickname = $(".nickname").text();
			var  User_Name = $("#User_Name").val();
			var  codes = $("#codes").val();
			/* alert("codes:"+codes); */
			
			
			 if(User_Name==null||User_Name==""){
	             layer.msg("请输入姓名",{icon:3})
	             return false;
	         }
			 else  if(codes == null || codes == ""){
				 layer.msg("请输入专属代码",{icon:3})
	             return false;
			}
			else {
				//老师输入的专属代码后台验证
				  $.ajax({
						url:'../GetConnected/validation',
						dataType:'json',
						type:'post',
						data:{
							User_Name:User_Name,
							codes:codes
						}, 
						success:function(data){
								if(data.type == "success"){
									//如果验证成功则生成老师个人专属链接(发进群里)
									var  codes = data.codes;
									/* alert("验证成功生成老师个人专属连接") */
									var  http = "http://practice.jingyaoshi.net/dakawxLogin?lscodes="+codes+"";
									/* var  tishi = "链接已复制,请将链接生成专属二维码,贴至活动海报上"; */
									 $.ajax({
						                url:"../copywriter/copywriter",
						                type:'post',
						                dataType:'json',
						                data:{url:http,codes:codes},
						                success:function(data){
						                    if(data.type == 'success'){
						                    	layer.msg("专属海报已生成",{icon:3});
						                    	
						                    	//对代码进行判断，进入不同的页面
						                    	if(codes == "11" || codes == "12" || codes == "13"  || codes == "14" || codes == "15" || codes == "16"
													|| codes == "17"  || codes == "18" || codes == "19" || codes == "21" || codes == "22" || codes == "23"
														|| codes == "24" || codes == "25" || codes == "26" || codes == "27" || codes == "28" || codes == "29"
														|| codes == "30" || codes == "31" || codes == "32" || codes == "33" || codes == "34" || codes == "35"
														|| codes == "36" || codes == "37" || codes == "38" || codes == "39" || codes == "40" || codes == "41"
														|| codes == "42" || codes == "50" || codes == "51" || codes == "52" || codes == "53" || codes == "54"
														|| codes == "55" || codes == "56" || codes == "57" || codes == "58" || codes == "59" || codes == "60"
														|| codes == "91" || codes == "92" || codes == "93" || codes == "61" || codes == "62" || codes == "63"
														|| codes == "64" || codes == "65" || codes == "66" || codes == "99"){
						                    		var  feizhenshixueyuan  = "feizhenshixueyuan";
						                    		window.location.href="../copywriter/haibao?codes="+codes+"&feizhenshixueyuan="+feizhenshixueyuan+"";
						                    	}else {
						                    	
						                    		var feizhenshixueyuan  = "zhenshixueyuan";
						                    		window.location.href="../copywriter/haibao?codes="+codes+"&feizhenshixueyuan="+feizhenshixueyuan+"";
												}
						                    	
						                    }else{
						                        alert("页面出错请联系管理员！");
						                    }
						                }
						                        
						        })
									
									
								}else {
									alert("您输入的用户名或代码错误")
								}
							}
						}); 
				
			}
			
		};
		
		
</script>
</body>
</html>