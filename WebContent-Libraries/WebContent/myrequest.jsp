<html>
<head>	
	<title>REQUEST</title>
</head>

<style type="text/css">
   body
		{
		  	padding: 0px 50px 00px 150px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url('99.jpg');
		}
		.box{
			border-radius:5px;
			height:25px;
			
		}
		.text{
			color: #7CFC00;
			
		}
		.btn{
		    margin-left:380px;
		    margin-top:10px;
		     width: 80px;
		     text-align:center;
   			 height: 35px;
    		 background: #7CFC00;
    		 border-radius:05px;
    		 cursor:pointer;
		}
		.table{
		margin-top:0px;
		margin-left:200px;
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
		input[type=text] {
  width: 80%;
  padding: 15px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.table_next {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 40%;
}

.td {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}
.tr{
  background-color: #008000;
}

.tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

<script>
	function validate(){
		 var a = document.forms["myForm"]["name"].value;
		//window.alert(a);
		if (a == "" || a==" " ) {
		    window.alert("Name must be filled out");
		    return false;
		  }
	}
</script>
<body>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
	<a href="index.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>LOGOUT</u></a>
	<a href="testing.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>HOME</u></a>
	<form action="moviereqproc.jsp" method="post" name="myForm" onsubmit="return validate()" >
		<h2 style="margin-left:270px;margin-top:20px;color:#fff;">REQUEST MOVIE</h2>
		<table class="table" cellspacing="20px">
			<tr>
				<td></td>
				<td></td>	
			</tr>
			<tr>
			<td><h2 class="text">Enter Movie</h2></td>
				<td><input type="text" name="mname" class="box" id="name"  placeholder="MOVIE NAME"/></td>
			</tr>	
				
		</table>
		<input type="submit" value="Add" class="btn" >
		<%
	try{
		String s=session.getAttribute("request").toString();
	%>	<p style="color:#FF0000;margin-left:400px;"><% out.print(s); %><p><%
		session.removeAttribute("request");
	}
	catch(Exception e){
		
	}
	
	
	%>
	</form>
	<h2 style="color:rgb(150,50,50);">TRENDING SEARCHES</h2>
	<table class="table_next"  cellspacing="20px" text-align="center">
	
	<%
	int i=1;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select mname,count(*) from request group by mname order by count(*) desc");
		while(rs.next() && i<6){
		%>
		<tr class="tr">
		<td class="td"><%= i++ %></td>
		<td class="td"><%= rs.getString(1) %></td>
		<td class="td"><%= rs.getString(2) %></td>
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
