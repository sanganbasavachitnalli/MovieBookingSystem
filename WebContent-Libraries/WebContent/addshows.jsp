<html>
<head>	
	<title>ADD SHOWS</title>
</head>

<style type="text/css">
  body
		{
		  	padding: 0px 100px 00px 150px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));
		}
		.box{
			border-radius:5px;
			height:30px;
			padding:10px;
			width:100px;	
			
			 
				
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
		
		margin-left:300px;
		align:center;
		background-color:#fffff;
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

.class{
	padding:20px;
	  border: 1px solid black;

 background:#ffffff;
}
			
</style>
<% int[] shs=new int[5]; 
int max;
for(int i=0;i<5;i++)
	shs[i]=100;
%>
<body>
		<a href="admin.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>LOGOUT</u></a>
	<a href="adminhome.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>HOME</u></a>
	<form action="addshowsproc.jsp" method="post" name="myForm" onsubmit="return validateForm()" >
	<%
		String tid=request.getParameter("theatreid");
		
	%>
	<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<% String[] moviename=new String[50]; %>
		  <%
    
    try{
		Class.forName("com.mysql.cj.jdbc.Driver");
	
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
		Statement stmt=con.createStatement();
		Statement stmt2=con.createStatement();
		Statement stmt3=con.createStatement();
		ResultSet rs3=stmt2.executeQuery("select count(*) from movie_data");
		rs3.next();
		max=rs3.getInt(1);
		//out.print(rs3.getInt(1)+" "+max);
		
		ResultSet rs=stmt.executeQuery("select * from shows where tid='"+tid+"'");
		ResultSet rs2=stmt2.executeQuery("select showid from shows where tid='"+tid+"'");
		int i=1;
		while(rs2.next()){
			shs[rs2.getInt(1)]=-10;		
		}
    %>
	<table class="table" cellspacing="15px">
				<tr>
				<td ><h2 class="text">Enter date</h2></td>
				<td><input type="date" name="date" value="2019-11-01" disabled> </td>
				</tr>
				<tr>
				<td><h2 class="text">Tid</h2></td>
				<td><input type="text" name="tid" class="box" value="<%= tid %>" placeholder="Theatreid" required ></td>
				</tr>
				<tr>
				<td><h2 class="text">showid</h2></td>
				<td >
					<select name="showid"  style="text-align:center;width:50px;height:30px;border-radius:0px" >
					   <%
					   	for(i=1;i<5;i++){
					   		if(shs[i]==100){
					   %>
						<option><%= i %></option>
						<%
					   		}
					   	}
						%>
					</select>
				</td>
				</tr>	
				<tr>
				<td><h2 class="text">Mid</h2></td>
				<td><input type="number" name="mid" class="box" id="mid"  placeholder="Mid" value="1" min="1" max="<% out.print(max); %>" required/></td>
				
				</tr>
				<td><h2 class="text" onclick="myfun()">Mname</h2></td>
				<td><h3 style="color:white;"  id="demo"></h3></td>
				
				</tr>
				
		</table>
		<input type="submit" value="Add" class="btn">
	
    </form>
    
  	 <%
    	if(rs.next()){
    %>
    <table class="class" cellspacing="30px" >
    <tr>
    <td>Theatre id</td>
    <td>Showid</td>
    <td>Movieid</td>
    
    </tr>
   		
    	<tr>
    	<td><%= rs.getInt(2) %></td>
    	<td><%= rs.getInt(1) %></td>
    	<td><% out.print(rs.getInt(6));  %></td>
    	</tr> 
    	 <%
    	while(rs.next()){
    %>
    	<tr>
    	<td><%= rs.getInt(2) %></td>
    	<td><%= rs.getInt(1) %></td>
    	<td><% out.print(rs.getInt(6));  %></td>
    	</tr> 
    	 <% } %>
    	 <% }
   			 else{
   			 
   			%><h2 style="color:white">NO SHOWS ARE ADDED </h2><%  
   			 }%>	
    </table>
   <%
   ResultSet rs4=stmt2.executeQuery("select name from movie_data");
   String str="";
   while(rs4.next())
   {
	   str=str+rs4.getString(1)+"~";
   }
   //out.print(str);
 
   %>
<script>

	function myfun()
	{
		
		var a=document.getElementById('mid').value;
		var b='<%= str%>';
		
		
		c=b.split("~");
		
		document.getElementById("demo").innerHTML = c[a-1];
	}


</script>  
    
    <%
    	}
		catch(Exception e){
    	out.print("hlo");
    	}
    %>
   
</body>
	
	<%
		try{
			String s=session.getAttribute("show").toString();
			%><p style="color:#ff0000"><% out.print(s);%><p><% 
			session.removeAttribute("show");
		}
	catch(Exception e){
		
	}
	%>
	


</html>