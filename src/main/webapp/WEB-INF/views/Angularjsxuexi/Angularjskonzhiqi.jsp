<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="NameApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
<script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> 
<script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
<link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520"> 
<script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>  
<script src="http://apps.bdimg.com/libs/angular.js/1.2.9/angular.min.js"></script>  
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.min.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular.min.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
<title>AngularJS控制器（controller）</title>
</head>
<body >
	<!-- 控制器筛选样式，过滤器筛选数据 -->
	<div>
		<div>
			<h3>一、第一种控制器：</h3>
			 <ul ng-controller="FirstCtrl"><!-- 直接函数可以用 ng-controller属性使用-->
    			<li ng-repeat="name in filterList | filter:lowercase">{{name}}</li>
			 </ul>
		</div>
		<br>
		<div>
			<h3>二、第二种控制器：</h3>
			<input type="text" ng-model="nameText" placeholder="输入过滤信息..." />
			<ul ng-controller="SecondCtrl">
    			<li class="animate-repeat" ng-repeat="info in names | filter:nameText">{{$index+1}}、今年{{info.name}}已经{{info.age}}岁了！ {{$first}}-{{$middle}}-{{$last}}-{{$even}}-{{$odd}}</li>
			</ul>
		</div>
	    <br>
	    <h3>三、第三种控制器：</h3>
	    <input type="text" ng-model="nameType" placeholder="输入过滤信息..." />
  		<ul ng-controller="ThirdCtrl">
    		<li class="animate-repeat" ng-repeat="info in names | filter:nameType">{{$index+1}}、今年{{info.name}}已经{{info.age}}岁了！ {{$first}}-{{$middle}}-{{$last}}-{{$even}}-{{$odd}}</li>
  		</ul>
	
	
	</div>
	
	
	
</div>	
	
	
							
	
	

<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('NameApp', []);
	
	$(function () {
		$(".sourcePre").each(function(i, v){
			$(v).text($(v).text().replace(/↔/gm, '{{'));
		});
	});

	function FirstCtrl($scope){
		$scope.filterList=['currency','date','filter','json','limitTo', 'lowercase', 'number', 'orderBy', 'uppercase'];
	}

	
	
	app.controller("SecondCtrl", function($scope){
	    $scope.names = [
	                    {name: 'a乔乐', age:'25'},
	                    {name: 'b周迅', age:'40'},
	                    {name: 'c魏瑞', age:'25'},
	                    {name: 'd展昭', age:'98'}
	                    ];
	});
	
	
	
	var controllers = {};
	controllers.ThirdCtrl = function($scope){
	$scope.names = [
	                {name: 'e乔乐', age:'25'},
	                {name: 'f周迅', age:'20'},
	                {name: 'g魏瑞', age:'25'},
	                {name: 'h展昭', age:'52'}
	                ];
	}
	// controller.FourthCtrl = function...
	app.controller(controllers);
	
</script>
</body>
</html>