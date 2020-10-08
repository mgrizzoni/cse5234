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
	<script src="https://unpkg.com/react@16/umd/react.development.js" crossorigin></script>
  	<script src="https://unpkg.com/react-dom@16/umd/react-dom.development.js" crossorigin></script>
  	<script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>

  	<!-- Load our React component. -->
  	<script src="validate.js"></script>
  	
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<form:form modelAttribute="payment" id="payment" method="post" action="submitPayment">
	<caption><b>Enter Payment Information:</b></caption>
		<table>
			<tr>
				<td>Credit Card Number:</td>
				<td><form:input id="number" path="creditCardNumber" /></td>
				<td><font id="numberError" style="color: red">${numberError}</font></td> 
			</tr>
			<tr>
				<td>Expiration Date:</td>
				<td><form:input id="date" path="expirationDate" /></td>
				<td><font id="daterError" style="color: red">${numberError}</font></td> 
			</tr>
			<tr>
				<td>CVV Code:</td>
				<td><form:input id="code" path="cvvCode" /></td>
				<td><font id="codeError" style="color: red">${codeError}</font></td> 
			</tr>
			<tr>
				<td>Card Holder Name:</td>
				<td><form:input id="name" path="cardHolderName" /></td>
				<td><font id="nameError" style="color: red">${nameError}</font></td> 
			</tr>
				<tr><td colspan="2"><input type="submit" value="Submit payment"></td>
			</tr>
		</table>
	</form:form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
