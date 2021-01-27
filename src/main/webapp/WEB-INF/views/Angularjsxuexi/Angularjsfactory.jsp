<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html  ng-app="factoryApp"><!-- 加上这个标签就可以使用Angularjs了（ng-app是根元素，所有 AngularJS 应用都必须要要一个根元素，在下面的启动AngularJS时以根元素作为指令） -->
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
<title>AngularJS(factory（工厂）)</title>
<style type="text/css">
	
</style>

</head>
<body>
	<div class="container">
		<div>
			数据过滤：
			<input type="text"  ng-model="nameText"  placeholder="输入过滤信息。。。。">
			<ul ng-controller="MainCtrl">
				<li class="animate-repeat" ng-repeat="info in names | filter:nameText">{{$index+1}}、今年{{info.name}}已经{{info.age}}岁了！ {{$first}}-{{$middle}}-{{$last}}-{{$even}}-{{$odd}}</li>
			</ul>
			
			
			
		</div>
	
	
	</div>
	

<script type="text/javascript">
	//显示函数，输入值后；立刻在页面显示
	var app = angular.module('factoryApp', []);
	app.factory('mainFactory', function(){
		var factory = {};
		var names = [//上面可以是固定的数据，如一些共有的数据
			{name: 'a乔乐', age:'25'},
			{name: 'b周迅', age:'40'},
			{name: 'c魏瑞', age:'25'},
			{name: 'd展昭', age:'98'}
		];
		factory.getNames = function(){
			return names;
		};
		// etc function
		factory.addNewPerson = function(){//在上面写好一些固定的共有的带数据后，下面可以进行添加
			// 添加信息的用户(这里可以添加新的信息)
			names.push({name: '猪八戒', age: '88'});
		};
		return factory;
	})
	app.controller('MainCtrl', function($scope, mainFactory){
		$scope.names = [];
		init();
		function init(){
			mainFactory.addNewPerson();
			$scope.names = mainFactory.getNames();
		}
	});	

	//第二种实现
	/*
	
	app.factory('mainFactory', function(){
    var factory = {};
    var names = [
        {name: 'a乔乐', age:'25'},
        {name: 'b周迅', age:'40'},
        {name: 'c魏瑞', age:'25'},
        {name: 'd展昭', age:'98'}
    ];
    factory.getNames = function(){
        return names;
    };
    // etc function
    factory.addNewPerson = function(){
        // 添加信息的用户
        names.push({name: '猪八戒', age: '88'});
    };
    return factory;
})
	app n.controller('MainCtrl', function($scope, mainFactory){
    $scope.names = [];
 
    init();
 
    function init(){
        mainFactory.addNewPerson();
        $scope.names = mainFactory.getNames();
    }
});
	
	
	
	*/
	
	
	
</script>
</body>
</html>