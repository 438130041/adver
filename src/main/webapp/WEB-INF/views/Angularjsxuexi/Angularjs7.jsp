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
<script  src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>  
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.min.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular.min.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
<title>AngularJS模块对象</title>
<style type="text/css">
	
</style>

</head>
<body>
	

	<!-- 
		
			
			
		 		
	 -->
	<div  ng-controller="MyController"><!-- 指向的是构造函数的名字 -->
	<input type="text"  ng-model="empName">
	<p>员工名字 1： {{empName}}</p>
	</div>
	<div ng-controller="MyController2">
	<input type="text"  ng-model="empName">
	<p>员工名字 2： {{empName}}</p>
	</div>
	
<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	/* var app = angular.module('myApp', []); *///module就是模块对象（创建模块对象）
	//生成作用域对象
	/* app.controller('MyController',function($scope){//这里形参必须是$scope
		$scope.empName = "kobe";
	}) */
	
	/* app.controller('MyController2',function($scope){//这里形参必须是$scope
		$scope.empName = "weien";
	}) */
	
	//作用域优化与链式调用
	angular.module('myApp', [])
		.controller('MyController',function($scope){//这里形参必须是$scope
			$scope.empName = "kobe";
		})
		.controller('MyController2',function($scope){//这里形参必须是$scope
			$scope.empName = "weien";
		});
		
</script>
</body>
</html>