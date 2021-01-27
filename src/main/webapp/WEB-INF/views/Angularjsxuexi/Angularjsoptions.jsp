<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="optionApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
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
<script src="//cdn.bootcss.com/angular.js/1.5.8/angular-route.js"></script>
<script  type="text/javascript"  src="../resources/admin/js/jquery.min.js"></script>
<title>AngularJS（ng-options）</title>
</head>
<body >
	<div>一，基础下拉框</div>
	<div ng-controller="OptionCtrl">
 		 <select ng-model="seleted" ng-options="a.name for a in animals">
    		<option value="">请选择你的萌宠</option>
  		 </select>
	</div>
	<br>
	<div>二，自定义下拉框</div>
	<div ng-controller="OptionCtrl">		<!-- 可以自定义在中间加入文字 -->
 		 <select ng-model="seleted" ng-options="(a.name + '爱吃' + a.food) for a in animals">
    		<option value="">请选择你的萌宠</option>
  		 </select>
	</div>
	<br>
	<div>三，分组选项</div>
	<div ng-controller="OptionCtrl">										<!-- 将数据以（sex）性别区分分组 -->
  		<select ng-model="seleted" ng-options="(a.name + '的爱好是' + a.favor) group by a.sex for a in animals">
    		<option value="">请选择你的萌宠</option>
  		</select>
	</div>
	<br>
	<div>四，自定义ng-model的值</div>
	<div ng-controller="OptionCtrl"><!-- 自定义model显示出id的值 -->
  		<select ng-model="seletedId" ng-options="a.id as a.name for a in animals">
    		<option value="">请选择你的萌宠</option>
  		</select>
  		<span  ng-show="seletedId">自定义选择的ID为:{{seletedId}}</span>
	</div>
	
	
	

<script type="text/javascript">
	var app = angular.module('optionApp', []); 
	app.controller('OptionCtrl',['$scope',function($scope){
		$scope.seleted = '';//定义一个对象模型
		$scope.animals = [
			{
			  id:'1',
			  name:'猫',
			  sex: '雌',
		      food: '鱼',
		      favor: '玩球'
			},
			{
		        id: '2',
		        name: '狗',
		        sex: '雄',
		        food: '骨头',
		        favor: '接盘子'
		      },
		      {
		        id: '3',
		        name: '兔',
		        sex: '雌',
		        food: '胡萝卜',
		        favor: '刨洞'
		      },
		      {
		        id: '4',
		        name: '狮',
		        sex: '雄',
		        food: '肉',
		        favor: '猎物'
		      }
		    ];
	}]);

	
	
</script>
</body>
</html>