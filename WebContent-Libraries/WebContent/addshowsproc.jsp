<!DOCTYPE html>
<html>
<head>
<% int ti;%>
	<title>Theatre</title>
</head>
<body>
		 <%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@  page import ="javax.sql.*" %>
		<%
		String id=request.getParameter("tid");
		 ti=Integer.parseInt(id);
		String showid=request.getParameter("showid");
		int showi=Integer.parseInt(showid);
		String mid=request.getParameter("mid");
		int mi=Integer.parseInt(mid);
		out.print(" "+ti+" "+showi+" "+mi);
		%>
		<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			Statement stmt2=con.createStatement();
			PreparedStatement stmt=con.prepareStatement("insert into shows values (?,?,?,?,?,?)");
			stmt.setString(3, "2019-11-01");
			stmt.setInt(2,ti);
			stmt.setInt(1,showi);
			stmt.setString(4, "9:30");
			stmt.setString(5, "126:00");
			stmt.setInt(6,mi);
			int k=stmt.executeUpdate();
			//responce.sendRedirect("addshows.jsp");
			response.sendRedirect("adminaddshows.jsp");
			out.print(k);
		}
		catch(Exception e){
			session.setAttribute("show","showId is already taken pls change it");
			
			
			response.sendRedirect("addshows.jsp");
		}
		
		%>
</body>
</html>