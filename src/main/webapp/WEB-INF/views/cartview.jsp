<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Cart</title>
</head>
<body>
<%@include file="/WEB-INF/views/head.jsp"%>

<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
            <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${cartList}" var="cart">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="<c:url value="resources/admin/upload/${cart.productmodel.imgname}.jpg"/>" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading" style=color:white ><a href="home"> ${cart.productmodel.name}</a></h4>
                               
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="text" class="form-control" id="exampleInputEmail1" value="${cart.quantity}">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>Rs${cart.productmodel.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>Rs${cart.totalPrice}</strong></td>
                        <td class="col-sm-1 col-md-1">
                       <a href="<c:url value="/delete/cart/${cart.cartItemId}"/>"> <button type="button" class="btn btn-danger" >
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></a></td> 
                      
                    </tr>
                    </c:forEach>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                        <a href="<c:url value="index"/>"> <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a></td>
                        <td>
                        <a href="<c:url value="/Shipping.obj"/>"> <button type="button" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>