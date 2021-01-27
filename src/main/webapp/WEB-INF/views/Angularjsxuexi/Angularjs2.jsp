<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="MyApp"><!-- 加上这个标签就可以使用Angularjs了 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
    <!-- <script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> -->
   <!--  <!-- <script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  -->
    <!-- <script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
    <link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520"> -->
<!--     <script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>  -->
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.7/angular-resource.min.js"></script> -->
	<!-- <script src="http://cdn.static.runoob.com/libs/angular.js/1.4.6/angular.min.js"></script> -->
<title>Insert title here</title>
</head>
<body >
	<!-- AngularJS中checkbox与动态ng-model的结合（数据绑定） -->

姓名:<input type="text" ng-model="name">
<br>
性别:<input type="radio" name="sex" value="男" ng-model="sex">男
    <input type="radio" name="sex" value="女" ng-model="sex">女
<br>
兴趣: <!--  <input type="checkbox" ng-model="subscription.checked" ng-click="updateSelection($index, entities)"/>{{subscription.name}} -->
	 <input type="checkbox" name="interest" ng-model="interest1" >游泳<!--  ng-true-value='游泳'   ng-false-value='游泳' 在1.2.9版本angularjs可以使用这两个标签 -->
    <input type="checkbox" name="interest" ng-model="interest2"  >旅游
    <input type="checkbox" name="interest" ng-model="interest3"  >打篮球
<br>
<br>
<fieldset>
    <legend>{{name}}的基本信息如下:</legend>
    <br>
    性别:{{sex}}
    <br>	<!-- ng-show属性当点击相应的model复选框时会显示相应的标签，会根据点击的model的值显示相应的标签-->
    兴趣爱好: <h1 ng-show="interest1">游泳</h1> <h1 ng-show="interest2">旅游</h1> <h1 ng-show="interest3">打篮球</h1>
    
    <!-- {{interest1}} {{interest2}} {{interest3}} -->
</fieldset> 

<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>  

<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.8/angular.min.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.min.js"></script>

<script src="//cdn.bootcss.com/angular.js/1.5.8/angular.min.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-ngAnimate.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-ngAnimate.min.js"></script>

<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('MyApp', []);
/*  app.controller('PlayerController', ['$scope', function($scope) {
		  $scope.entities = [{
		      name: '第一个复选框测试1',
		      checked: false
		    }, {
		      name: '第一个复选框测试2',
		      checked: false
		    }, {
		      name: '第一个复选框测试3',
		      checked: false
		    }, {
		      name: '第一个复选框测试4',
		      checked: false
		    }
		  ]; 
		  //前台选择后的一个交互事件（函数）
		     $scope.updateSelection = function(position, entities) {
		      angular.forEach(entities, function(subscription, index) {
		        if (position != index) 
		          subscription.checked = false;
		      });
		    }
		}]); 
	 */
	
	
</script>
</body>
</html>