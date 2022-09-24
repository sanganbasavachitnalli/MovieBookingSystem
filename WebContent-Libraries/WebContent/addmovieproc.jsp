<!DOCTYPE html>
<html>
<head>
	<title>Theatre</title>
</head>
<body>
		 <%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*"  %>
		<%@  page import ="javax.sql.*" %>
		<%
		
		String name= request.getParameter("name");
		String date=request.getParameter("date");
		String M=request.getParameter("M");
		String F=request.getParameter("F");
		String D=request.getParameter("director");
		String about=request.getParameter("about");
		String lang=request.getParameter("lang");
		String url= request.getParameter("url");
		//out.print(ti+" "+name+" "+date+" "+M+" "+F+" "+D+" "+about);
		%>
		<%
		int l=-10;
		int k=-99;
		int p=0;
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			out.print("hi1");
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			Statement stmt2=con.createStatement();
			ResultSet rs=stmt2.executeQuery("select count(*) from movie_data");
			rs.next();
			p=rs.getInt(1);
			p=p+1;
			out.print("hi2");
		  PreparedStatement stmt=con.prepareStatement("insert into movie_data values (?,?,?,?,?,?,?,?)");
		  PreparedStatement stmt4=con.prepareStatement("insert into urls values (?,?)");
			
			stmt.setString(1,name);
			stmt.setInt(2, p);
			stmt.setString(3, date);
			stmt.setString(4, M);
			stmt.setString(5, F);
			stmt.setString(6, D);
			out.print("hi3");
			stmt.setString(7, about);
			stmt.setString(8,lang);
			stmt4.setInt(1, p);
			stmt4.setString(2, url);
			out.print("hi4         "+p);
			l=stmt4.executeUpdate();
			out.print("hi5");
			k=stmt.executeUpdate();
			out.print(k); 
			response.sendRedirect("adminhome.jsp");
		}
		catch(Exception e){
			out.print("Id is already taken pls change it"+l+" "+k+" "+url);
			%><a href="addmovie.jsp">Home</a><% 
		}
		
		%>
</body>
</html>