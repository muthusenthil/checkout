<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@include file="/WEB-INF/views/head.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="Stylesheet" href="<c:url value="/resources/css/custom.css"/>">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

<style>

body {
    background-color: yellow;
}
</style>
<title></title>
</head>
<body >




		 	<div class="row">
		<c:forEach items="${productmodelList}" var="productmodel">
		<!--  <div class = "col-sm-6 col-md-3"> -->
		<div class ="col-md-3 column productbox">
		<div class="thumbnail">
		<img src="<c:url value="/resources/admin/upload/${productmodel.imgname}.jpg"/>"class="img-responsive">
		<div class=""><c:url value="/${productmodel.name}"></c:url></div>
		<div class=""><c:url value="/${productmodel.price}"></c:url><div class="pull-right"><a href="" class"btn btn-danger btn-xs" role="button">BUY</a></div></div>

		
		 <sec:authorize access="hasRole('ROLE_ADMIN')">
		 <td><a href="<c:url value='edit/${productmodel.id}' />" >Edit</a></td>
			<td><a href="<c:url value='delete/${productmodel.id}' />" >Delete</a></td>
		
		    </sec:authorize>
		    
		     <sec:authorize access="hasRole('ROLE_USER')"><a href="addtocart/${productmodel.id}" class="btn btn-default"><span
									class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a><%-- <a href="update/${productmodel.id}">Add To Cart</a> --%> </td>
		   
		    </sec:authorize>
			
			
			</div>
			</div>
				</c:forEach>
				</div>
				
		
</body>
</html>