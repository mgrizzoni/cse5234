<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Fast Foodies</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div style="justify-content:center; padding:5px;">
		<br>
		<h4 style="text-align: center">Welcome to Fast Foodies!</h4>
		<br>
		<br>
		<div  id="image" style="text-content: center;">
		<img src="https://st.depositphotos.com/1005682/2476/i/450/depositphotos_24762569-stock-photo-fast-food-hamburger-hot-dog.jpg" alt="fast foods stock image"/>
		</div>
		<br>
		<br>
		<h6 style="text-align: center">Our mission is to deliver hot, fresh meals straight to your front door.</h6>
		<p style="text-align: center">Select <b>Purchase</b> in the navigation menu to start your order now.</p>
		<br>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>