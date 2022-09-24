<html>
<body>

		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<% String[] sports; %>
		
		
<%
try{
	  sports = request.getParameterValues("seat");
	Class.forName("com.mysql.cj.jdbc.Driver");

	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
	
	PreparedStatement stmt=con.prepareStatement("insert into seats values (?,?,?,?)");
	String date="2019-11-1";
	
	String theatreid=session.getAttribute("theatreid").toString();
	int mvid=Integer.parseInt(theatreid);
	String showid=session.getAttribute("showid").toString();
	int shoid=Integer.parseInt(showid); 
	out.print(date+" "+mvid+" "+" "+ theatreid+" "+showid);
	if (sports != null) 
	   {
	      for (int i = 0; i < sports.length; i++) 
	      {
	    	  stmt.setString(1,date);
				stmt.setInt(2,mvid);
				stmt.setInt(3,shoid);
				stmt.setString(4,sports[i]);
				stmt.executeUpdate();
	      }
	      
	   }
	}
	catch(Exception e){
	
	}
 
   /** String hel = request.getParameter("amount");
	 String str="";
	for (char ch : hel.toCharArray()) {
        
        if (Character.isDigit(ch)) {
           str=str+ch;
        }
    }
	out.print(str); */
   
   
%>

</body>
</html>