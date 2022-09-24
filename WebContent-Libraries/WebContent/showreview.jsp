<%@ page language="java" 
    contentType="text/html; 
    charset=windows-1256"
     pageEncoding="windows-1256" 
     import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException"
	 import="com.sun.org.apache.bcel.internal.generic.NEW"
	 import="com.mongodb.DBObject"
	 import="com.mongodb.Mongo"
   %> 
      
      <%



	Mongo mg = new Mongo("Localhost",27017);
	DB db = mg.getDB("OnlineBookingsystem");
	DBCollection collection = db.getCollection("Mreviews");
	BasicDBObject doc = new BasicDBObject();
	DBCursor cursor = collection.find();
	int rec=1;
	
	%>
	

<!DOCTYPE html>
<html>
<head>
<title>Review</title>
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
</style>
</head>
<body>

<h2 style="margin-left:390px;color:rgb(150,150,0)">Review</h2>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
<table cellspacing="30px" align="center">
<tr>
    <th>id</th>
  	<th>Name</th>
  	<th>Rating</th>
  	<th>review</th>
  	
  	</tr>
<%
	
	
while(cursor.hasNext()) 
{
	   DBObject str= cursor.next();
			%>
			<tr>
					<td ><b><%=rec++ %></b></td>
                    <td ><b><%=str.get("Moviename")%></b></td>
                    <td ><b><%=str.get("Rating") %></b></td>
                    <td ><b><%=str.get("review") %></b></td>
               </tr>
  <%
		}
	
%>
  
</table>
 <% 
 		cursor.close();
		mg.close();
%>
</body>
</html>