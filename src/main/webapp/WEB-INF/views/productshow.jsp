<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	    <%@ taglib prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/head.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page session="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<style>

div.ex1 {
    width:500px;
    margin: auto;
    border: 3px solid #73AD21;
}

div.ex2 {
    max-width:500px;
    margin: auto;
    border: 3px solid #73AD21;
}
table {
    width:50%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: black;
    color: white;
}</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>PRODUCT DETAIL</title>
</head>
<body>
<c:set value="productmodel.do" var="ram"></c:set>
<form:form action="${ram}" method="POST"
		modelAttribute="ob" enctype="multipart/form-data">
		
		
			
			Product ID:
			<!-- <div class="ex1"> --><center> <td><form:input name="id" type="text"  path ="id" placeholder="id"/></td></center><!-- </div> -->
			<hr>
		
		
			Product Name:
			<center><td><form:input name="name"  type="text"   path="name"  placeholder="name"/></td></center>
			 <form:errors   path ="name" /> 
		<hr>
		
	
			Product Description:
			<center><td><form:input name="descrition"  type="text"   path="description" placeholder="description"/></td></center>
			 <form:errors   path ="description" /> <hr>
	 
		
			Product Price
			<center><td><form:input name="price"  type="text"  path="price" placeholder="price" /></td></center>
			<form:errors   path ="price" /> <hr>
		
		
		Image Name
			<center><td> <form:input  name="imgname"  type="text"  path="imgname" placeholder="imgname" /></td></center>
<br>
			<center><td><form:input path="filename" type="file" /></td></center>
			<hr>
		
		Category
		<form:select path="category" name="CATEGORY">
		<form:option value="NONE" label="--- Select ---"/>
		 <option value="onear">ONEAR HEADPHONES</option>
   <option value="overear">OVEREAR HEADPHONES</option>
   <option value="bluetooth">BLUETOOTH HEADPHONES</option>
   <option value="earbud">EARBUD HEADPHONES</option>
		
		</form:select>
   </tr>
   
 <br>
		
		<tr><sec:authorize access="hasRole('ROLE_ADMIN')">
			<center><td colspan="2"><input type="submit" name="action" value="Add" />
			
			<!-- <input type="submit" name="action" value="view" /> --></td></center>
			</sec:authorize>
			<center><td>
			<%-- <sec:authorize access="hasRole('ROLE_ADMIN')">
				<input type="submit" name="action" value="Edit" />
				
				 <input type="submit" name="action" value="Delete" />
				</td></center>
				</sec:authorize> --%>
		</tr>

		<br>
		
<%-- <center><a href="next">clickhere</a></center> --%>
	</form:form>
</body>
</html>