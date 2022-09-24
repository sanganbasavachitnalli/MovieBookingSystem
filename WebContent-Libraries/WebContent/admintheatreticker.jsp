<!DOCTYPE html>
<html>
<head>
<title>THEATRES</title>
<style>
	body
		{
		  	padding: 0px 100px 00px 150px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));
		}
		
#table2{
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 70%;
  padding:20px;
  
}
::-webkit-scrollbar {
    display: none;
}
td, th {
  border-bottom: 1px solid #dddddd;
  text-align: left;
  border-radius:5px;
  padding:10px;
}

tr{
  background-color: #ffffff;
}

.header-btn
{
	text-decoration: none !important;  
	border-radius: 10px; 
	width:5%;
	padding: 5px 10px;
	float: right;
	height:20px;
	
	text-align:center;
	font-size:16px;
	margin-top: 15px;
	color: #fff !important;
	background:#107afd;
}

</style>
</head>
<body>
<a href="admin.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>Logout</u></a>
		<a href="adminhome.jsp" class="header-btn">Home</a>
<h2 style="margin-left:390px;color:rgb(150,150,0)">THEATRES</h2>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>

<form action="adminshowtickets.jsp" method="post">
<table cellspacing="30px" align="center" id="table2" >
<tr>
    <th>id</th>
  	<th>Name</th>
  	<th>Location</th>
  	<th>Shows</th>
  	</tr>
<%
	int i=1;
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
  	 <th> <button type="submit" value="<%= i++ %>" name="theatreid" style="color:green;height:25px;border-radius:10px;cursor:pointer">SHOWS</button></th>
  	</tr>
  <%
		}
	}
	catch(Exception e){
	
	}
%>
  
  
</table>
</form>
</body>
</html>
