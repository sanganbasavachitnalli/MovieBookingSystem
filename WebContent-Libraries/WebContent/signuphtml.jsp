 
<html>
<head>
<meta charset="ISO-8859-1">
<title>signup</title>

<script>
function validateForm() {
  var a = document.forms["myForm"]["username"].value.trim();
  var b=  document.forms["myForm"]["password"].value.trim();
  var c=  document.forms["myForm"]["repassword"].value.trim();
  var d=  document.forms["myForm"]["phone"].value.trim();
  var e=  document.forms["myForm"]["date"].value.trim();
  var f= d.length;
  
  if (a == "" ) {
    alert("Name must be filled out");
    return false;
  }
  if (b == "" ) {
	    alert("password must be filled out");
	    return false;
	  }
  if(b!=c)
	  {
		  alert("password should be same");
	 	  return false;
	  }
  if (d == "" ) {
	    alert(" phone must be filled out");
	    return false;
	  }
  if (e == "" ) {
	    alert(" date must be filled out");
	    return false;
	  }
  if(f==10){
	  var phoneno = /^\d{10}$/;
		if((d.match(phoneno)))
      {
   		 
   		 return true;
      }
    else
      {
      alert("Entered Number in not in a correct format");
      return false;
 	 }
	  
  }
  else{
	  
	  alert("Phone no length should be 10");
	  return false;
  }
  

}
  </script>
  
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
    		 border-radius:10px;
    		 cursor:pointer;
		}
		.table{
		margin-top:10px;
		margin-left:300px;
		
		}
		input[type=text], input[type=password], input[type=email], input[type=date], input[type=tel] {
  width: 90%;
  padding: 15px 15px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
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
::-webkit-scrollbar {
    display: none;
}
  </style>
</head>
<body>
	<a href="index.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>Home</u></a>
	<form action="signup.jsp" method="post" name="myForm" onsubmit="return validateForm()">
	<span style="border: 1px solid black">
	<table class="table" cellspacing="10px">
				<tr>
				<td><h2 class="text">Name</h2><td/>
				<td><input type="text" name="name" class="box" placeholder="John"/></td>
				<tr/>
				<tr>
				<td><h2 class="text">Username</h2><td/>
				<td><input type="text" name="username" class="box" placeholder="John123"/></td>
				<tr/>	
				<tr>
				<td><h2 class="text">Password</h2><td/>
				<td><input type="password" name="password" class="box"  placeholder="**********"/></td>
				<tr/>
				<tr>
				<td><h2 class="text">RePassword</h2><td/>
				<td><input type="password" name="repassword" class="box"  placeholder="**********"/></td>
				<tr/>
				<tr>
				<td><h2 class="text">Email</h2><td/>
				<td><input type="email" name="email" class="box" placeholder="John@Example.com"/></td>
				<tr/>
				<tr>
				<td><h2 class="text">Date of birth</h2><td/>
				<td><input type="date" name="date" class="box" value="2000-01-01" max="2010-11-01"/></td>
				<tr/>
				<tr>
				<td><h2 class="text">Phone</h2><td/>
				<td><input type="tel" name="phone" class="box" placeholder="9876123451" /></td>
				<tr/>
	</table>
	</span>
  <input type="submit" value="Register" class="btn">
</form>
		 <%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<%
			try{
				String data=session.getAttribute("signuperror").toString();
				%><p class="box" style="margin-left:350;color:#FF0000"><%= data %></p><% 
				session.removeAttribute("signuperror");
			}
		catch(Exception e)
		{
			
		}
				
	%>
</body>
</html>