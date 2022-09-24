<html>	
<head>
	<title>ADMIN LOGIN</title>
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
			padding:8px;
			width:160px;
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
		margin-top:50px;
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
		

</style>
<body>
	<a href="index.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>USERLOGIN</u></a>
	<form action="adminproc.jsp" method="post" >
	<h2 class="text" style="align:center; margin:140px 0px 0px 360px">ADMIN LOGIN</h2>
	<table class="table" cellspacing="10px" >
				<tr>
				<td><h2 class="text">Username</h2><td/>
				<td><input type="text" name="userid" class="box" placeholder="userid" required /></td>
				<tr/>
				<tr>
				<td><h2 class="text">Password</h2><td/>
				<td><input type="password" name="password" class="box" placeholder="Theatrename" required/></td>
				<tr/>	
				
		</table>
		<input type="submit" value="Login" class="btn">
	
    </form>
</body>

</html>