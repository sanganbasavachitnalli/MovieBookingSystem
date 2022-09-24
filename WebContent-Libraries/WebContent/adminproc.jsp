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
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from admin where userid='"+userid+"'");
			if(rs.next()){
				
				if(rs.getString(2).equals(password))
				{
					session.setAttribute("admin",userid);
					response.sendRedirect("adminhome.jsp");
					//out.print(userid+"he;lo "+password);
				}
				else{
					session.setAttribute("adminlogin", "Incorrect Password");
					response.sendRedirect("admin.jsp");
				}
			}
			else
			{
				session.setAttribute("adminlogin", " admin doesn't exists!");
				response.sendRedirect("admin.jsp");
			}
		}
		catch(Exception e){
			
		}
	%>
	
		
	

</body>
</html>