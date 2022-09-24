<!DOCTYPE html>
<html>
<head>
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
		.table{
		margin-top:30px;
		margin-left:200px;
		align:center;
		
		}
		
		body
		{
		  	padding: 0px 00px 00px 100px;
 			 background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8));
		}

	</style>
	<title>ADMIN HOME</title>
</head>
<body>
<a href="admin.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>Logout</u></a>
		<form action="addmovie.jsp">
			<table class="table" cellspacing="30px">
		
		<tr>
		<td><a><button style="cursor:pointer;height:80px;width:130px;background-color:none !important">ADD MOVIE</button></a></td>
		
		<td><a><button formaction="theatre.jsp" style="cursor:pointer;height:80px;width:130px;background-color:none !important">ADD THEATRE</button></a></td>
		
		<td><a><button formaction="adminaddshows.jsp" style="cursor:pointer;height:80px;width:130px;background-color:none !important">ADD SHOWS</button></a></td>
		</tr>
		<tr>
		
		<td><a><button formaction="request.jsp" style="cursor:pointer;height:80px;width:130px;background-color:none !important">REQUEST</button></a></td>
		<td><a><button formaction="movielist.jsp" style="cursor:pointer;height:80px;width:130px;background-color:none !important">MOVIES</button></a></td>
		<td><a><button formaction="theatrelist.jsp" style="cursor:pointer;height:80px;width:130px;background-color:none !important">THEATRES</button></a></td>
		</tr>
		<tr>
		<td><a><button formaction="admintheatreticker.jsp" style="cursor:pointer;height:80px;width:130px;background-color:none !important">BOOKINGS</button></a></td>
		</tr>
		</table>
		</form>
</body>
</html>