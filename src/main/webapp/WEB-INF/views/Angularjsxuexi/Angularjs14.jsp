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
<script  src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>  
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.min.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular.min.js"></script>
<script  src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
<title>AngularJS数据储存功能实现</title>
<style type="text/css">
	
	
</style>

</head>
<body>

	<div  ng-controller="MyCtrl">
		<h2>我的备忘录</h2>
		<div>
			<input  type="text"  ng-model="newtodo">
			<button  ng-click="add()">添加</button>
		</div>
		<div  ng-repeat="todo in todos"><!-- 遍历循环ng-repeat -->
			<input type="checkbox"  ng-model="todo.isChecked"><!-- false会显示未选中状态，true显示已选中状态 -->
			<span>{{todo.name}}</span>
		</div>
		<button  ng-click="del()">删除选中的记录</button>
	</div>
	
		
	

<script type="text/javascript">
	//创建模块对象
	   angular.module('myApp', []) 
	 	.controller('MyCtrl',function($scope){
	 		$scope.todos = [
	 			{name:'吃饭',isChecked:false},
	 			{name:'睡觉',isChecked:false},
	 			{name:'打豆豆',isChecked:false}
	 		];
	 		//定义添加方法
	 		$scope.add = function(){
	 			//判断用户输入的内容是否合法（如果用户没有输入，那么newtodo获取值就为空）
	 			if(!$scope.newtodo){//输入的内容为空进入（这里如果输入了内容就为true，如果没有就为false）
	 				alert("输入的内容不能为空");
	 				return;
	 			}
	 			
	 			//收集整理数据
	 			var  obj = {
	 				name:$scope.newtodo,//搜集到输入的数据，并已对象的形式打包
	 				isChecked:false
	 			}
	 			$scope.todos.unshift(obj);//unshift方法是js中往数组头部添加数据				
	 		}
	 		//定义删除选中的方法
	 		/* $scope.del = function(){
	 			$scope.todos.forEach(function (item,index){
	 				//找到被选中的todo
	 				if(item.isChecked){//循环数组，如果数组中的某个对象的isChecked	值为true，说明它是被选中了的
	 					$scope.todos.splice(index,1);//第一个元素是数组下表，第二个是个数
	 					//因为上一个被删除了，那么数组里面的数据就会往前在进以为，所以会出现在删除多个时相邻的珊不掉
	 					//递归一次就行(函数内在执行一次方法)
	 					$scope.del();//注意递归的结束，如果没有结束，会进口乳死循环，在这里如果判断没有通过就不会进来，就自动结束了递归
	 				}
	 				
	 			})	 			
	 		} */
	 		$scope.del = function (){
	 			var odlTodo = $scope.todos;//定义一个新的数组
	 			$scope.todos = [];//将原先的数组设置为空
	 			odlTodo.forEach(function(item,index){//循环新的数组
	 				//找到未选中的留下来
	 				if(!item.isChecked){//如果有未选中的值为false的
	 					$scope.todos.push(item);//item就是未选中的数据
	 				}
	 			})
	 		}
	 		
	 		
	 	})
	 
	 
	
</script>
</body>
</html>