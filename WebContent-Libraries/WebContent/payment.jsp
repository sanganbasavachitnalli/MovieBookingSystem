<!DOCTYPE html>
<html>
<head>
<title>PAYMENT</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>


body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
  margin: 30px 10px 0px 30px;
	background-color:#E6E6FA;
}

* {
  box-sizing: border-box;
}

::-webkit-scrollbar {
    display: none;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}


.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin-left:350px;

  border: none;


  border-radius: 10px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

</style>
</head>
<body>


		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
		<% String[] sports; %>
		
		
<%
try{
	  sports = request.getParameterValues("seat");
	/**Class.forName("com.mysql.cj.jdbc.Driver");

	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
	
	PreparedStatement stmt=con.prepareStatement("insert into seats values (?,?,?,?,?)");
	String date="2019-11-1";
	String username=session.getAttribute("user").toString();
	String theatreid=session.getAttribute("theatreid").toString();
	int mvid=Integer.parseInt(theatreid);
	String showid=session.getAttribute("showid").toString();
	int shoid=Integer.parseInt(showid); 
	//out.print(date+" "+mvid+" "+" "+ theatreid+" "+showid); **/
	String ses="";
	if(sports != null) 
	   {
	      for (int i = 0; i < sports.length; i++) 
	      {
	    	  ses=ses+sports[i]+",";
	      }
	   }
	      session.setAttribute("ses",ses);
	/*/if (sports != null) 
	  // {
	    //  for (int i = 0; i < sports.length; i++) 
	      //{
	    	//  stmt.setString(1,date);
			//stmt.setInt(2,mvid);
				//stmt.setInt(3,shoid);
				//stmt.setString(4,sports[i]);
				//stmt.setString(5, username);
				//stmt.executeUpdate();
	     // }
	      
	  // }*/
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


<form action="paymentnext.jsp" method="post">
      

            <h3 style="margin: 0px 0px 0px 230px;color: #0000A0 !important;width: 120px;border-radius: 5px;height: 30px;">Payment</h3>
            
           <table style="margin: 10px 40px 10px 230px;background-color: #ADD8E6 !important; border-radius: 8px;width: 650px;height: 450px;padding:20px;">
            <tr>
              <td><label>Accepted Cards</label></td>
              <td>
                <div class="icon-container" >
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
              </td>
            </tr>
            <tr>
            <td style="margin: 40px 40px 0px 270px;"><label for="cname">Name on Card</label></td>
            <td><input type="text" id="cname" name="cardname" placeholder="John More Doe" style="width: 350px;border-radius: 10px;"required></td></tr>
            <tr><td><label for="ccnum">Credit card number</label></td>
            <td><input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" style="width: 350px;border-radius: 10px;"required></td></tr>
            <tr><td><label for="expmonth">Exp Month</label></td>
            <td><input type="text" id="expmonth" name="expmonth" placeholder="September" style="width: 350px;border-radius: 10px;" required></td></tr>
           
               <tr> 
                <td><label for="expyear">Exp Year</label></td>
                <td><input type="text" id="expyear" name="expyear" placeholder="2018" style="width: 100px;border-radius: 10px;" required ></td>
              </tr>
           
               <tr>
                <td><label for="cvv">CVV</label></td>
                <td><input type="text"  name="cvv" placeholder="352" style="width:100px;border-radius: 10px;"required></td>
              </tr>
                

             </table>
           <input type="submit" value="Pay"  class="btn" style="cursor:pointer;position: center;color: #fff;margin-left:360;width: 400px;required"required>
      </form>
   

</body>
</html>
