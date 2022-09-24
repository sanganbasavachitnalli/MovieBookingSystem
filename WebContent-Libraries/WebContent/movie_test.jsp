<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>MOVIE DETAILS</title>
	<meta charset="utf-8" name="viewport" content="width=device-width,initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="style2.css">
	<style>
	button {
    display: inline-block;
    height: 160px;
    padding: 20;
    margin: 0 120 0 0;
  
    border: none;
  
    width: 140px;
   
}

#close-image img {
   
    height: 160px;  
    width: 140px;
     opacity:1;

}
::-webkit-scrollbar {
    display: none;
}

	</style>
</head>
	<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<%
		String data;
			try{
				data=session.getAttribute("user").toString();
				if(data=="" || data==" ")
				{
					response.sendRedirect("index.jsp");
				}
				
		%>
		<a href="index.jsp" class="header-btn" style="margin-left:10px;" id="use"><u>Logout</u></a>
		<a href="userbooking.jsp"  style="margin-left:10px;"  class="header-btn" id="use2"><u><%= data %></u></a>
		<a href="rewiewmongo.jsp" class="header-btn" id="use3"><u>Review</u></a>
		<%
			}
			catch(Exception e){				
					response.sendRedirect("index.jsp");
			}
		%>
		<%  
		String s=request.getParameter("mname");
		session.setAttribute("movie", s);
		String name;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from movie_data where Mid='"+s+"'");
			if(rs.next()){
		
	%>
			
<body style="background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url('<% out.print(s);%>.jpg'); width:90%; height:90%;">
	<div id="hide" style="display:block ">
	<form action="nooticket.jsp">
	
		
		<div class="container header">
		<img src="logo.jpg" class="logo">
		
		
		
	</div>
	<div class="container movie-details">
	<div class="row">
	<div class="col-md-6 left-box">
		<div class="col-md-6 text center" style="float: right; margin:0px 0px 20px 20px"><img src="<%  out.print(s); %>.jpg" class="movie-img" height="300px" width="350px" style="float: right;" ></div>
			<h1><%= rs.getString(1) %></h1>
			<br>
			
			<p><%= rs.getString(7) %></p>
			<p><%= rs.getString(8) %></p>
			<p> Director :<%= rs.getString(6) %>
			<p>Cast:</p>
			<div class="casting">
			  <p><%= rs.getString(4) %> ,<%= rs.getString(5) %></p>
			  </div>
			
			  	<a href="noofticket.jsp" >Book now</a>
			    <a href="#" class="download-btn" id="btn" onclick="myfun()">Trailer</a>		
	</div>
		
	</div>
	</div>
	</form>
	<form action="movie_test.jsp" method="post">
	<div class="container series">
	<table>
		<h3 style="margin:0px 400px 0px 0px;">Popular Movies</h3>
		<%
		try{
			Statement stmt2=con.createStatement();
			ResultSet rs2=stmt2.executeQuery("select sh.mid,sh.tid,m.name,count(*)  from movie_data m,seats s,shows sh where s.tid=sh.tid and s.showid=sh.showid and sh.mid=m.mid group by m.name order by count(*) desc ");
			int cnt=0;
			%><tr><% 
			while(rs2.next() && cnt<6){
				%>
				<td><button id="close-image" name="mname" value="<%= rs2.getInt(1) %>"  style = "margin:25px ;background-image:url('<% out.print(s);%>.jpg');"><img src="<%= rs2.getInt(1) %>.jpg" title="<%= rs2.getString(3) %>"></button></td>
				<% 
				cnt++;
			}
			%></tr><% 
		}
		catch(Exception e){
			out.print("error");
		}
		%>
		
		</table>	
		</div>
	</form>
	<%
	
	try{
		Statement stmt3=con.createStatement();
		ResultSet rs3=stmt3.executeQuery("select * from urls where mid='"+s+"'");
		rs3.next();
	
	
	
	%>
	</div>
	<div id="popup" style="display:none">
			
     		 <iframe width="1200"  height="480"  src="<%= rs3.getString(2)%>?controls=0&rel=0" frameborder="15px solid" allow="accelerometer; gyroscope; picture-in-picture" style="border-radius: 50px;" allowfullscreen></iframe>
     		 
			<button  onclick="myfun2()" class="header-btn" style="height:35px;align-text:center; align:center;cursor:pointer;">Hide</button>
		
	</div>
	<%
	}
	catch(Exception e){
		
	}
	
	%>
	<script type="text/javascript">
		function myfun()
		{
			document.getElementById('hide').style.display='none';
			document.getElementById('popup').style.display='block';
			document.getElementById('use').style.display='none';
			document.getElementById('use2').style.display='none';
			document.getElementById('use3').style.display='none';
		}
		function myfun2()
		{
			document.getElementById('hide').style.display='block';
			document.getElementById('popup').style.display='none';
			document.getElementById('use').style.display='block';
			document.getElementById('use2').style.display='block';
			document.getElementById('use3').style.display='block';
		}
	
	</script>
	<%
			}
		}
		catch(Exception e){
			
		}
			%>
</body>
</html>