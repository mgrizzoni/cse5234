<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>

<% String name = request.getParameter("name"); %>

<p>Hello, <%=name%>!</p>

</body>
</html>