<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		
	</style>
	<title>REQUESTED</title>
	
		<style type="text/css">
		.table{
		margin-top:10px;
		margin-left:250px;
		align:center;
		
		}
		::-webkit-scrollbar {
    display: none;
}
		
		body
		{
		  	padding: 0px 100px 00px 150px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));
		}
									.header-btn
{
	text-decoration: none !important;  
	border-radius: 8px; 
	padding: 5px 10px;
	float: right;
	font-size:13px;
	margin-top: 15px;
	color: #fff !important;
	background:#107afd;
	margin:20px;
}

td,th{

	padding-top:20px;
	padding-right:30px;
	padding-left:30px;
	
}	
	</style>
</head>
<body>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<a href="admin.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>Logout</u></a>
		
			<table class="table"  style="align:center;background-color:#ADD8E6;">
			<tr>
			<td style="text-align:center">MOVIE NAME</td>
			<td style="text-align:center">REQUEST</td>
			</tr>
		<%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select mname,count(*) from request group by mname order by count(*) desc");
			while(rs.next()){
				if(rs.getString(1)!=null && rs.getString(1)!=" "){
			%>
			<tr>
				<td><button style="cursor:pointer;height:40px;width:130px;background-color:none !important;border-radius:500px;"><%  out.print(rs.getString(1)); %></button></td>
				<td><button style="cursor:pointer;height:40px;width:130px;background-color:none !important;border-radius:10px;"><% out.print(rs.getString(2)); %></button></td>
			</tr>
				
			<% } }
			
		}
		catch(Exception e){
			
		}
		%>
</body>
</html>