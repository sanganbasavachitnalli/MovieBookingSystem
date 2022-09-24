<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<html>
<head>
	<title>welcome</title>
</head>
<body>
		<%@ page import ="javax.servlet.*"  %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
	<%
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
		out.print(userid+" "+password);
	%>
	
		
	

</body>
</html>