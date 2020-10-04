<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Order</title>
</head>
<body>
    <div>
		<table border="solid 1px black" width="300px">
   			<tr>
    			<th>Item</th>
    			<th>Price</th>
    			<th>Quantity</th>
    		</tr>
			<c:forEach items="${order.items}" var="item" varStatus="loop">
				<tr>
					<td><form:input path="items[${loop.index}].name" readonly="true" /></td>
					<td>$<form:input path="items[${loop.index}].price" readonly="true" /></td>
					<td><form:input path="items[${loop.index}].quantity" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div>
		Payment Information
		<table border="solid 1px black" width="300px">
			<tr>
				<th>Name</th>
				<th>Card Number</th>
				<th>Expiration Date</th>
				<th>CVV</th>
			</tr>
			<tr>
				<td><form:input path="payment.cardHolderName" readonly="true" /></td>
				<td><form:input path="payment.creditCardNumber" readonly="true" /></td>
				<td><form:input path="payment.expirationDate" readonly="true" /></td>
				<td><form:input path="payment.cvvCode" readonly="true" /></td>
			</tr>
		</table>
	</div>
	<div>
		Shipping Information
		<table border="solid 1px black" width="300px">
			<tr>
				<th>Name</th>
				<th>Address (Line 1)</th>
				<th>Address (Line 2)</th>
				<th>City</th>
				<th>State</th>
				<th>Zip</th>
			</tr>
			<tr>
				<td><form:input path="shipping.name" readonly="true" /></td>
				<td><form:input path="payment.addressLine1" readonly="true" /></td>
				<td><form:input path="payment.addressLine2" readonly="true" /></td>
				<td><form:input path="payment.city" readonly="true" /></td>
				<td><form:input path="payment.state" readonly="true" /></td>
				<td><form:input path="payment.zip" readonly="true" /></td>
			</tr>
		</table>
	</div>
	<form:form modelAttribute="order" method="post" action="purchase/submitItems">
		<input type="submit" value="Purchase">
	</form:form>
</body>
</html>