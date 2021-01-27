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
<title>AngularJS声明式和命令式的区别，依赖注入</title>
<style type="text/css">
	
</style>

</head>
<body  ng-init="firstName='kobe'" >
	

	<!-- 
			1.依赖对象：完成某个特定的功能需要某个对象才能实现，这个对象就是依赖对象
			2.依赖注入：依赖的对象以形参的形式被注入进来使用，这种方式就是（声明式）依赖注入
			3.angular的$'scope'对象就是依赖对象，并且是依赖注入的形式进行使用
			       形参必须是特定的名称，否则angular无法注入抛异常（函数里面传入的形参必须是$scope）
					
			4.回调函数的event的就是依赖对象
			5.回调函数有形参就是依赖注入
			
		1.开发的两种方式
			1.声明式
				*更加注重的是执行的结果
				*声明式是对命令的局部包装
			2.命令式	
				*更加注重的是执行的过程
		 		
	 -->

	<button id="btn">客官，点我一下</button>
	
	
	
	
<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('myApp', []);
	
	window.onload = function (){
		document.getElementById('btn').onclick = function(event){
			alert(event.clientX);//在这里的event就是依赖对象（点击后会显示点击位置的距离）
			
		 }
		
	}
	
	var  arr = [1,2,3,4,5];
	var newArr = [];
	//命令式（数据都都加10）
	for(var i = 0; i<arr.length; i++){
		var value = arr[i] + 10;
		newArr.push(value);
	}
	console.log(newArr);
	//声明式
	var newArr1 = arr.map(function(item,index){//打印出了arr数组的数组顺序
		//console.log(item,index);
		return  item + 10;
	})
	console.log(newArr1);
	
	
</script>
</body>
</html>