<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 5px;
  text-align: center;
}
</style>
</head>
<body>
<form:form modelAttribute="payment" method="post" action="submitPayment">
<table>
<caption><b>Enter Payment Information</b></caption>
<tr>
<td>Credit Card Number:</td>
<td><form:input path="creditCardNumber" /></td>
<td>Expiration Date:</td>
<td><form:input path="expirationDate" /></td>
<td>CVV Code:</td>
<td><form:input path="cvvCode" /></td>
<td>Card Holder Name:</td>
<td><form:input path="cardHolderNumber" /></td>
</tr>
<tr><td colspan="2"><input type="submit" value="Payment"></td>
</tr>
</table>
</form:form>
</body>
</html>