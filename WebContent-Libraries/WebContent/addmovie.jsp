<!DOCTYPE html>
<html>
<head>
	<title>ADD MOVIE</title>
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
		.box1{
			border-radius:15px;
			
		}
		::-webkit-scrollbar {
    display: none;
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
		margin-top:10px;
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
<a href="admin.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>LOGOUT</u></a>
<a href="adminhome.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>HOME</u></a>
	<form action="addmovieproc.jsp" method="post" name="myForm" onsubmit="return validateForm()">
	
	<table class="table" cellspacing="10px">
				
				<tr>
				<td><h2 class="text">Mname</h2></td>
				<td><input type="text" name="name" class="box" placeholder="name" required/></td>
				</tr>	
				<tr>
				<td><h2 class="text">release date</h2></td>
				<td><input type="date" name="date" class="box"  placeholder="2019-11-01" required/></td>
				</tr>
				<tr>
				<td><h2 class="text">ActorM</h2></td>
				<td><input type="text" name="M" class="box" placeholder="M" required/></td>
				</tr>
				<tr>
				<td><h2 class="text">ActorF</h2></td>
				<td><input type="text" name="F" class="box" placeholder="F" required/></td>
				</tr>
				<tr>
				<td><h2 class="text">director</h2></td>
				<td><input type="text" name="director" class="box" placeholder="director" required/></td>
				</tr>
				<tr>
				<td><h2 class="text">About</h2></td>
				<td><textarea rows="6" cols="70" name="about" class="box1" placeholder="about" required></textarea></td>				
				</tr>
				<tr>
				<td><h2 class="text">lang</h2></td>
				<td><input type="text" name="lang" class="box" placeholder="language" required/></td>
				</tr>
				<td><h2 class="text">movie url</h2></td>
				<td><input type="url" name="url" class="box" placeholder="URL" required/></td>
				</tr>
	</table>
		<input type="submit" value="Add" class="btn">
	
    </form>
</body>
</html>