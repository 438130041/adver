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
<title>AngularJS（nested-repeat嵌套（多从）循环）</title>
</head>
<body >



<div ng-controller="MainCtrl"><!-- 定义需要的指针 -->            
<table class="table table-bordered">
    <tr class="head-title">
        <th class="col-xs-3"></th>
        <th class="col-xs-3 text-center">P2P</th>
        <th class="col-xs-3 text-center">余额宝</th>
        <th class="col-xs-3 text-center">银行理财产品</th>
    </tr>
    <tr ng-repeat="info in infoList" ng-cloak><!--ng-repeat 指定要循环的对象 -->
        <td class="text-right title-desc" ng-bind="info.title"></td>
        <td class="text-center" ng-repeat="key in ['p2p', 'yeb', 'bank']"><!-- ng-repeat直接指定要循环的key值 -->
        <span ng-if="info[key]"><!-- 对key值进行判断 -->
            <span ng-if="info[key].length" ng-bind="info[key]" ng-class="{true: 'year-interest', false: 'etc-text'}[$parent.$parent.$parent.$first]"></span>
            <span ng-if="!info[key].length" class="glyphicon glyphicon-ok is-support"></span>
        </span>
            <span ng-if="!info[key]" class="glyphicon glyphicon-remove is-support"></span>
        </td>
    </tr>
</table>
</div>	


 <script type="text/javascript"> 
var myApp = angular.module('myApp', []); 
myApp.controller('MainCtrl',['$scope', function($scope) {//调用AngularJS中的服务时，使用对象点服务名的形式.后面的MainCtrl是指针用于该服务执行的位置
    $scope.infoList = [
        {
            title: '预期年化收益率',
            p2p: '7% - 14%',
            bank: '约 4% - 5.5%',
            yeb: '约 3% - 4%'
        },
        {
            title: '买入当天生息',
            p2p: true,
            bank: false,
            yeb: false
        },
        {
            title: '买入次日开始付息',
            p2p: true,
            bank: false,
            yeb: false
        },
        {
            title: '每日付息',
            p2p: true,
            bank: false,
            yeb: true
        },
        {
            title: '每日利息自动复投',
            p2p: true,
            bank: false,
            yeb: '同货币基金'
        },
        {
            title: '期限灵活，随时可取',
            p2p: true,
            bank: false,
            yeb: true
        },
        {
            title: '可以零钱增投',
            p2p: true,
            bank: false,
            yeb: true
        }
    ];
}]);
	
 </script> 
</body>
</html>