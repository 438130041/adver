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
<script type="text/javascript">SyntaxHighlighter.defaults['toolbar'] = false;
  SyntaxHighlighter.all();</script>
<title>AngularJS（filter过滤器（模糊搜索））</title>
 <style type="text/css">
    table {
      width: 100%;
      border: 1px solid silver;
      border-collapse: collapse;
    }

    table th, td {
      border: 1px solid silver;
      border-collapse: collapse;
      padding: 3px;
    }
  </style>
</head>
<body ng-controller="MainCtrl">
  <a href="http://qiaole.sinaapp.com/" target="_blank"><img class="me" src="http://tp3.sinaimg.cn/1371186062/180/40003186387/1"></a>
  <a href="../index.html" title="点我返回Angular在线首页"><img class="me logo" src="../images/logo.png"></a>

  <div class="container">
    <h1 class="course-title">AngularJS入门教程：数据过滤——模糊搜索</h1>

    <h3><a href="../../match/csl.html">中超联赛数据过滤全教程</a></h3>
		<pre class="sourcePre brush: js;">// HTML表达式：
↔ filter_expression | filter : expression : comparator}}

// JS表达式：
$filter('filter')(array, expression, comparator)</pre>
    <div>
      全局搜素：<input type="text" ng-model="teamInfo.$" />
      比赛轮次：
      <select ng-model="teamInfo.Round" ng-options="v for v in uniqueRound" ng-change="resetFilter(teamInfo.Round)">
        <option value="">请选择比赛轮次</option>
      </select>
      比赛球场：
      <input type="text" ng-model="teamInfo.Situation" />
      比赛日期：
      <select ng-model="teamInfo.date" ng-options="v for v in uniqueDate" ng-change="resetFilter(teamInfo.date)">
        <option value="">请选择比赛日期</option>
      </select>
    </div>
    <br/>
    <div>
      <table>
        <tr>
          <th>场次</th>
          <th>轮次</th>
          <th>主场</th>
          <th>客场</th>
          <th>城市</th>
          <th>球场</th>
          <th>日期</th>
        </tr>
        <tr ng-repeat="v in match2015Data | filter: teamInfo" align="center">
          <td ng-bind="$index + 1"></td>
          <td ng-bind="v.Round"></td>
          <td ng-bind="v.Team1"></td>
          <td ng-bind="v.Team2"></td>
          <td ng-bind="v.MatchCity"></td>
          <td ng-bind="v.Situation"></td>
          <td ng-bind="v.date"></td>
        </tr>
      </table>
    </div>

    <div id="cyReward" role="cylabs" data-use="reward" style="text-align: center;margin-top: 35px;"></div>
    <div id="SOHUCS" sid="angular-tutorial-ng-filter-blur"></div>
    <div class="footer-favorite">
      <a href="javascript:alert('按住 ' + (navigator.userAgent.toLowerCase().indexOf('mac') != - 1 ? 'Command/Cmd' : 'CTRL') + ' + D 添加到收藏夹。')">好用请按CTRL+D收藏AngularJS在线教程</a>
      <script type="text/javascript" src="../../js/analysis.js"></script>
    </div>
  </div>
  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.32/angular.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.32/angular-animate.min.js"></script> -->
  <script>
    $(function () {
      $('.sourcePre').each(function (i, v) {
        $(v).text($(v).text().replace(/↔/gm, '{{'));
      });
    });

    var match2015Data = matchData['2015'];
    var app = angular.module('filterApp', ['ngAnimate']);
    app.controller('MainCtrl', ['$scope', function($scope) {
      $scope.match2015Data = match2015Data;
      $scope.teamInfo = {};

      $scope.resetFilter = function(v) {
        if (!v) $scope.teamInfo = {};
      };

      var uniqueValueInArray = function(arr, obj) {
        var n = {}, r = [];
        for (var i = 0; i < arr.length; i++) {
          var val = obj ? arr[i][obj] : arr[i];
          if (!n[val]) {
            n[val] = true;
            r.push(val);
          }
        }
        return r;
      };

      $scope.uniqueRound = uniqueValueInArray(match2015Data, 'Round');
      $scope.uniqueDate = uniqueValueInArray(match2015Data, 'date');
    }]);
  </script>

</body>
</html>