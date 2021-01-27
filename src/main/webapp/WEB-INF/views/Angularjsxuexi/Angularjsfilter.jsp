<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="myApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'>
<script  type="text/javascript"  src='../resources/admin/js/jquery-1.10.1.min.js'></script> 
<script src='https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js'></script>  
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script> 
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css' integrity='sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u' crossorigin='anonymous'>
<link rel="stylesheet" href="../resources/admin/css/common.css?v=20160520"> 
<script src='https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js' integrity='sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa' crossorigin='anonymous'></script>  
<script src="http://apps.bdimg.com/libs/angular.js/1.4.6/angular.min.js"></script>  
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.min.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular.min.js"></script>
<!-- <script src="//cdn.bootcss.com/angular.js/1.5.8/angular-ngAnimate.js"></script>
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-ngAnimate.min.js"></script> -->
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
<title>AngularJS（filter数据过滤）</title>
</head>
<body >
	
	<!-- ng-init属性用于定义要循环的值 -->
<ul ng-init="filterList=['currency','date','filter','json','limitTo', 'lowercase', 'number', 'orderBy', 'uppercase']"><!-- 各种不同的过滤器种类 -->
    <li ng-repeat="name in filterList | filter:lowercase">{{name}}</li><!-- 直接填写name -->
    <!-- ng-repeat属性定义要循环的集合 -->
</ul>


<input type="text" ng-model="nameText" placeholder="输入过滤信息..." />
<ul ng-init="names=[
                    {name: 'a乔乐', age:'25'},
                    {name: 'b周迅', age:'40'},
                    {name: 'c魏瑞', age:'25'},
                    {name: 'd展昭', age:'98'}
                    ]">							<!--/是管道符号AngularJS 过滤器可用于转换数据  -->
    <li class="animate-repeat" ng-repeat="info in names | filter:nameText">{{$index+1}}、今年{{info.name}}已经{{info.age}}岁了！ {{$first}}-{{$middle}}-{{$last}}-{{$even}}-{{$odd}}</li>
</ul>


 <script type="text/javascript"> 
var myApp = angular.module('myApp', []); 

 </script> 
</body>
</html>