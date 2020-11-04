<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Order</title>
<link rel="stylesheet" type="text/css" href="/FastFoodies/css/mystyle.css">
<link rel="stylesheet" type="text/css" href="/FastFoodies/css/pages.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inner">
	<br>
	<form:form modelAttribute="order" method="post" action="confirmOrder">
    <div>
    <caption><b>Order Details:</b></caption>
		<table>
   			<tr>
    			<th>Item</th>
    			<th>Price</th>
    			<th>Quantity</th>
    		</tr>
    		<!-- <tr><td></td><td>Test</td></tr>-->
			<c:forEach items="${order.getLineItems()}" var="item" varStatus="loop">
				<tr>					
					<td>${item.name}</td>
					<td>$${item.price}</td>
					<td>${item.quantity}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</form:form> 
	<div class="row">
  		<div class="col-75">
    		<div class="container">
      			<form:form modelAttribute="payment" method="post" action="confirmOrder">
	
				<div class="col-50">
		            <h4>Payment Details</h4>
		            <label for="cname">Name on Card</label>
		            <form:input id="name" path="cardHolderName" readonly="true"/>
		            <label for="ccnum">Credit card number</label>
		            <form:input id="number" path="creditCardNumber" readonly="true"/>
		            <label for="expmonth">Exp Month</label>
		            <form:input id="month" path="expirationMonth" readonly="true"/>
		            <div class="row1">
		              <div class="col-50">
		                <label for="expyear">Exp Year</label>
		                <form:input id="year" path="expirationYear" readonly="true"/>
		              </div>
		              <div class="col-50">
		                <label for="cvv">CVV</label>
		                <form:input id="code" path="cvvCode" readonly="true"/>
		              </div>
		            </div>
          		</div>
         		</form:form>
         		
         	</div>
         </div>
         
         
    </div>
	
	<br>
	<div class="row">
  		<div class="col-75">
    		<div class="container">
      			<form:form modelAttribute="shipping" id="shipping" method="post" action="confirmOrder">
	
				<div class="col-50">
		            <h4>Shipping Details</h4>
		            <label for="cname">Full Name</label>
		            <form:input id="name" path="name" readonly="true"/>
		            <label for="caddLine1">Address Line 1</label>
		            <form:input id="address" path="addressLine1" readonly="true"/>
		            <label for="caddLine2">Address Line 2</label>
		            <form:input path="addressLine2" readonly="true"/>
		            <label for="cCity">City</label>
		            <form:input id="city" path="city" readonly="true"/>
		            <div class="row1">
		              <div class="col-50">
		                <label for="cState">State</label>
		                <form:input id="state" path="state" readonly="true"/>
		              </div>
		              <div class="col-50">
		                <label for="cZip">Zip</label>
		                <form:input id="zip" path="zip" readonly="true"/>
		              </div>
		            </div>
          		</div>
         		</form:form>
         		
         	</div>
         </div>
         
         
    </div>
	<form:form method="post" style="justify-content: center" action="confirmOrder">
	
	    <div class="col-25">
			<input type="submit" style="justify-content: center" value="Confirm order" class="btn1">
		</div>
	</form:form>
	
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>