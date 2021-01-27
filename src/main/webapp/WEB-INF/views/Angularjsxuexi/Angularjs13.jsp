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
<title>AngularJS数据储存功能实现</title>
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
		*H5的本地储存技术
			1.sessionStorage(会话存储)
				*生命周期：浏览器打卡到关闭的过程
				*大小:5M
				*保存位置：浏览器端
				*setItem('key',value);//存数据
				*getItem('key');//取出数据
				*removeItem('key');//删除数据
			
			2.localStorage(永久存储)
				*生命周期是永久（除非人为删除）
				*大小：5M（甚至更大）
				*保存位置：浏览器端
				*与session一样
			
			
			3.cookie
			 *用于服务器端和浏览器端进行通信的
			 *特点：
			 	1.大小：4kb
			 	2.每次发送请求都携带，导致占用带宽
			 	3.cookie保存在浏览器端
			 	4.cookie容易被截获，不安全
			  *生命周期：
			  	 *回话cookie：浏览器打开到关闭的过程
			  	 *人为设置时间
	-->
	<div ng-controller="MyCtrl">
		<h2>我的笔记</h2>
		<textarea rows="10" cols="30"  ng-model="message"></textarea>
		<div>
			<button  ng-click="save()">保存</button>
			<button	 ng-click="read()">读取</button>
			<button	 ng-click="remove()">删除</button>
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
	 		 $scope.getCount = function(){
		 		/* console.log($scope.message);  */
		 		//判断用户输入的内容长度
		 		if($scope.message.length >100){//
		 			 $scope.message  = $scope.message.slice(0,100);
		 		}
				return  100 - $scope.message.length;//$scope.message.length输入的字符串长度	 			 
	 		  };	
	 	///////////////////////localStorage缓存方法///////////////////////////// 
	 		 //定义保存数据的方法
	 		 $scope.save = function(){//localStorage.setItem将数据存入页面缓存//JSON.stringify将字符串数据转换为json数据
	 			localStorage.setItem('not_key',JSON.stringify($scope.message));
	 			$scope.message = '';//清除显示的数据
	 		 };
	 		 //读取缓存数据
	 		 $scope.read = function(){
	 			//json数据只存在json数组，不存在json字符串，如果用户上来就直接点击读取，这时没有这个缓存就会报错，所以要加一个[]（数组）这样显示的数据为空
	 			$scope.message  = JSON.parse(localStorage.getItem('not_key') || '[]');//因为存储时是以字符串的形式，所以要装换回来
	 		 }; 
	 		 //删除缓存数据
	 		 $scope.remove = function(){
	 			 //removeItem方法删除缓存的数据 
	 			 localStorage.removeItem('not_key');
	 			 $scope.message = '';//清除显示的数据
	 		 }
	 	 ///////////////////////sessionStorage缓存方法//////////////////////////////
	 	     
	 		  
	 		 
	 		 
	 	 }])
	 
	 
	
</script>
</body>
</html>