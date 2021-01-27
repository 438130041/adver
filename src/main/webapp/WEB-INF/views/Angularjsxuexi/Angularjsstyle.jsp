<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="styleApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
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
<title>AngularJS样式绑定（ng-style）</title>
<style type="text/css">
	 .big-bg {width: 100%;height: 30px;margin-top: 16px; background-color: #6dc6ff; }
</style>
</head>
<body >
	
	<div>
      <ul style="list-style-type: upper-roman;" ng-controller="StyleCtrl">
        <li>基本表达式
          <div>
           	 选择背景色：			<!-- 通过model对象的绑定获取option选择的值 -->
            <select ng-model="firstBgSet" ng-options="k as v for (k, v) in colorSet">
              <option value="">颜色列表：</option>
            </select>
            <input type="button" value="黄色" ng-click="firstBgSet = 'yellow'" />
            <input type="button" value="黑色" ng-click="firstBgSet = 'black'" />
            <input type="button" value="保护色" ng-click="firstBgSet = 'rgb(199, 237, 204)'" />
            <input type="button" value="渐变色" ng-click="firstBgSet = 'linear-gradient(to bottom, #31E2B9 0%,#C31010 100%)'" />
            <input type="button" value="默认色" ng-click="firstBgSet = '#6dc6ff'" />
          </div>
          <div class="big-bg" ng-style="setBg(firstBgSet)"></div>
        </li>
      </ul>
    </div>
	
							
	
	

<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('styleApp', []);
	
	function StyleCtrl($scope) {
		//通过在标签上定义方法名就传入了方法参数，就指定了要调用的方法
		  $scope.setBg = function(color) {//传入参数（color）
		    return { 'background': color };
		  };
		  $scope.colorSet = {//选的数据
		    red: '红色',
		    blue: '蓝色',
		    green: '绿色'
		  };
		}
	
</script>
</body>
</html>