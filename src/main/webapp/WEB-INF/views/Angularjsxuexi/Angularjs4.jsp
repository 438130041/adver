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
<title>AngularJS</title>
<style type="text/css">
	
</style>

</head>
<body><!-- ng-init="username='kobe'" 使用ng-init初始化变量值 -->
	

	<!-- 
		1.数据绑定：数据从一个地方A转移（传递）到另一个地方B，而且这个操作由框架来完成
		2.双向数据绑定：数据可以从view（视图层）流向modle（模型），也可以从model流向（就是在页面和内存数据可以来回往返）
		view。
		 *视图（view）：也就是我们的页面（主要是Angular指令和表达式）
		 *模型（model）：作用域对象（当前为$rootScop）,它可以包含一些属性或方法
		 *当改变view中的数据，model对象的对应属性也会随之改变：ng-model指令  数据从view==》model
		 *ng-model是双向数据绑定，而{{}}是单向数据绑定
		 *ng-init  用来初始化当前作用域变量（单向数据绑定）
	 -->
	<input type="text" ng-model="username"><!-- ng-model,model指令关联属性 -->
	<p>姓名：{{username}}</p><!-- 表达式用来显示属性值 -->
	<input type="text" ng-model="usersex">
	<p>性别：{{usersex}}</p>
	
	
<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('myApp', []);
	
	
	
	
	
	
	
	
</script>
</body>
</html>