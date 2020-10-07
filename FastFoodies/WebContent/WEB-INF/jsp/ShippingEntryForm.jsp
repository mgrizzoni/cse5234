<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shipping Details</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inner">
	<br>
<form:form modelAttribute="shipping" method="post" action="submitShipping">
<caption><b>Enter Shipping Details:</b></caption>
<table>
<tr>
<td>Name:</td>
<td><form:input path="name" /></td>
</tr>
<tr>
<td>Address Line 1:</td>
<td><form:input path="addressLine1" /></td>
<td>Address Line 2:</td>
<td><form:input path="addressLine2" /></td>
</tr>
<tr>
<td>City:</td>
<td><form:input path="city" /></td>
<td>State:</td>
<td><form:input path="state" /></td>
<td>Zip:</td>
<td><form:input path="zip" /></td>
</tr>
<tr>
<td colspan="2"><input type="submit" value="Submit"></td>
</tr>
</table>
</form:form>
</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
