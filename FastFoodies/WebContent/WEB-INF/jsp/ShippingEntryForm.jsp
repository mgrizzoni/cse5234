<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shipping Details</title>
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
<form:form modelAttribute="shipping" method="post" action="submitShipping">
<table>
<caption><b>Enter Shipping Details</b></caption>
<tr>
<td>Name:</td>
<td><form:input path="name" /></td>
<td>Address Line 1:</td>
<td><form:input path="addressLine1" /></td>
<td>Address Line 2:</td>
<td><form:input path="addressLine2" /></td>
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

</body>
</html>
