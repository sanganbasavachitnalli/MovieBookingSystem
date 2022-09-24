
<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<%@ page import ="java.io.BufferedReader" %>
	<%@ page import ="java.io.InputStreamReader" %>
		<% String[] details=new String[5];String[] to2=new String[2]; %>
<%
try{
	  
	Class.forName("com.mysql.cj.jdbc.Driver");

	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
	
	PreparedStatement stmt=con.prepareStatement("insert into seats values (?,?,?,?,?)");
	String date="2019-11-1";
	String username=session.getAttribute("user").toString();
	String theatreid=session.getAttribute("theatreid").toString();
	int mvid=Integer.parseInt(theatreid);
	String showid=session.getAttribute("showid").toString();
	int shoid=Integer.parseInt(showid); 
	//out.print(date+" "+mvid+" "+" "+ theatreid+" "+showid);
     // out.print("hi");
	String s=session.getAttribute("ses").toString();
	//out.print(s);
	String[] name=s.split(",");
	int len=0;
 	if(name!=null){
 		for(int i=0;i<name.length;i++)
 		{
 			len++;
 			//ut.print(name[i]);
 			
 		}
 	}
 	len=len*200;
 	if (name != null) 
	   {
	      for (int i = 0; i < name.length; i++) 
	      {
	    	 stmt.setString(1,date);
			stmt.setInt(2,mvid);
				stmt.setInt(3,shoid);
				stmt.setString(4,name[i]);
				stmt.setString(5, username);
				stmt.executeUpdate();
	      }
	      
	   }
 	//out.print("hlo2");
 	int[] k=new int[1];
 	Statement stmt3=con.createStatement();
 	ResultSet rs2=stmt.executeQuery("select m.name,m.language,s.showid,t.tname,t.tlocation from movie_Data m,shows s,theatre t where m.mid=s.mid and s.tid=t.tid and s.tid='"+theatreid+"'and s.showid='"+showid+"'");
 	while(rs2.next())
 	{
 		details[0]=rs2.getString(1).replaceAll(" ","_");
 		details[1]=rs2.getString(2).replaceAll(" ","_");
 		k[0]=rs2.getInt(3);
 		details[2]=String.valueOf(rs2.getInt(3)).replaceAll(" ","_");
 		details[3]=rs2.getString(4).replaceAll(" ","_");
 		details[4]=rs2.getString(5).replaceAll(" ","_");
 			
 	}
 //	out.print("hlo3");
 	Statement stmt2=con.createStatement();
 	ResultSet rs=stmt.executeQuery("select name,email from user_cred where userid='"+username+"'");
 	
 	while(rs.next())
 	{
 		to2[0]=rs.getString(1).replaceAll(" ","_");
 		to2[1]=rs.getString(2).replaceAll(" ","_");
 	}
 //	out.print("hlo4");
 	
 	String seat=session.getAttribute("ses").toString();
 	seat.replaceAll(" ","_");
 	seat.replaceAll(",","_");
 	//out.print(seat+" 123456789");
 	String Subject="MOVIE_CENTRAL_PAYMENT_SUCCESSFUL";
 //	out.print("hlo5");
 	String[] showtime=new String[]{"ERROR","MORNING_SHOW_AT_9:30_AM","AFTERNOON_SHOW_AT_12:00_PM","EVENING_SHOW_AT_4:30_PM","NIGHT_SHOW_AT_9:30_PM"};
 	String body="Hello__"+to2[0]+"~Registerd_Email="+to2[1]+"~MOVIE_NAME="+details[0]+"~Movie_Language="+details[1]+"~Show_Time="+showtime[k[0]]+"~theatre_name="+details[3]+"~Location="+details[4]+"~BOOKED_SEATS="+seat+"~Price="+len+"";
 	//out.print("hlo6");
 	//out.print(showtime[1]);
 	//out.print(showtime[Integer.parseInt(details[3])]);
 	//out.print(body);
 	ProcessBuilder processBuilder = new ProcessBuilder();


 	// out.println("Success1111!");

 	//String sub="ONLINE_MOVIE_BOOKING_SYSTEM";
 	processBuilder.command("cmd.exe", "/c", "python3 C:\\Users\\sanganbasava\\Desktop\\Listings\\externals.py",to2[1].trim(),Subject.trim(),body.trim());
//	processBuilder.command("cmd.exe", "/c", "python3 C:\\Users\\sanganbasava\\Desktop\\Listings\\externals.py","sbchitnalli84@gmail.com","hi","hlo");


 	try {

 	   Process process = processBuilder.start();

 	   StringBuilder output = new StringBuilder();

 	   BufferedReader reader = new BufferedReader(
 	         new InputStreamReader(process.getInputStream()));
 	  // out.println("Success333!");
 	   String line;
 	   while ((line = reader.readLine()) != null) {
 	      output.append(line + "\n");
 	   }
 	   //out.println("Success44444!");
 	   int exitVal = process.waitFor();
 	   out.println(exitVal);
 	   if (exitVal == 0) {
 	      out.println("Success!");
 	     // out.println(output);
 	      //System.exit(0);
 	   } else {
 	      //abnormal...
 	   }
 	   //response.sendRedirect("hlo");

 	} catch (Exception e) {
 		out.print("error in mail");
 	   
 	}
 	//response.sendRedirect("testing.jsp");
   /** String hel = request.getParameter("amount");
	 String str="";
	for (char ch : hel.toCharArray()) {
        
        if (Character.isDigit(ch)) {
           str=str+ch;
        }
    }
	out.print(str); */
}
   catch(Exception e){
	   out.print("error occured in booking");
   }
%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body style="background-color:#4FF4AF">
		<h1 style="margin-left:450px;margin-top:200px;">PAYMENT SUCCESSFUL</h1>
</body>
<script type="text/javascript">   
    function Redirect() 
    {  
        window.location="testing.jsp"; 
    } 
    //document.write("You will be redirected to a new page in 5 seconds"); 
    setTimeout('Redirect()', 2000);   
</script>
</html>


