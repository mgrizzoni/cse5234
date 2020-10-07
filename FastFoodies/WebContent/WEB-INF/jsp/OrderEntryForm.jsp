<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Entry</title>
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
	<jsp:include page="header.jsp"></jsp:include>
	<br>
	<form:form modelAttribute="order" method="post" action="purchase/submitItems">
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
					<td><form:input path="items[${loop.index}].quantity" /></td>
				</tr>
			</c:forEach>
	  		<tr>
				<td colspan="2"><input type="submit" value="Purchase"></td>
	  		</tr>
    	</table>
	</form:form>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>