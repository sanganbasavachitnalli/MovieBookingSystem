<!DOCTYPE html>
<html>
<head>
	<title>ADD Theatre</title>
</head>
<body>
		 <%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<%
		
		String name=request.getParameter("tname");
		String loc=request.getParameter("tlocation");
		//out.print(" "+id+" "+name+" "+loc);
		%>
		<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			Statement stmt2=con.createStatement();
			Statement stmt3=con.createStatement();
			ResultSet rs=stmt3.executeQuery("select count(*) from theatre");
			rs.next();
			PreparedStatement stmt=con.prepareStatement("insert into theatre values (?,?,?)");
			stmt.setInt(1, rs.getInt(1)+1);
			stmt.setString(2,name);
			stmt.setString(3,loc);
			int k=stmt.executeUpdate();
			response.sendRedirect("adminhome.jsp");
			out.print(k);
		}
		catch(Exception e){
			out.print("Id is already taken pls change it");
			response.sendRedirect("theatre.jsp");
		}
		
		%>
</body>
</html>