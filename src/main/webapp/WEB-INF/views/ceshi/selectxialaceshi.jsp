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
    <script type="text/javascript" src="../resources/admin/js/layer/layer.js"></script>
    <script src="../resources/admin/layui-2.5.4/layui.js"></script>
    <link rel="stylesheet" href="../resources/admin/layui-2.5.4/css/layui.css">
    <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
    <title>切换科目</title>
    <script>
    
    	
    	
    </script>
    <style>
  		*{
       		 margin: 0;
       	 	 padding: 0;
       }
  	  .quen{
  	  		position: relative;
  	  		left:15%;
  	  		padding-top:7%;
  	  }
  	  #logoimg{
  	  		width:50%;
  	  		height:50%;
  	  		position: relative;
  	  		left:15%;
  	  		padding-top:5%;
  	  }
  	  .nicen{
  	  		position: relative;
  	  		left:15%;
  	  		padding-top:10%;
  	  		
  	   }
  	
    </style>
</head>
<body>
		<div class="laosijiafen">
					<!-- logo -->
					<div class="logo"><img src="../resources/admin/login/img/logo.png" alt="" id="logoimg"></div>
					<!-- 群组选择 -->
					<div  class="quen">
						 <div class="textquen">
							<label>*学员所在群：</label>
						</div>
					     <div>
					    	<input type="text" id="interval" name="interval" list="feng_kong_cuo_shi_1"datatype="*"   style="width:300px;height:50px;">
							<datalist id="feng_kong_cuo_shi_1" >
									<option >01群</option>
					   				<option >02群</option>
					  		 	 	<option >03群</option>
					  		 	 	<option >04群</option>
							</datalist> 
							
					     </div>
					</div>
					<!-- 学员昵称 -->
					<div  class="nicen">
						<div class="textnicen">
							<label>*学员微信昵称：</label>
						</div>
					   <div class="layui-input-inline">
					   <div>
					     <input type="text" id="interval" name="interval" list="feng_kong_cuo_nicen"datatype="*"    style="width:300px;height:50px;">
							<datalist id="feng_kong_cuo_nicen" >
									<option value="okSrrjlmyMmZ1KVC8DiHAq0tHCj8">狠孤单</option>
					   				<option value="okSrrjnZb94y4Q_MnxuVDLzRAQHY">未知</option>
					  		 		<option value="okSrrjkUJBE03tKVatmxr8LrhVSQ">小小孩</option>
					  		 		<option value="okSrrjhB2eN2m9hlNQw_hY0ULzvw">顺其自然</option>
							</datalist>
					    </div>
					   </div>
					</div>
	    </div>
<script type="text/javascript">
	
	
layui.use(['form', 'layedit','upload'], function () {
    var form = layui.form
form.on('select(hc_select)', function (data) {   //选择移交单位 赋值给input框
        $("#HandoverCompany").val(data.value);
        $("#hc_select").next().find("dl").css({ "display": "none" });
        form.render();
    });

    window.search = function () {
        var value = $("#HandoverCompany").val();
        $("#hc_select").val(value);
        form.render();
        $("#hc_select").next().find("dl").css({ "display": "block" });
        var dl = $("#hc_select").next().find("dl").children();
        var j = -1;
        for (var i = 0; i < dl.length; i++) {
            if (dl[i].innerHTML.indexOf(value) <= -1) {
                dl[i].style.display = "none";
                j++;
            }
            if (j == dl.length-1) {
                $("#hc_select").next().find("dl").css({ "display": "none" });
            }
        }
        
    }
});
	
	
</script>
</body>
</html>