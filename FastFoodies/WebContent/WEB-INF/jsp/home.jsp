<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Fast Foodies</title>
	<!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/WebContent/css/mystyle.css" type="text/css"/>-->
	<style><%@include file="css/mystyle.css"%></style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<p>test</p>
	<p>${pageContext.request.contextPath}</p>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>