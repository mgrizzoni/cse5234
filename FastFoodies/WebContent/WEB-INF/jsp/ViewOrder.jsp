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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inner">
	<br>
	<form:form modelAttribute="order" method="get" action="purchase/confirmation">
    <div>
    <caption><b>Order Details:</b></caption>
		<table>
   			<tr>
    			<th>Item</th>
    			<th>Price</th>
    			<th>Quantity</th>
    		</tr>
			<c:forEach items="${order.items}" var="item" varStatus="loop">
				<tr>
					<td><form:input path="items[${loop.index}].name" readonly="true" /></td>
					<td>$<form:input path="items[${loop.index}].price" readonly="true" /></td>
					<td><form:input path="items[${loop.index}].quantity" readonly="true" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</form:form> 
	<form:form modelAttribute="payment" method="get" action="purchase/confirmation">
	<br>
	<div>
		<caption><b>Payment Details:</b></caption>
		<table>
			<tr>
				<th>Name</th>
				<th>Card Number</th>
				<th>Expiration Date</th>
				<th>CVV</th>
			</tr>
			<tr>
				<td><form:input path="cardHolderName" readonly="true" /></td>
				<td><form:input path="creditCardNumber" readonly="true" /></td>
				<td><form:input path="expirationDate" readonly="true" /></td>
				<td><form:input path="cvvCode" readonly="true" /></td>
			</tr>
		</table>
	</div>
	</form:form>
	<form:form modelAttribute="shipping" method="get" action="purchase/confirmation">
	<br>
	<div>
		<caption><b>Shipping Details:</b></caption>
		<table>
			<tr>
				<th>Name</th>
				<th>Address (Line 1)</th>
				<th>Address (Line 2)</th>
				<th>City</th>
				<th>State</th>
				<th>Zip</th>
			</tr>
			<tr>
				<td><form:input path="name" readonly="true" /></td>
				<td><form:input path="addressLine1" readonly="true" /></td>
				<td><form:input path="addressLine2" readonly="true" /></td>
				<td><form:input path="city" readonly="true" /></td>
				<td><form:input path="state" readonly="true" /></td>
				<td><form:input path="zip" readonly="true" /></td>
			</tr>
		</table>
	</div>
	<br>
	</form:form>
	<form:form method="get" style="justify-content: center" action="confirmation">
		<input type="submit" style="justify-content: center" value="Confirm order">
	</form:form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>