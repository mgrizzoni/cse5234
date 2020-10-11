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
<link rel="stylesheet" type="text/css" href="/FastFoodies/css/mystyle.css">
</head>
<body>
	<!--
	<script src="https://unpkg.com/react@16/umd/react.development.js" crossorigin></script>
  	<script src="https://unpkg.com/react-dom@16/umd/react-dom.development.js" crossorigin></script>
  	<script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>

  	 Load our React component. -->
  	<script type="text/javascript" src="/FastFoodies/js/validatePayment.js"></script>
  	
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inner">
		<br>
		<form:form modelAttribute="payment" id="payment" method="post" action="submitPayment">
		<caption><b>Enter Payment Information:</b></caption>
			<table>
				<tr>
					<td>Credit Card Number*</td>
					<td><form:input id="number" path="creditCardNumber" /></td>
					<td><font id="numberError" style="color: red"></font></td> 
				</tr>
				<tr>
					<td>Expiration Month*</td>
					<td><form:input id="month" path="expirationMonth" /></td>
					<td><font id="monthError" style="color: red"></font></td>
					<td>Expiration Year*</td>
					<td><form:input id="year" path="expirationYear" /></td>
					<td><font id="yearError" style="color: red"></font></td>
				</tr>
				<tr>
					<td>CVV Code*</td>
					<td><form:input id="code" path="cvvCode" /></td>
					<td><font id="codeError" style="color: red"></font></td> 
				</tr>
				<tr>
					<td>Card Holder Name*</td>
					<td><form:input id="name" path="cardHolderName" /></td>
					<td><font id="nameError" style="color: red"></font></td> 
				</tr>
				<tr>
					<td style="color: red">* indicates required value</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" onclick="return validate()"value="Submit payment"></td>
				</tr>
			</table>
		</form:form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
