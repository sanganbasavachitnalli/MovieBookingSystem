<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SIGNUP</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<%@ page import ="java.io.BufferedReader" %>
	<%@ page import ="java.io.InputStreamReader" %>
		<%
			String name=request.getParameter("name").trim();
			String username=request.getParameter("username");
			String password=request.getParameter("password");
			String repassword=request.getParameter("repassword");
			String email=request.getParameter("email");
			String dateofbirth=request.getParameter("date");
			String number=request.getParameter("phone");
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
			    
				java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
				Statement stmt2=con.createStatement();
				ResultSet rs2=stmt2.executeQuery("select * from user_cred where userid='"+username+"'");
				if(rs2.next()){
					session.setAttribute("signuperror", "userid already exists");
					response.sendRedirect("signuphtml.jsp");
				}
				PreparedStatement stmt=con.prepareStatement("insert into user_cred values (?,?,?,?,?,?)");
				stmt.setString(1,name);
				stmt.setString(2,username);
				stmt.setString(3,password);
				stmt.setString(4,email);
				stmt.setString(5,dateofbirth);
				stmt.setString(6,number);
				int i=stmt.executeUpdate();
				if(i>0){
				out.println("success");
				session.setAttribute("signupsuccess", "Registration Successful");
				ProcessBuilder processBuilder = new ProcessBuilder();
			 	 //out.println("Success1111!");
				String Subject="MOVIE_CENTRAL_REGISTRATION_SUCCESSFUL";
			 	//String sub="ONLINE_MOVIE_BOOKING_SYSTEM";
			 	String body="hello____"+name+"___U_HAVE_SUCCESSFULLY_REGISTERED";
			 	processBuilder.command("cmd.exe", "/c", "python3 C:\\Users\\sanganbasava\\Desktop\\Listings\\externals.py",email,Subject,body);

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
				response.sendRedirect("index.jsp");
				}
				else
				{
					session.setAttribute("signuperror", "error in signup please do it again");
					out.println("username already exists");
					
					
					
					
					
					response.sendRedirect("signuphtml.jsp");
					
				}
			}
			catch(Exception e)
			{
				session.setAttribute("exist","username already exist");
				out.print("sssssssssss");
				//response.sendRedirect("signuphtml.jsp");
				//response.sendRedirect("signuphtml.jsp");
			}
		%>

</body>
</html>