<!DOCTYPE html>
<html>
<head>
<title>MOVIE LIST</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 90%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding:10px;
  padding-top: 15px;
}
::-webkit-scrollbar {
    display: none;
}
body
		{
		  	padding: 0px 100px 00px 150px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));
		}
		
tr{
  background-color: #fff;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2 style="margin-left:390px;color:rgb(150,150,0)">MOVIE LIST</h2>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
<table cellspacing="30px" align="center">
<tr>
    <th>id</th>
  	<th>Name</th>
  	<th>Release Date</th>
  	<th>Hero</th>
  	<th>Actress</th>
  	</tr>
<%
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from movie_data");
		while(rs.next()){
			%>
	<tr>
    <th><%= rs.getInt(2) %></th>
  	 <th><%= rs.getString(1)%></th>
  	 <th><%= rs.getString(3)%></th>
  	 <th><%= rs.getString(4)%></th>
  	 <th><%= rs.getString(5)%></th>
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
