<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CANCEL TICKETS</title>
</head>
<body>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<% 
			String[] sports=new String[100];
		try{
			 sports = request.getParameterValues("seat1");
			 Class.forName("com.mysql.cj.jdbc.Driver");
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			
			
			String date="2019-11-1";
			String username=session.getAttribute("user").toString();
			String theatreid=session.getAttribute("theatreidcancel").toString();
			int mvid=Integer.parseInt(theatreid);
			String showid=session.getAttribute("showidcancel").toString();
			int shoid=Integer.parseInt(showid);
			
			Statement stmt=con.createStatement();
			
			
				
			if (sports != null) 
			   {
			      for (int i = 0; i < sports.length; i++) 
			      {
					int j=stmt.executeUpdate("delete from seats where tid='"+theatreid+"' and showid='"+shoid+"' and seatid='"+sports[i]+"'");
					
			      }
			   }
			else
			{
				out.print("not running");
			}
				
			response.sendRedirect("userbooking.jsp");
				
		}
		catch(Exception e){
			
		}
		%>
</body>
</html>