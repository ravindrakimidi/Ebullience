<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.connection.Connections"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Check</title>
</head>
<body>
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String repassword = request.getParameter("repassword");
	String email = request.getParameter("email");

	if(!username.isEmpty() && password.equals(repassword))
	{
		com.connection.Connections.insertData(username,email);
		response.sendRedirect("index.html");
	}else
	{
		response.sendRedirect("Register.html");
	}
%>
</body>
</html>