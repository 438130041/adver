<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="classApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
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
<title>AngularJS(ng-class（class属性绑定）)</title>
<style type="text/css">
	.big-bg {width: 800px; height: 30px; background-color: #6dc6ff; }
    .small-bg {width: 200px; height: 30px; background-color: #ff33ad; }
    .red_bg {background: #ff110e;}
    .blue_bg {background: #2d3bff;}
    .green_bg {background: #4bff2a;}
</style>

</head>
<body>
	
	<div>
	<ul  >
		<li>
			<div>
				选择背景颜色：
				红色：<input type="checkbox"  ng-model="chooseRed" />
				蓝色：<input type="checkbox"  ng-model="chooseBlue"/>
				绿色：<input type="checkbox"  ng-model="chooseGreen"/>
			</div>			<!-- model对象绑定下面div的ng-class属性，每个css样式对应一个  model对象，当点击一个复选框就选择了一个model对象 -->
				 <div class="big-bg" ng-class="{'red_bg': chooseRed, 'blue_bg': chooseBlue, 'green_bg': chooseGreen}"></div>
			<div>
       	 	            单选背景色：
          		 红色：<input type="radio" ng-model="chooseBg" value="red_bg" />　
           		 蓝色：<input type="radio" ng-model="chooseBg" value="blue_bg" />　
           		 绿色：<input type="radio" ng-model="chooseBg" value="green_bg" />
          	</div>
          	<div class="big-bg" ng-class="chooseBg"></div>
          
		</li>
		
	
	
	
	
	</ul>
	</div>
	
	
	
	
							
	
	

<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('classApp', []);
	 /*  $(function () {
	      $(".sourcePre").each(function(i, v){
	        $(v).text($(v).text().replace(/↔/gm, '{{'));
	      });
	    });
	
	
	function ClassCtrl($scope) {
		  $scope.dynamicClass = 'big-bg';
		} */ 
	
	
</script>
</body>
</html>