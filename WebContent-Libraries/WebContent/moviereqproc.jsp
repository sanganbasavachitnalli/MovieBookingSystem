<!DOCTYPE html>
<html>
<head>
	
	<title></title>
</head>
<body>
	<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
	<%
		String s=request.getParameter("mname");
		out.print(s);
		String name=session.getAttribute("user").toString();
		out.print(name);
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			PreparedStatement stmt=con.prepareStatement("insert into request values (?,?)");
			stmt.setString(1,name);
			stmt.setString(2,s);
			stmt.executeUpdate();
			response.sendRedirect("testing.jsp");
			
		}
		catch(Exception e){
			session.setAttribute("request","already requested");
			//out.print("error");
			response.sendRedirect("myrequest.jsp");
		}
		
	
	%>

</body>
</html>