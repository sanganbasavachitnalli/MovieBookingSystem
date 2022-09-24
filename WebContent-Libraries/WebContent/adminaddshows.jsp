<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 80%;
  border:none;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
  padding-left: 12px;
   padding-top: 12px;
  padding-bottom: 12px;
  border-radius:20px;
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
  background-color: #B3D7C8;
}

tr:nth-child(even) {
  background-color: #dddddd;
}

.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  border-radius:5px;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 13px;
  
  
}
</style>
</head>
<body>

<h2 style="margin-left:390px;color:rgb(150,150,0)">THEATRES</h2>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<form action="">
<table cellspacing="30px" align="center">
<tr>
    <th>id</th>
  	<th>Name</th>
  	<th>Location</th>
	<th>Shows</th>  
	<th>ADD SHOWS</th>	
  	</tr>
<%
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
		Statement stmt=con.createStatement();
		Statement stmt2=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from theatre");
		while(rs.next()){
			%>
	<tr>
    <th><%= rs.getInt(1) %></th>
  	 <th><%= rs.getString(2)%></th>
  	 <th><%= rs.getString(3)%></th>
  	 <%
  	ResultSet rs2=stmt2.executeQuery("select count(*) from shows where tid='"+(rs.getInt(1))+"'");
  	 
  	 if(rs2.next()){
  	 %> 
  	<th><%= rs2.getInt(1) %></th>
  	<%
  		if(rs2.getInt(1)<4){
  			
  			%>
  			<th><button class="button" name="theatreid"value="<%= rs.getInt(1) %>" style="cursor:pointer;" formaction="addshows.jsp">ADD SHOWS</button></th>
  			<% 
  		}
  		else{
  			%>
  			<th><button class="button" style="background-color:rgb(00,100,200)" disabled;>FULL</button></th>
  			<% 
  		}
  		
  	 }
  	%>
  	
  	</tr>
  <%
		}
	}
	catch(Exception e){
	out.print("hi");
	}
%>
  
  
</table>
</form>
</body>
</html>
