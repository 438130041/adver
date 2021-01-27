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
<title>AngularJS表达式</title>
<style type="text/css">
	
</style>

</head>
<body>
	

	<!-- 
		1.使用angular表达式：
			*语法{{expression}}	
			*作用：显示表达式的错误数据
			*注意：表达式中引用的变量必须是当前域对象有的属性（包括其原型属性）
		2.操作的数据(类型)：
			*基本类型数据：number/string/boolean
			*undefined,infinity,NaN,null解析为空串："",不显示任何效果
			*对象的属性或方法
			*数组 
	 -->
	
	<div ng-controller="MyCtrl">
		<p>{{123}}</p>
		<p>{{'abc'}}</p><!-- 字符串要加引号才能显示 -->
		<p>{{abc}}</p>
		<p>{{abc.split('')}}</p><!-- 将数据分割并转换为数组 -->
		<p>{{abc.split('').reverse()}}</p><!-- 数据方法reverse将数组里面的数据全部反转 -->
		<p>{{abc.split('').reverse().join('')}}</p><!-- join将数组转换为字符串 -->
				
		<p>{{true}}</p>
		<p>{{undefined}}</p>
	</div>
	
	
	
	
<script type="text/javascript">
	//创建模块对象
	  angular.module('myApp', [])
	 	.controller('MyCtrl',['$scope',function(a){
	 		a.abc = "NBA";//因为形参是abc，所以可以直接用abc
	 	}])
	 
	 
	 
	
</script>
</body>
</html>