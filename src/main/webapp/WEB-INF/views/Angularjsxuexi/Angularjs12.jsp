<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><!-- ng-app是指令 -->
<html  ng-app="myApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
<script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> 
<!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  --> 
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<link  rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
<link  rel="stylesheet" href="../resources/admin/css/common.css?v=20160520"> 
<script  src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>  
<script  src="http://apps.bdimg.com/libs/angular.js/1.2.9/angular.min.js"></script>  
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.min.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular.min.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
<title>AngularJS剩余字数功能实现</title>
<style type="text/css">
	.evenB{
		background-color: grey;	
	}
	.oddB{
		background-color: green;
	}
	
</style>

</head>
<body>
	
	<!-- 
		
		
	 -->
	<div ng-controller="MyCtrl">
		<h2>我的笔记</h2>
		<textarea rows="10" cols="30"  ng-model="message"></textarea>
		<div>
			<button type="button">保存</button>
			<button	type="button">读取</button>
			<button	type="button">删除</button>
		</div>
		<p>剩余的字数：{{getCount()}}</p>
	</div>
	
	
	
<script type="text/javascript">
	//创建模块对象
	   angular.module('myApp', []) 
	 	 .controller('MyCtrl',['$scope',function($scope){
	 		//初始化message数据（如果不初始化，在页面加载时message就不存在长度（没有输入数据），就会报错）
	 		  $scope.message = ''; //字符串为空，长度就为0
	 		 //定义一个计算剩余字数的方法
	 		 $scope.getCount = function(){//
		 		/* console.log($scope.message);  */
		 		//判断用户输入的内容长度
		 		if($scope.message.length >100){
		 			 $scope.message  = $scope.message.slice(0,100);//
		 		}
				return  100 - $scope.message.length;//$scope.message.length输入的字符串长度	 			 
	 		 }	
	 		 
	 	 }])
	 	
	 	
	 
	 
	
</script>
</body>
</html>