<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="repeatApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
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
<title>AngularJS（select多级下拉菜单）</title>
</head>
<body >

	
	<div ng-controller="MainCtrl">				<!--  ng-options复选框选中json数据people中的name值 -->
    <select ng-model="selectedPerson" ng-options="obj.name for obj in people"></select>
    <select ng-model="selectedGenre">
        <option ng-repeat="label in people[selectedPerson.id].interest">{{label}}</option>
    </select>
	</div>
	


<script type="text/javascript">
var app = angular.module('repeatApp', []); 
app.controller("MainCtrl", function($scope){
    $scope.people = [
                    {
                        id: 0,
                        name: '乔乐',
                        interest: [
                            '爬山',
                            '游泳',
                            '旅游',
                            '美食'
                        ]
                    },
                    {
                        id: 1,
                        name: 'Chris',
                        interest: [
                            '音乐',
                            '美食',
                            'Coffee',
                            '看书'
                        ]
                    },
                    {
                        id: 2,
                        name: '魏瑞',
                        interest: [
                            '音乐',
                            '电影',
                            '中国好声音',
                            '爸爸去哪了',
                            '非常静距离'
                        ]
                    },
                    {
                        id: 3,
                        name: '小飞子',
                        interest: [
                            '游泳',
                            '游戏',
                            '宅家里'
                        ]
                    }
                ];
});

	
	
</script>
</body>
</html>