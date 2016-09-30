<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@include file="/WEB-INF/views/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <style>
body{
background="<c:url value="/resources/unsplash/shipping.jpg"/>
} -->

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="https://images.unsplash.com/photo-1452672989313-64a9ab02df37?dpr=1&auto=format&crop=entropy&fit=crop&w=1500&h=893&q=80&cs=tinysrgb">
<div class="container">
    <div class="row">
       <center> <form   modelAttribute="shipping" role="form">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
             s       <label for="InputName">Name</label>
                    <div class="input-group">
                        <input type="text" pattern="[a-zA-Z]{3,15}" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div><br>
                <div class="form-group">
                    <label for="mobileno">MobileNo</label>
                    <div class="input-group">
                        <input type="mobileno" pattern="[9|7|8][0-9]{9}" class="form-control" id="mobileno" name="mobileno" placeholder="Enter MobileNo"  title="Number must be starts with 9,7 and 8">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div><br>
                <div class="form-group">
                    <label for="city">City</label>
                    <div class="input-group">
                        <input type="city" pattern="[a-z,A-Z]{3,9}" class="form-control" id="city" name="city" placeholder="Enter City" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div><br>
                <div class="form-group">
                    <label for="address">Enter Address</label>
                    <div class="input-group">
                        <textarea name="address" pattern="[A-Z,a-z][0-9]" id="address" class="form-control" rows="5" required></textarea>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div><br>
                
                <div class="form-group">
                    <label for="pincode">Enter PinCode</label>
                    <div class="input-group">
                        <input type="pincode" pattern="[A-Z,a-z][0-9]" id="pincode" class="form-control" rows="5" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div><br>
                
                <div class="row">
						<div class="col-md-6">
							<button class="btn btn-lg btn-primary btn-block signup-btn"
								name="_eventId_submit" type="submit" id="btnSubmit"
								value="submit">Register</button>
						</div>
					</div><br>
               <!--  <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right"> -->
            </div>
        </form></center>
      
    </div>
</div>



	<%-- <div class="container">
		<div class=row>
			<div class='login' style="color: black">
				
				<form:form modelAttribute="shipping" accept-charset="utf-8"
					class="form">


					<form:input path="name" pattern="[a-zA-Z]{3,30}" required="true"
						class="form-control input-lg" placeholder="Name" />

					<br />

					<form:input path="address" required="true"
						class="form-control input-lg" placeholder="Your Address" />

					<br />


					<form:input path="mobilenumber" pattern="[9|7|8][0-9]{9}"
						required="true" class="form-control input-lg"
						placeholder="Your Mobile Number" />

					<br />



					<form:input path="pincode" id="pincode" required="true"
						class="form-control input-lg" placeholder="Pincode" />

					<br />






					<div class="row">
						<div class="col-md-6">
							<button class="btn btn-lg btn-primary btn-block signup-btn"
								name="_eventId_submit" type="submit" id="btnSubmit"
								value="submit">Register</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div> --%>
</body>
</html>