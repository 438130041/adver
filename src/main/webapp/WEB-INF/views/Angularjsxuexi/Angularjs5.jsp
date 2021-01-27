<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html ><!-- ng-app是指令 -->
<html  ng-app="myApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
<script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> 
<script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  
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
<title>AngularJS作用域与控制器</title>
<style type="text/css">
	
</style>

</head>
<body  ng-init="firstName='kobe'" >
	

	<!-- 
		1.作用域对象：
			*一个js实例对象，ng-app指令默认会创建一个根作用域对象（$rootScope）
			*它的属性和防治法与页面中的指令或表达式是关联的
		2.控制器：
			*用来控制Angularjs应用数据 实例对象
			*ng-controller：指定控制器构造函数，angularjs会自动new此函数创建控制器对象
			*同时Angulaer还有创建一个新的域对象$scope,它是$rootScope的子对象
			*在控制器函数中声明$scope形参，Angular会自动将$scope传入
			
			
	 -->
	<div ng-controller="MyController">
		<input type="text" placeholder="姓"  ng-model="firstName">
		<input type="text" placeholder="名" ng-model="lastName">
		
		<p>输入的姓名为：{{firstName + '-' + lastName}}</p>
		<p>输入的姓名2为：{{getName()}}</p>
		
	</div> 
	<!-- <div  ng-controller="MyController">
	<input type="text"  ng-model="firstName">
	<input type="text"  ng-model="lastName">
	<p>姓名1：{{firstName}}</p>
	<p>姓名2:{{lastName}}</p>
	</div> -->
	
<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('myApp', []);
	function  MyController($scope){//函数里面形参必须是$scope不能是其他东西
		$scope.firstName = "kobe";//通过$scope给变量设置初始值
		$scope.lastName = "weien";
		$scope.getName = function(){//给与一个函数属性，让他直接调用这个函数(firstName和lastName作用域没到函数里面)
			/*  return  $scope.firstName + ' ' + $scope.lastName; *///两种写法
			 return  $scope.firstName + ' ' + this.lastName;
		}
	}
	
	
	
	
	
	
	
</script>
</body>
</html>