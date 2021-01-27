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
    <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script> -->
    <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>
    <!-- <script src="../resources/admin/layui-2.5.4/layui.js"></script>
    <link rel="stylesheet" href="../resources/admin/layui-2.5.4/css/layui.css"> -->
     <!-- <link rel="stylesheet" href="../resources/admin/js/layer/mobile/need/layer.css">  --> 
    <title>参与挑战赛</title>
    <style>
		*{
          margin: 0;
          padding: 0;
        }
		#img{
			width:90%;
			height:100%;
		 }
		.imgdiv{
			position:relative;
	    	left:5%;
	    	margin-top:10%;
		} 
		 
	    #User_Name{
	    	width:70%;
	    	height:40px;
	    }
	   .xinming{
	   	 	position:relative;
	    	left:15%;
	    	margin-top:15%;
	   } 
	  #number{
	     	width:70%;
	     	height:40px;
	     }
	  .dianhua{
	   	 	position:relative;
	    	left:15%;
	    	margin-top:5%;
	   }
	  .jike{
	  		position:relative;
	    	left:12%;
	    	margin-left:3%;
	    	margin-top:5%;
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
	  .codes{
	  		display:none;
	  }
	 .feizhenshixueyuan{
	 	display:none;
	  }
    </style>
</head>
<body>
	<div class="openid">${openid}</div>
	<div class="headimgurl">${headimgurl}</div>
	<div class="nickname">${nickname}</div>
	<div class="codes">${codes}</div>
	<div class="canyu">
		<!-- 海报图片 -->
		<div class="imgdiv">
			<img alt="" src="../resources/admin/login/img/yinyexuanyuandenlu.jpg"  id="img">
		</div>
		<!-- 学员信息输入框 -->
		<div class="xuanyuanxinxi">
			<div class="xinming">
				 <input  class="form-control"  id="User_Name" name="User_Name"  type="text" placeholder="请填写您的姓名">
			</div>
			<div class="dianhua">
				 <input  class="form-control"  id="number" name="number"  type="text" placeholder="请填写您的手机号码">
			</div>
			<!-- <div class="jike">
				<input   class="form-control"  id="FewSubjects" name="FewSubjects"  type="text"   list="feng_kong_cuo_shi_1"datatype="*"   style="width:265px;height:40px;"  placeholder="今年考几科？">
						<datalist id="feng_kong_cuo_shi_1" >
							<option  >1科</option>
					   		<option  >2科</option>
					  		<option  >3科</option>
					  		<option  >4科</option>
						</datalist> 
			</div> -->
			<!-- 按钮 -->
			<div  class="anndiv">
				<button type="button" class="btn btn-success"  id="anns"  onclick="tijiao()">立即报名</button>
			</div>
		</div>
		
		
		
	</div>
	
   <script src="http://crm.jingyaoshi.net/Content/layer/layer.js"></script>  
<!--  <script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>  -->
<script type="text/javascript">
		
		$(function(){
			if(codes == "101" || codes == "102" || codes == "103" || codes == "104" || codes == "105" || codes == "106"  || codes ==  "107" || codes == "108"
				|| codes  == "109"  || codes == "110" || codes == "111" || codes == "112"
				|| codes == "113"
				){
				$("#img").attr("src","../resources/admin/login/img/xuanyuandenlu.jpg");
			}
			
		})
		
		
		function  tijiao(){
			var  User_Name = $("#User_Name").val();
			var  number = $("#number").val();
			var  FewSubjects = $("#FewSubjects").val();
		    var  openid = $(".openid").text();
			var  headimgurl = $(".headimgurl").text();
			var  nickname = $(".nickname").text(); 
			var  codes  = $(".codes").text();
			var  feizhenshixueyuan = $(".feizhenshixueyuan").text();
			
			/* console.log("科目："+kemushu); */
			 var mobileR = /(^1[3|4|5|6|7|8|9]\d{9}$)|(^09\d{8}$)/;
	         
	         if(User_Name==null||User_Name==""){
	             layer.msg("请输入姓名",{icon:3})
	             return false;
	         }
	         else  if(number==""||number==null){
	             layer.msg("请输入手机号",{icon:3})
	             return false;
	         }
	         else if (!mobileR.test(number)) {
	             layer.msg("手机号码格式有误",{icon:3});
	             return false;
	         }
	        /*  else if (FewSubjects == null || FewSubjects == "") {
	        	 layer.msg("请选择科目数",{icon:3})
	             return false;
			 } */
	         else {
	             //如果所有信息填入正确
	             $.ajax({
					url:'../sinformation/sinformation',
					dataType:'json',
					type:'post',
					data:{
						User_Name:User_Name,
						number:number,
						FewSubjects:FewSubjects,
						TeacherCodes:codes,
						openid:openid
					}, 
					success:function(data){
							if(data.type == "success"){//
								//如果是正式学员，那么zhenshixueyuan的值不为空
								window.location.href="../chakan/canjia?openid="+openid+"&codes="+codes+"";
							}else {
								alert("页面出错请联系管理员！")
							}
						}
					});
	             
	         } 
			
		}
		
</script>
</body>
</html>