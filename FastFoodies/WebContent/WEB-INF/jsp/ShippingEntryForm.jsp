<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shipping Details</title>
<link rel="stylesheet" type="text/css" href="/FastFoodies/css/mystyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<script type="text/javascript" src="/FastFoodies/js/validateAddress.js"></script>
	
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inner">
		<br>
		<form:form modelAttribute="shipping" id="shipping" method="post" action="submitShipping">
			<caption><b>Enter Shipping Details:</b></caption>
			<table>
				<tr>
					<td>Name*</td>
					<td><form:input id="name" path="name" /></td>
					<td><font id="nameError" style="color: red"></font></td> 
				</tr>
				<tr>
					<td>Address Line 1*</td>
					<td><form:input id="address" path="addressLine1" /></td>
					<td>Address Line 2</td>
					<td><form:input path="addressLine2" /></td>
					<td><font id="addressError" style="color: red"></font></td>
				</tr>
				<tr>
					<td>City*</td>
					<td><form:input id="city" path="city" /></td>
					<td><font id="cityError" style="color: red"></font></td>  
				</tr>
				<tr>
					<td>State*</td>
					<td><form:input id="state" path="state" /></td>
					<td>Zip*</td>
					<td><form:input id="zip" path="zip" /></td>
					<td><font id="stateError" style="color: red"></font></td> 
					<td><font id="zipError" style="color: red"></font></td>
				</tr>
				<tr>
					<td style="color: red">* indicates required value</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" onclick="return validate()" value="Submit"></td>
				</tr>
			</table>
		</form:form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>