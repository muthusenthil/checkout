<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="/WEB-INF/views/head.jsp"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<table border="1">
			<tr>
			<th> ID </th>
			<th> NAME </th>
			<th> DESCRIPTION </th>
			<th> PRICE </th>
			<th> CATEGORY</th>
			<th> IMAGE NAME</th>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<th> EDIT</th>
			<th> DELETE</th>
			</sec:authorize>
			<sec:authorize access="hasRole('ROLE_USER')">
			<th> Add To Cart</th>
			<th> View</th>
			</sec:authorize>
		
				
			</tr>
			
			<c:forEach items="${productmodelList}" var="productmodel">
				<tr>
					<td>${productmodel.id}</td>
					<td>${productmodel.name}</td>
					<td>${productmodel.description}</td>
					<td>${productmodel.price}</td>
					<td>${productmodel.category}</td>
					<td>${productmodel.imgname}</td>
					  <td>
					  <sec:authorize access="hasRole('ROLE_ADMIN')"><a href="/admin/edit/${productmodel.id}">Edit</a> </td>
		    <td><a href="delete/${productmodel.id}">Delete</a></td>
		    </sec:authorize>
		     <td>
		     <sec:authorize access="hasRole('ROLE_USER')"><a href="update/${productmodel.id}">Add To Cart</a> </td>
		    <td><a href="delete/${productmodel.id}">View</a></td>
		    </sec:authorize>
			
					</tr>

			</c:forEach>
		</table>
</body>
</html>