<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
<%-- <spring:url value="/resources/css/main.css" var="mainCss" />
<spring:url value="/resources/js/jquery.1.10.2.min.js" var="jqueryJs" />
<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="<c:url value="/resources/js/respond.js"/>"></script>
	 --%>
<title>Insert title here</title>
</head>

<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: green;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}



}
</style>
</head>

<div class="row">
<div class="col-sm-12">
<div class="item active">
					<img src="<c:url value="/resources/images/single.jpg" />" alt=" " />
				</div> 

</div>
</div>
<body>
	<nav class="navbar navbar">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<!-- <a class="navbar-brand" href="#">Logo</a> -->
		</div>
		<%--  <div class="row">
		
		<div class="item">
					<img src="<c:url value="/resources/images/h3.gif" />" alt=" " width="50%" height="140"/>
				</div> --%>
 		
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				    <a class="navbar-brand" href="#">MusicWorld</a>
				<li class="active"><a href="back">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">BRANDS <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="click" style="color: red">Bose</a></li>
						<li><a href="#">Beats</a></li>
						<li><a href="#">Panasonic</a></li>
						<li><a href="#">Monster</a></li>
						<li><a href="#">Sennheiser</a></li>
						<li><a href="#">Sentey</a></li>
						<li><a href="#">Skullcandy</a></li>
						<li><a href="#">Sony</a></li>
					</ul></li>
				<li><a href="#">About</a></li>
				<!--  <li><a href="uploadFile">Image</a></li> -->

				<li><a href="click">overear</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="home"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>
				
							<sec:authorize access="hasRole('ROLE_USER')">
				 <li> <a href="<c:url value="/cart" />" >view cart</a>
        </li>
        </sec:authorize>
       
   
         <li>
        <a href="<c:url value="/next" />" >viewall</a>
        
        </li>
         
          
          
        
        
				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<li class="active"><a href="<c:url value="/login"/>">Login</a></li>
				</c:if>
			
				<c:if test="${pageContext.request.userPrincipal.name!=null}">
					<li class="active"><a href="<c:url value="/logout"/>"><span class="glyphicon glyphicon-admin"></span>Logout</a></li>
					<h7 style=color:white>welcome:${pageContext.request.userPrincipal.name}</h7>
				</c:if>
				<sec:authorize access="hasRole('ROLE_ADMIN')">
				<li><a href="<c:url value='/admin/productshow'/>"> Product</a></li>
				</sec:authorize>
				<%-- <sec:authorize access="hasRole('ROLE_USER')">
				
				<li><a href="user/"> Product</a></li>
				</sec:authorize>
 --%>
			</ul>
			
		</div>
	</div>
	</nav>
</div>

</body>
</html>