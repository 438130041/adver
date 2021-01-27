<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="configApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
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
<title>AngularJS(config（配置）)</title>
<style type="text/css">
	
</style>

</head>
<body>
	
	<noscript>
		<div ng-view=""></div>
			增加一个新人：
		<br/>
			姓名：<input type="text" ng-model="newPerson.name" placeholder="新人姓名..." />
		<br/>
			年龄：<input type="text" ng-model="newPerson.age" placeholder="新人年龄..." />
		<br/>
		<input type="button" ng-click="addNewPerson()" value="添加" />
		<br/>
		<a href="#/view2">view 2</a>
	</noscript> 
	

<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('configApp', []);
	
	$(function () {
		$(".sourcePre").each(function(i, v){
			$(v).text($(v).text().replace(/↔/gm, '{{'));
		});
	});
	
	
	app.config(function($routeProvider){
	    $routeProvider
	        .when('/',{
	            controller : 'MainCtrl',
	            templateUrl : 'partials/view1.html'
	        }).when('/view2',{
	            controller : 'MainCtrl',
	            templateUrl : 'partials/view2.html'
	        }).otherwise({ redirectTo: '/' });
	});
	 
	app.controller('MainCtrl', function($scope){
	    $scope.names = [
	        {name: 'a乔乐', age:'25'},
	        {name: 'b周迅', age:'40'},
	        {name: 'c魏瑞', age:'25'},
	        {name: 'd展昭', age:'98'}
	    ];
	 
	    $scope.addNewPerson = function(){
	        $scope.names.push({
	            name: $scope.newPerson.name,
	            age: $scope.newPerson.age
	        });
	        // 清空输入对象集合，也可清除单个对象：$scope.newPerson.name = '';
	        $scope.newPerson = '';
	    }
	});

	
	
</script>
</body>
</html>