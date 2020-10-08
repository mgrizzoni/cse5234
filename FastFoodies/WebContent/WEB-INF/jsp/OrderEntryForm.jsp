<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Entry</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
</style>
</head>
<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inner">
	<br>
	<form:form modelAttribute="order" id="items" method="post" action="purchase/submitItems">
    	<table>
    		<tr>
    			<th>Item</th>
    			<th>Price</th>
    			<th>Quantity</th>
    		</tr>
			<c:forEach items="${order.items}" var="item" varStatus="loop">
				<tr>
					<td><form:input id="name" path="items[${loop.index}].name" readonly="true" /></td>
					<td>$<form:input id="price" path="items[${loop.index}].price" readonly="true" /></td>
					<td><form:input id="price" path="items[${loop.index}].quantity" /></td>
				</tr>
			</c:forEach>
	  		<tr>
				<td colspan="2"><input type="submit" value="Purchase"></td>
	  		</tr>
    	</table>
	</form:form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>