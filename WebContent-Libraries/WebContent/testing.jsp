<!DOCTYPE html>
<html>

<head>
<title>Cinema World</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  position: relative;

}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}
    body
{
  padding: 0px 50px 10px 50px;
  background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url("background.jpg")
}

     .button-spaces
    {
      border: 10px;
      margin-right: 20px;
      margin-bottom: 20px;
      transition: 1s;
      cursor: pointer;
    }
    .button-spaces:hover
    {
      transform:translateY(-5px);
    }
.container {
  position: relative;
 
}

.image {
  display: block;
 
}

.overlay {
  position: absolute; 
  bottom: 0; 
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1; 
  width: 95%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;
  padding: 20px;
  text-align: center;
}

.overlaytwo {
  position: absolute; 
  bottom: 0; 
  background: rgb(0, 0, 0);
  background: rgba(0, 0, 0, 0.5); /* Black see-through */
  color: #f1f1f1; 
  width: 99%;
  transition: .5s ease;
  opacity:0;
  color: white;
  font-size: 20px;
  padding: 20px;
  text-align: center;
}


.container:hover .overlay {
  opacity: 1;
}

.container:hover .overlaytwo {
  opacity: 1;
}

/* Caption text */


/* Number text (1/3 etc) */


/* The dots/bullets/indicators */


.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
  .table{
     padding: 30px 10px 0px 115px;
    
  }

.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}
.header
{
	height: 10%;
}

.header-btn
{
	text-decoration: none !important;  
	border-radius: 10px; 
	padding: 5px 10px;
	float: right;
	font-size:13px;
	margin-top: 15px;
	color: #fff !important;
	background:#107afd;
}

</style>
</head>
<body>
	<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		
		<%int len,i=0;
		String[][] mdata=new String[50][2];
				try{
					Class.forName("com.mysql.cj.jdbc.Driver");
					java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
					Statement stmt=con.createStatement();
					ResultSet rs=stmt.executeQuery("select name,mid from movie_data");
				//	out.println("hello");
					
					
					
					while(rs.next())
					{
						//out.println(" "+rs.getInt(2)+" "+rs.getString(1));
						mdata[i][0]=String.valueOf(rs.getInt(2));
						mdata[i][1]=rs.getString(1);
						//out.println(" "+mdata[i][0]+" "+mdata[i][1]+"\n"+" i "+i);
						i++;
						
					}
				//out.print(i);
				 session.setAttribute("len", i);
				}
				
			catch(Exception e){
				out.print("hellaaaao");
			}
		
		%>
		<div class="container header">
		
		<a href="index.jsp" class="header-btn" style="margin-left:10px;cursor: pointer;"><u>Logout</u></a>
		<a href="myrequest.jsp" class="header-btn" style="margin-left:10px;cursor: pointer;"><u>Request</u></a>
		<%
		String data;
			try{
				data=session.getAttribute("user").toString();
			
		
			}
			catch(Exception e){		
					response.sendRedirect("index.jsp");
				
			}
			//<div><h1 align="center" style="color: #fff " >Movies</h1></div>
		%>
		
		<br>
		<br>
	</div>
  
<form action="movie_test.jsp" method="post">
<div class="slideshow-container">

<% for(i=0;i<4;i++) { %>

<div class="mySlides fade">
   <div class="container">
  <button name="mname"  style="cursor: pointer; background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url('background.jpg'); border:None;" value="<%= i+1 %>"><img src="<% out.print(mdata[i][0]); %>.jpg" style="width:100%;height:400px;position: center; border-radius: 40px;" class="image"><div class="numbertext"><% out.print(i+1); %> / 4</div><div class="overlaytwo"><% out.print(mdata[i][1]); %></div></button>
 </div>
  </div>
<% } %>


<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
</form>
<br>



<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>
	<% int j;
	String s=session.getAttribute("len").toString();
	//out.print(s);
	int k=Integer.parseInt(s);
	//out.print(len);%>
  <form action="movie_test.jsp" method="post">
  <table class="table">
  <% j=k/4;
  int d;%>
<% for( d=1;d<j;d++) {%>
    <tr>
      <% for(i=4*d;i<4*d+4;i++){ %>
  <td> <div class="container"> <button class="button-spaces" name="mname" value="<%= i+1 %>" ><img src="<%= mdata[i][0] %>.jpg" width="200px" height="200px" class="image"><div class="overlay"><%= mdata[i][1] %></div></button></div></td> 
  
  		<% } %>
</tr>
<% } %>
  <tr>
  
  <% for(i=j*4;i<k;i++){ %>
  <td> <div class="container"> <button class="button-spaces" name="mname" value="<%= i+1 %>"><img src="<%= mdata[i][0] %>.jpg" width="200px" height="200px" class="image"><div class="overlay"><%= mdata[i][1] %></div></button></div></td>
  <% } %> 
</tr>
   

  </table>
  </form>
</body>
</html> 
