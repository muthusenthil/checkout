<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<script type="text/javascript">
angular.module('myapp',[]).controller('mainController',function($scope,$http){
alert ("hi");
console.log("im in getProduct");
$http((method:'Get',url:'prd')).success(function(data,status,headers,config)
{
alert(data);
//$scope.categ=JSON.parse(JSON.stringify(data));
$scope.prdt=data;
console.log("length"+prdt.length);
for(var c=0;c<$scope.prdt.length;c++)
{
var cc=$scope.prdt(c);
console.log(cc);
console.log($scope.prdt);
return $scope.prdt;
}
});
});
</script>
</head>
<body>
<div class="container" ng-app="myapp" ng-controller="mainController">
<tr ng-repeat="p in prdt">
<td>{{p.id}}</td>
<td>{{p.name}}</td>
<td>{{p.description}}</td>
<td>{{p.price}}</td>
<td>{{p.category}}</td>
</div>
</body>
</html>