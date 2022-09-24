<html>	
<head>
	<title>Add Theatre</title>
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
	
</style>
<script type="text/javascript">
function validateForm() {
	  var a = document.forms["myForm"]["tname"].value.trim();
	  var b=  document.forms["myForm"]["tlocation"].value.trim();
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

<a href="admin.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>LOGOUT</u></a>
<a href="adminhome.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>HOME</u></a>
	<form action="addtheatre.jsp" method="post" name="myForm" onsubmit="return validateForm()">
	
	<table class="table" cellspacing="10px" >
				
				<tr>
				<td><h2 class="text">Tname</h2><td/>
				<td><input type="text" name="tname" class="box" placeholder="Theatrename" id="tid" required/></td>
				<tr/>	
				<tr>
				<td><h2 class="text">Tlocation</h2><td/>
				<td><input type="Text" name="tlocation" class="box"  placeholder="Location" id="tl" required/></td>
				<tr/>
	</table>
		<input type="submit" value="Register" class="btn">
	
    </form>
</body>
</html>