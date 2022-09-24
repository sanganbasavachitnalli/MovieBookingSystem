<!DOCTYPE html>
<html>
<head>
	<title>SHOWS</title>
</head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: auto;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding-left: 15px;
    padding-right: 25px;
      padding-top: 15px;
       padding-bottom: 15px;   
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
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
<body>
		<a href="admin.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>Logout</u></a>
		<a href="adminhome.jsp" class="header-btn">Home</a>
<%
	String s=request.getParameter("theatreid");
	//out.print(s);

try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
		Statement stmt=con.createStatement();
		Statement stmt2=con.createStatement();
		Statement stmt3=con.createStatement();
		ResultSet rs4=stmt.executeQuery("select tname from theatre where tid='"+s+"'");
		
		%>
		<form action="adminview.jsp" method="post">
		<table align="center">
		
			<tr>
			<td>ID</td>
			<td>SHOWID</td>
			<td>MOVIE NAME</td>
			<td>MAX SEATS</td>
			<td>BOOKED SEATS</td>
			<td>VIEW</td>
			</tr>
			
		<%
		int i=0;
		ResultSet rs,rs2;
		if(rs4.next()){
		%>
			
		<h2 style="margin-left:440px;color:white"><%= rs4.getString(1) %></h2>	
			
		<% }
		for(i=1;i<=4;i++){
			 rs=stmt.executeQuery("select count(*) from seats where tid='"+s+"'and showid='"+i+"'");
			 rs2=stmt2.executeQuery("select s.showid,m.name,s.tid from shows s,movie_data m where m.mid=s.mid and s.tid='"+s+"' and s.showid='"+i+"'");
			 //out.print("hlo");
			while(rs.next() && rs2.next()){
				
				%>
				<tr>
				<td><%= i %></td>
				<td><%= rs2.getInt(1) %></td>
				<td><%= rs2.getString(2) %></td>
				<td>120</td>
				<td><%= rs.getInt(1) %></td>
				<td><button type="submit" name="view" value="<%= s %><%= rs2.getInt(1) %>" style="width:80px;height:30px;border-radius:10px;border:1px solid;color:green;cursor:pointer">VIEW</button></td>
				</tr>
				<%
				
			}
		}
			%>
			</table>
			</form>
			<%
			
		}
		catch(Exception e){
			
		}
	%>

</body>
</html>