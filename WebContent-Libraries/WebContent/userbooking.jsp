<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER INFO</title>
<style>
	    body
{
  
  background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));

}

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 70%;
}

#customers td, #customers th {
 
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}



#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
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
  
  cursor: pointer;
}

.header
{
	height: 10%;
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

		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<%
		try{
			String user=session.getAttribute("user").toString();
			Class.forName("com.mysql.cj.jdbc.Driver");
		
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select t.tname,s.date,s.tid,s.showid,m.name,count(*) from   seats s,theatre t,shows sh,movie_data m where ( m.mid=sh.mid and  sh.showid=s.showid and s.tid=sh.tid and t.tid=s.tid and s.userid='"+user+"' )group by tid,showid order by tid;");
			int prev=1;
        %>
        <div >
        <a href="testing.jsp" class="header-btn">Home</a>
        </div>
        <form action="view.jsp" method="post">
            <table id="customers" align="center" cellspacing="30" style="background-color:#ADD8E6;border-radius:25px;text-align:center;">
            <tr>
            <td >SL No</td>
            <td >MOVIE NAME</td>
            <td >THEATRE</td>
            <td ></td>
            <td>NO Of Tickets</td>
           	<td>VIEW</td>
           	<td>CANCEL</td>
            </tr>
        <%
        int d=1;
            while(rs.next()){
			%>
					<tr >
					<td><%= d++ %></td>
					<td><%= rs.getString(5) %></td>
					
					<td><p><%= rs.getString(1) %></p>
						<p>at show <%= rs.getInt(4) %></p></td>
					<td></td>
					<td><%= rs.getInt(6) %></td>
					<td><button class="button" name="view" value="<%= rs.getInt(3) %><%= rs.getInt(4) %>" >VIEW</button></td>
					<td><button  formaction="cancelation.jsp" name="cancel" class="button" value="<%= rs.getInt(3) %><%= rs.getInt(4) %>" name="view" style=" background-color: #FF0000;">CANCEL</button></td>
					</tr>
			
			<% 				
				
			}
		%>
             </table>
             </form>
</body>
<% 
        }
		catch(Exception e){
			
		}
		
%>
</html>