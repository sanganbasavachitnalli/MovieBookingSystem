<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<html>
<head>
	<title>welcome</title>
</head>
<body>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<%
			String user=request.getParameter("username");
			String pass=request.getParameter("password");
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
			
				java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
				Statement stmt=con.createStatement();
				ResultSet rs=stmt.executeQuery("select * from user_cred where userid='"+user+"'");
				if(rs.next()){
					if(rs.getString(3).equals(pass))
					{
						session.setAttribute("user",user);
						response.sendRedirect("testing.jsp");
					}
					else{
						session.setAttribute("userlogin", "Incorrect Password");
						response.sendRedirect("index.jsp");
					}
				}
				else
				{
					session.setAttribute("userlogin", "That user doesn't exists!");
					response.sendRedirect("index.jsp");
				}
					
				
			}
			catch(Exception e){
				session.setAttribute("userlogin", "password is incorrect");
				response.sendRedirect("index.jsp");
				
			}
			
		%>
</body>
</html>