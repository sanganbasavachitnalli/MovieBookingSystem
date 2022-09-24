<!DOCTYPE html>
<html>
<head>
<title>THEATRE LIST</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 60%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
body
		{
		  	padding: 0px 100px 00px 150px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));
		}
		
tr{
  background-color:  #ffff;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
::-webkit-scrollbar {
    display: none;
}
</style>
</head>
<body>

<h2 style="margin-left:390px;color:rgb(150,150,0)">THEATRES</h2>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
<table cellspacing="30px" align="center">
<tr>
    <th>id</th>
  	<th>Name</th>
  	<th>Location</th>
  	
  	</tr>
<%
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from theatre");
		while(rs.next()){
			%>
	<tr>
    <th><%= rs.getInt(1) %></th>
  	 <th><%= rs.getString(2)%></th>
  	 <th><%= rs.getString(3)%></th>
  	
  	</tr>
  <%
		}
	}
	catch(Exception e){
	
	}
%>
  
  
</table>

</body>
</html>
