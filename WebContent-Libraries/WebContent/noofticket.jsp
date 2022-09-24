<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html> 
<html> 
    <head> 
        <title>SELECT SHOW</title> 
        <style type="text/css">
         body
		{
		  	padding: 20px 100px 00px 150px;
 			background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url("background.jpg")
		}
		.button {
  background-image: url("wall.jpg");
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  
  border-radius:30px;
}

.prop
{

	text-decoration: none !important;  
	border-radius: 30px; 
	padding: 7px 20px;
	float: right;
	margin-top: 15px;
	color: #fff !important;
	background:#107afd;

}

.header
{
	height: 10%;
}

.header-btn
{
	text-decoration: none !important;  
	border-radius: 5px; 
	padding: 5px 13px;
	float: right;
	font-size:13px;
	margin-top: 15px;
	color: #fff !important;
	background:#107afd;
}
::-webkit-scrollbar {
    display: none;
}
        </style>
    </head> 

    <body> 
    
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<%
		try{
		//	out.print("hello1");
			Class.forName("com.mysql.cj.jdbc.Driver");
			//out.print("hello1");
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			Statement stmt=con.createStatement();
		//	out.print("hello1");
			Statement stmt2=con.createStatement();
		//	out.print("hello1");
			String m=session.getAttribute("movie").toString();
			ResultSet rs=stmt.executeQuery("select * from theatre ");
			//out.print("hello1"+m);
			ResultSet r2=stmt2.executeQuery("select tid,showid from shows where Mid='"+(m)+"' order by tid ");
			int[][] s=new int[20][5];
			
			String[] nm=new String[20];
			int i,j;
			for(i=0;i<20;i++)
			{
				for(j=0;j<5;j++)
				{
					s[i][j]=0;
				}
			}
		
			int len=0;
			while(rs.next()){
				nm[len]=rs.getString(2);
				len++;
				
			}
			
			
			i=1;
			int k,l;
			while(r2.next()){
				k=r2.getInt(1);
				l=r2.getInt(2);
				s[k-1][l]=1;
				s[k-1][0]=1;
			}
			
		%>
		<div class="container header">
		
		<a href="index.jsp" class="header-btn" style="margin-left:10px;font-size:16px;"><u>Logout</u></a>
		<%
		
		String data;
			try{
				data=session.getAttribute("user").toString();
			
		%>
		
		<a href="userbooking.jsp" class="header-btn" style="font-size:16px;"><u><%= data.substring(0, 1).toUpperCase() + data.substring(1) %></u></a>
		<%
			}
			catch(Exception e){		
					response.sendRedirect("index.jsp");
				
			}
			//<div><h1 align="center" style="color: #fff " >Movies</h1></div>
		%>
		
		<br>
	</div>
	<h2 style="color: #fff !important">Booking Date :  
        <input type="date" id="dob" value="2019-11-01" min="2019-11-1" max="2019-11-1" style="color: #0000FF !important;border-radius: 5px; height:27px;margin-left:10px;" disabled > </h2>
       <br>
       <br>
       <br>
        <form action="seating.jsp"  method="post">
        	
 
       	<table style="padding: 40px" class="button">
       	<tr>
       		<td style="padding-right: 50px;;" ><h3>THEATRE NAME</h3></td>
       		<td style="padding-right: 50px" ><h3>MORNING</h3></td>
       		<td style="padding-right: 50px" ><h3>AFTERNOON</h3></td>
       		<td style="padding-right: 50px" ><h3>EVENING</h3></td>
       		<td style="padding-right: 50px" ><h3>NIGHT</h3></td>
       	</tr>
       	<tr></tr>
       	
       		<% for(i=0;i<len;i++) 	{  %>
       		<%   if(s[i][0]!=0) { %>
       		<tr>
 
       			<td style="padding-right: 50px;" ><h2 style="color: #fff !important"><u><%= nm[i].substring(0, 1).toUpperCase() + nm[i].substring(1) %></u></h2></td>
       			<td style="padding-right: 50px"><% if(s[i][1]==1){ %>
       			<button style="border-radius: 10px;cursor:pointer;" class="prop" value="<%= i+1 %>1" name="timing">9:30 AM</button>
       			<% } %></td>
       			
       			<td style="padding-right: 50px"><% if(s[i][2]==1){ %>
       			<button style="border-radius: 10px;cursor:pointer;" class="prop" value="<%= i+1 %>2" name="timing">12:00 PM</button>
       			<% } %></td>
       			
       			<td style="padding-right: 50px"><% if(s[i][3]==1){ %>
       			<button style="border-radius: 10px;cursor:pointer;" class="prop" value="<%= i+1 %>3" name="timing">4:30 PM</button>
       			<% } %></td>
       			<td style="padding-right: 50px"><% if(s[i][4]==1){ %>
       			<button style="border-radius: 10px;cursor:pointer;" class="prop" value="<%= i+1 %>4"  name="timing">9:30 PM</button>
       			<% } %></td>
       		</tr>
       		<% 
       		} 
       		}
       		
   
		}
		catch(Exception e){
			
		}
       %>
       	</table> 
        </form>
        </body> 
</html> 