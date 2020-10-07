<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inner">
	<br>
<form:form modelAttribute="payment" method="post" action="submitPayment">
<caption><b>Enter Payment Information:</b></caption>
<table>
<tr>
<td>Credit Card Number:</td>
<td><form:input path="creditCardNumber" /></td>
</tr>
<tr>
<td>Expiration Date:</td>
<td><form:input path="expirationDate" /></td>
</tr>
<tr>
<td>CVV Code:</td>
<td><form:input path="cvvCode" /></td>
</tr>
<tr>
<td>Card Holder Name:</td>
<td><form:input path="cardHolderName" /></td>
</tr>
<tr><td colspan="2"><input type="submit" value="Submit payment"></td>
</tr>
</table>
</form:form>
</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
