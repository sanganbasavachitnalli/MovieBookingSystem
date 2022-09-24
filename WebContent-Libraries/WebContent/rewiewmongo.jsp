<html>	
<head>
	<title>Add Review</title>
</head>
<style type="text/css">
   body
		{
		  	padding: 0px 100px 00px 150px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));
		}
		.box{
			border-radius:5px;
			height:25px;
		}
		.text{
			color: #7CFC00;
		}
		.btn{
		    margin-left:450px;
		    margin-top:0px;
		     width: 80px;
		     text-align:center;
   			 height: 35px;
    		 background: #7CFC00;
    		 border-radius:05px;
    		 cursor:pointer;
		}
		.table{
		margin-top:140px;
		margin-left:300px;
		align:center;
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
	
.table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 60%;
  margin-left:200px;
}

.td, .th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
body
		{
		  	padding: 0px 100px 00px 150px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));
		}
		
.tr{
  background-color:  #ffff;
  
}

.tr:nth-child(even) {
  background-color: #dddddd;
}
::-webkit-scrollbar {
    display: none;
}

</style>
<script type="text/javascript">
function validateForm() {
	  var a = document.forms["myForm"]["name"].value.trim();
	  var b=  document.forms["myForm"]["review"].value.trim();
	  if(a.length==0){
		  alert("enter name");
		  return false;
	  }
	  if(b.length==0){
		  alert("enter name");
		  return false;
	  }
}

</script>
<body>
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
	DB db = mg.getDB("moviecentral");
	DBCollection collection = db.getCollection("review");
	BasicDBObject doc = new BasicDBObject();
	DBCursor cursor = collection.find();
	int rec=1;
	
	%>
	

<a href="index.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>LOGOUT</u></a>
<a href="testing.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>HOME</u></a>
	<form action="reviewproc.jsp" method="post" name="myForm" onsubmit="return validateForm()">
	
	<table class="table" cellspacing="10px" >
				
				<tr>
				<td><h2 class="text">Movie Name</h2><td/>
				<td><input type="text" name="name" class="box" placeholder="name" id="tid" required/></td>
				<tr/>	
				<tr>
				<td><h2 class="text">Rating</h2><td/>
				<td><input type="number" name="rating" class="box" min="1" max="10" placeholder="rating" id="tl" required/></td>
				<tr/>
				<td><h2 class="text">Review</h2><td/>
				<td><input type="Text" name="review" class="box"  placeholder="review" id="tl1" required/></td>
				<tr/>
	</table>
		<input type="submit" value="Submit" class="btn">
	
    </form>
    
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
<table cellspacing="30px" align="center" class="table">
<tr class="tr">
    <th class="th">Userid</th>
  	<th class="th">Name</th>
  	<th class="th">Rating</th>
  	<th class="th">review</th>
  	
  	</tr>
<%
	
	
while(cursor.hasNext()) 
{
	   DBObject str= cursor.next();
			%>
			<tr class="tr">
					<td  class="th"><b><%= str.get("userid")%></b></td>
                    <td  class="th"><b><%=str.get("Moviename")%></b></td>
                    <td  class="th"><b><%=str.get("Rating") %></b></td>
                    <td  class="th"><b><%=str.get("review") %></b></td>
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