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
<title>AngularJS常用指令（二）</title>
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
		常用指令二
			*ng-class:动态引用定义的样式{aClass:true,bClass:false}
			*ng-style:动态引用通过js指令的样式对象{color:'red',background:'blue'}
			*ng-click:点击监听，值为函数调用，可以传$event
			*ng-mouseenter:鼠标移入监听，值为函数调用，可以传$event
			*ng-mouseleave:鼠标移出监听，值为函数调用，可以传$event
	 -->
	
	<div  ng-controller="MyCtrl"> 
		<div   style="width: 200px;height: 200px"   ng-style="myStyle" 
		ng-mouseenter="enter()"  ng-mouseleave="leave()"></div><!--  style="width: 200px;height: 200px;background: red"  -->
		<br>
		<ul><!-- ng-repeat是循环 -->
			<li   ng-class="{evenB:$odd,oddB:$even}"  ng-repeat="xxx in persons">{{xxx.username}}-----{{xxx.age}}</li>
		</ul>
	</div>
	
	
	
	
	
<script type="text/javascript">
	//创建模块对象
	   angular.module('myApp', []) 
	 	 .controller('MyCtrl',function($scope){
	 		 $scope.myStyle = {//写在函数里面方便后面操作样式
	 				background:'red'//可以随意改变div的颜色
	 		 };
	 		 //鼠标移入方法
	 		$scope.enter = function(){
				this.myStyle.background = 'deepPink';	 			 
	 		 };
	 		 //鼠标移出方法
	 		 $scope.leave = function(){
	 			 this.myStyle.background = "blue";
	 		 }
	 		 $scope.persons = [
	 			 {username:'kobe1',age:30},
	 			 {username:'kobe2',age:30},
	 			 {username:'kobe3',age:30},
	 			 {username:'kobe4',age:30},
	 			 {username:'kobe5',age:30},
	 		 ]
	 		 
	 	 }) 
	 	
	 	
	 	
	 
	 
	
</script>
</body>
</html>