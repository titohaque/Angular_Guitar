<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="guitar">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My home work Jsp with Angularjs </title>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/themes/smoothness/jquery-ui.css" />

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0/angular.min.js"></script>

<script type="text/javascript" src="js/main.js"></script>
<link rel="stylesheet" href="css1/style.css">
</head>

<body>

<div ng-controller="myValue"  class="wrapper">
<div id="imgdiv" ng-model="image1">
<img ng-src={{image1}}>
</div> 

<!-- <div id="p_info1"></div> -->
<div id="p_info" ng-model="product_info">
<p>{{product_info}}</p>
</div>


<button id="btnnext" ng-click="next()"></button><br>
<button id="btnpre" ng-click="previous()"></button>

<section ng-controller="table">
<table>
<tr ng-repeat="item in guitars">
<td>{{item.product_discription}}</td>
<td>{{item.shipping_details}}</td>
<td>{{item.custmer_reviews}}</td>
</tr>



</table>


</section>


</div>


</body>
</html>