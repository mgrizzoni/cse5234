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
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
</style>
</head>
<body>
	<script>
		var x = 0;
		var span = document.querySelector('span'); // find the <span> element in the DOM
		var increment = document.getElementById('increment'); // find the element with the ID 'increment'
		var decrement = document.getElementById('decrement'); // find the element with the ID 'decrement'
	
		increment.addEventListener('click', function () {
		  // this function is executed whenever the user clicks the increment button
		  span.textContent = x++;
		});
	
		decrement.addEventListener('click', function () {
		  // this function is executed whenever the user clicks the decrement button
		  span.textContent = x--;
		});
	</script>
		
	
	<jsp:include page="header.jsp"></jsp:include>
	<div class="inner">
	<div>
	<div>
	
	<br>
	<form:form modelAttribute="order" id="items" method="post" action="purchase/submitItems">
    	<table>
    		<tr>
    			<th style="text-align:center;">Item</th>
    			<th style="text-align:center;">Price</th>
    			<th style="text-align:center;">Quantity</th>
    		</tr>
			<c:forEach items="${order.items}" var="item" varStatus="loop">
				<tr>
					<td class="center-col"><form:input id="name" path="items[${loop.index}].name" readonly="true" /></td>
					<td class="center-col">$<form:input id="price" path="items[${loop.index}].price" readonly="true" /></td>
					<td class="center-col">
						<!--  <button id="decrement">-</button>-->
						<span><form:input id="quantity" path="items[${loop.index}].quantity" type=number min=100 max=110/></span>
						<!-- <button id="increment">+</button> -->
					</td>
				</tr>
			</c:forEach>
			<tr>
				<td><%= request.getAttribute("message") %>></td>
			</tr>
	  		<tr>
				<td colspan="2"><input type="submit" value="Purchase"></td>
	  		</tr>
    	</table>
	</form:form>
	</div></div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>