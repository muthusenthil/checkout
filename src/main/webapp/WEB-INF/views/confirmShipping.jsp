<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@include file="/WEB-INF/views/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<form:form modelAttribute="shipping">
				<form:label path="name">Name:</form:label>${shipping.name}
					<br>
					
					<form:label path="name">City:</form:label>${shipping.city}
					<br>
				
				<form:label path="address">Address :</form:label>${shipping.address}
					<br>
				
				<form:label path="mobilenumber">Mobile number :</form:label>${shipping.mobilenumber}
					<br>
				
				<form:label path="pincode">Pincode :</form:label>${shipping.pincode}
					<br>
				
				
				
				<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
				<input name="_eventId_edit" style=color:black type="submit" value="Edit" />
				<input name="_eventId_submit" style=color:black type="submit" value="ConfirmShipping" />
				<br />
			</form:form>
		</fieldset>
	</div>
</body>
</html>