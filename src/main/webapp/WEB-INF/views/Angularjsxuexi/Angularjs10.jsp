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
<title>AngularJS常用指令</title>
<style type="text/css">
	
</style>

</head>
<body>
	
	<!-- 
		
		
		
		
	 -->
	
	<div ng-controller="MyCtrl">
		<div>
			<h2>价格计算器（自动）</h2>
		 	数量：<input type="number"  ng-model="count1">
			价格：<input type="number" ng-model="price1">
		 <p>总计：{{count1 * price1}}</p>
		</div>		
		<br>
		<br>	
		
		<!-- ng-click:调用作用域对象的方法（点击时启动） -->
		<div>
			<h2>价格计算器（手动）</h2>
		 	数量：<input type="number"  ng-model="count2">
			价格：<input type="number" ng-model="price2">
			<button ng-click="getTotalPrice()">计算</button>
		 <p>总计：{{totalprice}}</p>
		</div>
		
		<!-- ng-repeat:遍历数组显示数据，数组有几个元素就会产生几个新的作用域
			$index(下标索引),$first(对应的是boolea值),$middle(),$last(),$odd(数组的奇数),$even(数组的偶数)
		 -->
		<div>
			<h2>人员信息列表</h2>
			<ul>
				<li  ng-repeat="person in  persons">
					{{person.username}}----{{person.age}}
				</li><!--  -->			
			</ul>
		</div>
		<br>
		<br>
			<!-- ng-bind:解决使用{{}}显示数据闪屏（在很短的时间内显示{{}}） -->
		<div>
			<p>{{123}}</p><!-- 表达式在页面加载时，在很短时间内会出现表达式闪现,如果用户电脑卡或网速差，可能会用户看到的都是表达式没有数据显示 -->
			<p  ng-bind="123"></p><!-- 如果是可以直接填写的数据，就直接填写到ng-bind中，这样不会出现表达式闪现问题 -->
		</div>
		<br>
		<br>
		
		<!-- 
			*ng-show: 布尔类型，如果为true才显示
			*ng-hide：布尔类型，如果为true就隐藏
		 -->
		<div>			<!-- ng-click点击事件 -->
			<button ng-click="switchLike()">切换喜欢</button>
			<p ng-show="isLike">我喜欢贾静雯</p>
			<p ng-hide="isLike">贾静雯喜欢我</p>
		</div>
		
		
	</div>
	
	
	
	
<script type="text/javascript">
	//创建模块对象
	   angular.module('myApp', []) 
	 	.controller('MyCtrl',function($scope){
	 		 $scope.price1 = 20;
	 		 $scope.count1 = 1;
	 		 
	 		 $scope.price2 = 30;
	 		 $scope.count2 = 1;
	 		 $scope.totalprice = 60;//给与一个初始计算值
	 		 
	 		 
	 		 $scope.getTotalPrice  = function(){
	 			 //计算完毕数据后的值直接给与变量totalprice
	 		   $scope.totalprice =  $scope.price2 * $scope.count2;
	 		 }
	 		 
	 		 //初始化人员数据
	 		 $scope.persons = [
	 			 {username:'kobe',age:39},
	 			 {username:'kobe2',age:39},
	 			 {username:'kobe3',age:39},
	 			 {username:'kobe4',age:39},
	 			 {username:'kobe5',age:39},
	 			 
	 		 ];
	 		 
	 		 $scope.isLike = true;
	 		 $scope.switchLike = function(){//给与点击事件一个函数
	 		 		$scope.isLike = !$scope.isLike;//
	 		 }
	 		 
	 	})
	 	
	 	
	 
	 
	
</script>
</body>
</html>