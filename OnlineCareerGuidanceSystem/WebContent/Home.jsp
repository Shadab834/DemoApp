<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
</head>
<body>
	<center><h2>Home page</h2></center>
	Welcome<%=request.getAttribute("userName") %>
	<div style="text-align:right"><a href="LogoutServlet">Logout</a></div>
</body>
</html>