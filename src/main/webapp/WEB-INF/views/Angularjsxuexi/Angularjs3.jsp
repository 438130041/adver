<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html ><!-- ng-app是指令 -->
<html  ng-app="factoryApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
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
<title>AngularJS</title>
<style type="text/css">
	
</style>

</head>
<body>
	
	<!-- 单页面应用（SPA）:single page application
		 	特点：
		 		1.将所有的活动局限于一个页面
		 		2.当页面中有部分数据发生了变化不会去刷新整个页面，而是局部刷新（如ajax）
				3.利用的ajax技术活路由。
				
				
		ng-app（指令）：告诉angular核心它管理当前标签所包含的整个区域，并且会自动创建$rootScop根作用域对象ng-model：将当前
		输入框的值与谁关联（属性名:属性值），并作为当前作用域对象（$rootScop）的属性{{}}（表达式）：显示数据，从作用域对象的指定
		属性名上取
		1.表达式：通常有一个返回值，可以放在任何需要值的地方，比如函数调用的参数，一个变量名，
		2.语句：通常表示一个完整的执行单位，一段完整的js可执行的代码，有的语句也可以用表达式来执行，叫做表达式语句
		
		
				
	 -->
	 <!-- 使用jquery实现 -->
	<!-- <input  type="text" id="name">
	<p>您输入的内容是：<span id="contentSpan"></span></p> -->
	<!-- 使用angularjs实现 -->
	<input  type="text"  ng-model="username"  /><!-- ng-model是model指令（username就是属性名，输入的内容就是属性值） -->
	<p>您输入的内容是：<p>{{username}}</p></p>


<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('factoryApp', []);
	
	//使用原生jQuery实现input中写入立即在下面显示
	/* $(function(){//文档加载完毕后开始执行   window.onload:整个页面加载完毕后，包括图片加载完毕后，才开始执行
		$("#name").keyup(function(){//keyup事件是当按下键盘在放松时就触发事件
			var  name = this.value;
			$("#contentSpan").html(name);
		})
	}) */
	
	
	
	
	
	
	
</script>
</body>
</html>