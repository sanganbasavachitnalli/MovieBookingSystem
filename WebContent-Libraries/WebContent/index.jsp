<html>
<head>
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
  <script>
function validateForm() {
  var x = document.forms["myForm"]["username"].value;
  var y=  document.forms["myForm"]["password"].value;
  
  
  if (x == "" ) {
    alert("Name must be filled out");
    return false;
  }
  if (y == ""  ) {
	    alert("Password must be filled out");
	    return false;
	  }
}
</script>
<style type="text/css">

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
	
</style>


<body>
	<a href="admin.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>ADMIN</u></a>
    <div class="loginbox">
    <img src="images/avatar.png" class="avatar" alt="no photo">
        <h1>Login Here</h1>
        <form action="login.jsp" method="post"  name="myForm" onsubmit="return validateForm()" >
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password">
            <input type="submit"  value="Login" >
          
        <%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
        <%
        	try{
        		String data=session.getAttribute("userlogin").toString();
        		%><p style="color:Red; font-size:14px;"><% out.print(data);  %></p><% 
            	session.removeAttribute("userlogin");
            	
        	}
        	catch(Exception e){
        		
        	}
        try{
    		String data=session.getAttribute("user").toString();
        	%><p style="color:Red; font-size:14px;"><% out.print("logged out from "+data);  %></p><% 
        	session.removeAttribute("user");
        	
    	}
    	catch(Exception e){
    		
    	}
        try{
    		String data=session.getAttribute("signupsuccess").toString();
        	%><p style="color:Red; font-size:14px;"><% out.print(data);  %></p><% 
        	session.removeAttribute("signupsuccess");
        	
    	}
    	catch(Exception e){
    		
    	}
        
        %> 
        <br>
          
            <a href="signuphtml.jsp">Don't have an account?</a>
        </form> 
    </div>

</body>
</head>
</html>