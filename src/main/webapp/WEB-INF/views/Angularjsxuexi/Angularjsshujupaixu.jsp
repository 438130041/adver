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
<title>AngularJS过滤器数据排列</title>
<style type="text/css">
    [ng-cloak] {
      display: none;
    }
    .hover-effect {
      cursor: pointer;
    }
    .main-container .jumbotron {
      position: relative;
      padding: 5px 0 5px 50px;
      margin-bottom: 15px;
    }
    .main-container .jumbotron img {
      vertical-align: text-top;
    }
    .main-container .jumbotron .dropdown {
      position: absolute;
      right: 0;
      bottom: 0;
    }
    .main-container .jumbotron .dropdown .dropdown-menu {
      display: block;
      right: 0;
      left: auto;
      min-width: 94px;
    }
    .table img {
      vertical-align: middle;
      position: absolute;
      margin: -5px -60px;
      width: 30px;
    }
    .table tbody tr th label {
      margin-bottom: 0;
    }
    .table-hover>tbody>tr:hover td:nth-child(2) {
      font-size: 16px;
    }
    #matchScoreChar {
      min-height: 400px;
    }
</style>
	

</head>
<body ng-controller="MainCtrl">

    <div class="jumbotron text-center" ng-cloak>
      <h1>{{selectedYear}}赛季中超联赛 积分榜 <img src="//n.sinaimg.cn/sports/csl/tag.jpg" alt=""/></h1>
      <div class="dropdown">
        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" ng-click="toggleDropdown()">
          	历年赛季
          <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1" ng-if="isShowDropdown">
          <li ng-repeat="v in years" ng-click="selectSeason(v)"><a href="javascript:void(0);">{{v}}赛季</a></li>
        </ul>
      </div>
    </div>
    <table class="table table-bordered table-hover" ng-cloak>
      <tr>
        <th class="text-center hover-effect" ng-repeat="(k, v) in cslTableHead" ng-class="{true: 'col-xs-2', false:'col-xs-1'}[$index == 1 || $index == 2]" ng-click="sortArrByKey(k)">
          <label ng-bind="v"></label>
          <span class="glyphicon glyphicon glyphicon-arrow-up" ng-show="sortArrKey == k && sortReverse"></span>
          <span class="glyphicon glyphicon glyphicon-arrow-down" ng-show="sortArrKey == k && !sortReverse"></span>
        </th>
      </tr>
      <tr class="text-center" ng-repeat="v in cslMatchList | orderBy: sortArrKey: sortReverse" ng-class="{'warning': v.active}">
        <td ng-repeat="(key, val) in cslTableHead" ng-class="{danger: key == 'team_order' && v.team_order == 1, info: key == 'team_order' && v.team_order == 2, success: key == 'team_order' && v.team_order == 3, 'hover-effect': key == 'team_cn'}" title="{{showTitle(key, v)}}">
          <a ng-if="key === 'team_cn'" ng-href="csl.html?{{v[key]}}">
            <img ng-src="//www.sinaimg.cn/lf/sports/logo35/{{ v.sl_id }}.png" alt="{{v[key]}}" ng-style="{marginLeft: (v[key].length > 4 ? '-52px' : '-60px')}"/>
            {{v[key]}}
          </a>
          <span ng-if="key !== 'team_cn'">{{v[key]}}</span>
        </td>
      </tr>
      <tr>
        <th class="text-center hover-effect" ng-repeat="(k, v) in cslTableHead" ng-class="{true: 'col-xs-2', false:'col-xs-1'}[$index == 1 || $index == 2]" ng-click="sortArrByKey(k)">
          <label ng-bind="v"></label>
          <span class="glyphicon glyphicon glyphicon-arrow-up" ng-show="sortArrKey == k && sortReverse"></span>
          <span class="glyphicon glyphicon glyphicon-arrow-down" ng-show="sortArrKey == k && !sortReverse"></span>
        </th>
      </tr>
    </table>

    <div id="matchScoreChar"></div>
	
	
							
	
	
<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('NameApp', []);
	
	 app.controller('MainCtrl', ['$scope', '$http', '$filter', function($scope, $http, $filter) {
	      var thisYear = new Date().getFullYear();
	      $scope.isShowDropdown = false;
	      $scope.cslTableHead = {
	        team_order: '名次',
	        team_cn: '队名',
	        score: '积分',
	        count: '场次',
	        win: '胜',
	        draw: '平',
	        lose: '负',
	        goal: '进球',
	        losegoal: '失球',
	        truegoal: '净胜球'
	      };
	      $scope.selectedYear = thisYear;
	      $scope.years = [];
	      while (thisYear >= 2012) {
	        $scope.years.push(thisYear);
	        thisYear--;
	      }
	      $scope.toggleDropdown = function() {
	        $scope.isShowDropdown = !$scope.isShowDropdown;
	      };

	      var drawScoreChar = function(data) {
	        var sortArrKey = $scope.sortArrKey;
	        data = $filter('orderBy')($scope.cslMatchList, sortArrKey, $scope.sortReverse);
	        var charData = [];
	        angular.forEach(data, function(v) {
	          charData.push({
	            name: v.team_cn,
	            y: v.score,
	            order: v.team_order
	          });
	        });
	        Highcharts.chart('matchScoreChar', {
	          chart: {
	            type: 'column'
	          },
	          title: {
	            text: '中超联赛积分榜图表(按' + $scope.cslTableHead[sortArrKey] + '排行)'
	          },
	          subtitle: {
	            text: '16支球队 14个城市 240轮赛程'
	          },
	          xAxis: {
	            type: 'category'
	          },
	          yAxis: {
	            title: {
	              text: ''
	            }
	          },
	          legend: {
	            enabled: false
	          },
	          plotOptions: {
	            series: {
	              borderWidth: 0,
	              dataLabels: {
	                enabled: true,
	                format: '{point.y}分'
	              }
	            }
	          },
	          tooltip: {
	            headerFormat: '',
	            pointFormat: '<span style="font-size:14px;color:{point.color}">{point.name}</span><br/>当前排名第<b>{point.order}</b> 积分：<b>{point.y}</b>分<br/>'
	          },
	          series: [{
	            name: 'name',
	            colorByPoint: true,
	            data: charData
	          }]
	        });
	      };

	      $scope.cslMatchList = [];
	      $scope.getMatchList = function(year) {
	        $scope.cslMatchList = [];
	        var curTeamInfo = decodeURIComponent(location.search.split('?')[1]);

	        var url = location.protocol + '//each.sinaapp.com/wechat/url2text.php?http://platform.sina.com.cn/sports_all/client_api?_sport_t_=football&_sport_s_=opta&_sport_a_=teamOrder&use_type=team&app_key=3571367214&type=213&format=json&season=' + year;
	        $http.get(url).then(function(res) {
	          var data = res.data.result.data;
	          angular.forEach(data, function(v) {
	            angular.forEach(v, function(val, k) {
	              if (/^\d+$/.test(val)) v[k] *= 1;
	            });
	            if (curTeamInfo === v.team_cn) v.active = true;
	            $scope.cslMatchList.push(v);
	          });
	          drawScoreChar();
	        });
	      };
	      $scope.getMatchList($scope.selectedYear);

	      $scope.sortArrByKey = function(key) {
	        $scope.sortArrKey = key;
	        $scope.sortReverse = !$scope.sortReverse;
	      };
	      $scope.sortArrByKey('score');

	      $scope.selectSeason = function(year) {
	        $scope.toggleDropdown();
	        $scope.selectedYear = year;
	        $scope.getMatchList(year);
	      };
	      $scope.showTitle = function(k, v) {
	        var title = '';
	        if (k === 'score') {
	          title = v.team_cn + '\n主场得'+v.home_score+'分，客场得'+v.away_score+'分。\n总'+v.score+'分 = ';
	          var win = v.win;
	          var draw = v.draw;
	          if (win > 0) {
	            title += '胜'+win+'x3分';
	          }
	          if (draw > 0) {
	            title += (win > 0 ? ' + ' : '') + '平'+draw+'x1分';
	          }
	        } else if (k === 'count') {
	          title = v.team_cn + '\n主场战3场，客场战3场。';
	        } else if (k === 'win') {
	          title = v.team_cn + '\n主场胜'+v.home_win+'场，客场胜'+v.away_win+'场。';
	        } else if (k === 'draw') {
	          title = v.team_cn + '\n主场平'+v.home_draw+'场，客场平'+v.away_draw+'场。';
	        } else if (k === 'lose') {
	          title = v.team_cn + '\n主场败'+v.home_lose+'场，客场败'+v.away_lose+'场。';
	        } else if (k === 'goal') {
	          title = v.team_cn + '\n主场进'+v.home_goal+'球，客场进'+v.away_goal+'球。';
	        } else if (k === 'losegoal') {
	          title = v.team_cn + '\n主场进'+v.home_losegoal+'球，客场进'+v.away_losegoal+'球。';
	        } else if (k === 'truegoal') {
	          title = v.team_cn + '\n主场进'+v.home_truegoal+'球，客场进'+v.away_truegoal+'球。';
	        }
	        return title;
	      };

	      $scope.$watch('sortArrKey+sortReverse', function(newVal, oldVal) {
	        if (newVal === oldVal) { return; }
	        drawScoreChar();
	      });

	    }]);

	    app.filter('sortArrFilter', [function() {
	      return function(arr, key, desc) {
	        return arr.sort(function(a, b) {
	          return desc ? (b[key] - a[key]) : (a[key] - b[key]);
	        });
	      };
	    }]);
	
	
</script>
</body>
</html>