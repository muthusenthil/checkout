 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/head.jsp"%>
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title> music world</title>
<style>

body{
backgroundcolor="#E6E6FA";
}

.blink {
    animation-duration: 1s;
    animation-iteration-count: infinite;
    animation-name: blink;
}
 
@keyframes blink {
    0% {
        opacity: 1;
    }
    75% {
        opacity: 1;
    }
    76% {
        opacity: 0;
    }
    100% {
        opacity: 0;
    }
}
img {
    max-width: 200%;
    height: auto;
}
.menu ul {
    list-style-type: none;
    margin: 150;
    padding:14 0;
}
.menu li {
    padding: 8px;
    margin-bottom: 7px;
    background-color :#808080;
   
    box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}
</style>



</head>
<body background="red">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="Stylesheet"
	href="<c:url value="/resources/css/bootstrap.min.css"/>">
<link rel="Stylesheet" href="<c:url value="/resources/css/custom.css"/>">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery.1.10.2.min.js" />"></script>
<script src="<c:url value="/resources/js/main.js" />"></script>
<spring:url value="/resources/css/main.css" var="mainCss" />
<spring:url value="/resources/js/jquery.1.10.2.min.js" var="jqueryJs" />
<spring:url value="/resources/js/main.js" var="mainJs" />
<script src="<c:url value="/resources/js/respond.js"/>"></script>



<br>
<marquee behavior="alternate"><h2 style="background-color:rgb(255, 165, 0)">ENJOY FREE SHIPPING WHEN YOU ORDER TODAY</h2> </marquee><br>

<!-- --end nav -->



<h1 class="text-center"></h1>
<hr>
			
<div class="row">
	<div class="col-sm-3 menu">

		<center>
		<h2 class="blink" style="color:green;">CATEGORY </h2>
	
		<ul>
			<li><a href="<c:url value='/user/onear'/>" style="color: blue;">onear headphones</a></li>
			<li><a href="<c:url value='/user/overear'/>"  style="color: blue;">overear
					headphones</a></li>
			<li><a href="<c:url value='/user/earbud'/>"style="color: blue;">earbud headphones</a></li>
			<li><a href="<c:url value='/user/bluetooth'/>" style="color: blue;">bluetooth
					headphones</a></li>
				
					</ul>
						</center>
	</div>
	



 
	<div class="col-md-6">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">

				<div class="item active">
					<img src="<c:url value="/resources/images/1.jpg" />" alt=" " />
				</div>
				<!---item1--->

				<div class="item">
					<img src="<c:url value="/resources/images/2.jpg" />" alt=" " />
				</div>
				<!---item2--->

				<div class="item">
					<img src="<c:url value="/resources/images/3.jpg" />" alt=" " />
				</div>
				<!---item3--->

				<div class="item">
					<img src="<c:url value="/resources/images/4.jpg" />" alt=" " />
				</div>
				<!---item4--->

			</div>
			<!---carousel-inner--->

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>


 <div class="col-sm-3">
<div class="item">
					<img src="<c:url value="/resources/images/H2.gif" />" alt=" " width="75%" height="235"/>
				</div>


</div> 
</div>


<br>
<hr>
<%-- 	
<div class="row">

	<div class="col-sm-12">
<img src="<c:url value="/resources/images/bc.jpg"/>" alt="" width="1550" height="400" >
</div>
<div class="col-sm-6">
<img src="<c:url value="/resources/images/sc.jpg"/>" alt="" >
</div> 

<div class="col-sm-6">
<img src="<c:url value="/resources/images/tv1.jpg"/>" alt="" >
</div> 
<br><hr>
<div class="col-sm-6">
<img src="<c:url value="/resources/images/bec.jpg"/>" alt="" >
</div> 

<div class="col-sm-6">
<img src="<c:url value="/resources/images/bo1.jpg"/>" alt="" >
</div> 
</div> --%>

<!-- --end carousel -->



<hr>
<center><h2>
EXPLORE BRANDS
</h2></center>
<!-- <h1>
	EXPLORE BRANDS
</h1> -->


<div class="row">
	<div class="col-xs-3 ">
		<p>
			<a href='bose1'><img class="img-responsive"
				src="<c:url value="/resources/images/bose.jpg"/>" alt="bose"></a>
		</p>

	</div>

	<div class="col-xs-3">
		<p>
			<a href='sony1'><img class="img-responsive"
				src="<c:url value="/resources/images/sony.jpg"/>" alt="sony"></a>
		</p>
	</div>

	<div class="col-xs-3 ">
		<p>
			<a href='sennheiser1'><img class="img-responsive"
				src="<c:url value="/resources/images/sennheiser.jpg"/>"
				alt="sennheiser"></a>
		</p>
	</div>

	<div class="col-xs-3 ">
		<p>
			<a href='skullcandy1'><img class="img-responsive"
				src="<c:url value="/resources/images/skullcandy.jpg"/>"
				alt="skullcandy"></a>
		</p>
	</div>
	</div>
	<br>
	<hr>
	
<center><h2>
NEW COLLECTIONS
</h2></center>
	<%-- <h1>
		<center>NEW LAUNCHES</center>
	</h1> --%>
<div class="row">
	<div class="col-xs-3 ">
		<p>
			<a href='panasonic1'><img class="img-responsive"
				src="<c:url value="/resources/images/Panasonic new.jpg"/>"
				alt="panasonic new"></a>
		</p>
	</div>

	<div class="col-xs-3">
		<p>
			<a href='beats1'><img class="img-responsive"
				src="<c:url value="/resources/images/beats.jpg"/>" alt="beats"></a>
		</p>
	</div>

	<div class="col-xs-3 ">
		<p>
			<a href='monster1'><img class="img-responsive "
				src="<c:url value="/resources/images/monster.jpg"/>" alt="monster"></a>
		</p>
	</div>

	<div class="col-xs-3 ">
		<p>
			<a href='sentey1'><img class="img-responsive"
				src="<c:url value="/resources/images/sentey.jpg"/>" alt="sentey"></a>
		</p>
	</div>
	</div>
	<hr>


	

	<br>
	<%@include file="/WEB-INF/views/footer.jsp"%>

	</body>
</html>