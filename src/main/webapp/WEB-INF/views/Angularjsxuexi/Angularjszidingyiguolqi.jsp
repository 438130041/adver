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
<title>AngularJS自定义过滤器</title>
</head>
<body >
	<!-- <pre class="sourcePre brush: html;">表达式：
		↔ expression | filter1 | filter2 | ... }}
		↔ expression | filterName : parameter1 : ...parameterN }}
		ng-repeat="a in array | filter "</pre> -->
<div  class="container" ng-controller="MainCtrl">	
	
	<div>
	<h3>一、第一种过滤器：</h3>
	<br/>
	原有数据	{{names[0].name}}
	<br/>	
	 过滤数据：{{names[0].name | filter1}}<!-- 后面为追加类容 --> 
	</div>
	<br>
	
	<div>
	<h3>二、第二种过滤器：</h3>
	原有数据：{{names[0].name}}<br/>
	过滤数据：{{names[0].name | filter2:5}}<!-- 5是传入的参数 -->
	</div>
	<br>
	<h3>三、第三种过滤器：</h3>
	<ul>
    <li ng-repeat="word in ['aa','bb','vv','mm'] | filter3">{{word}}</li><!-- 循环出数据 -->
	</ul>
	<br>
	<h3>四、第四种过滤器：首字母大写过滤器：</h3>
	{{'this is angular js course on each.com' | filter4}}
	
	
</div>	
	
	
							
	
	

<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('NameApp', []);
	
	$(function () {
		$(".sourcePre").each(function(i, v){
			$(v).text($(v).text().replace(/↔/gm, '{{'));
		});
	});
	
	app.controller('MainCtrl', function($scope){//定义一个服务
	$scope.names = [
			{name: 'a乔乐', tel:'15800000000'},
			{name: 'b周迅', tel:'18900000000'},
			{name: 'c魏瑞', tel:'18900000000'},
			{name: 'd展昭', tel:'19800000000'},
			{name: 'd暖暖', tel:'15800000000'}
		];
	}).filter('filter1', function(){//选择器追加
		return function(item){
			return item + '[追加内容：单参数在此过滤 !]';
		}
	}).filter('filter2', function(){//调用追加时直接|加名
		return function(item,num){//num是传进来的参数，item是定义参数用于返回值
			for(var i = 0;i < num;i++){//通过循环叠加！
				item = item + '!';
			}
			return item;
		}
	}).filter('filter3', function(){
		return function(items){
			angular.forEach(items,function(item, i){//item就是ng-repeat属性中word的参数，按数组顺序每次取一个
				item = i+'、'+ item + '===';
				console.log(item);
				items[i] = item;
			});
				console.log(items);
			return items;
		}
	}).filter('filter4', function(){
		return function(input) {//会将首字母都变为大写
			var words = input.split(' ');
			for (var i = 0; i < words.length; i++) {
			  words[i] = words[i].charAt(0).toUpperCase() + words[i].slice(1);
			}
			return words.join(' ');
		}
	});
	
	
	
	
</script>
</body>
</html>