<!DOCTYPE html>
<html>
<head>
	<title>SEAT MATRIX</title>
</head>

<style type="text/css">
	    body
{
  padding: 20px 100px 00px 150px;
  background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url("background.jpg")

}
	
.seats {
    border: 1px solid red;
    background: yellow;
}
	td {
    width: 40px;

    font-weight: 600;
    font-size: 1em;
    padding-top: 7px;
    height: 24px;
    color: #fff;
	}
	li.smallBox {
    text-align: left;
    display: inline-block;
    margin-right: 1em;
    color: #fff;
	}
	.smallBox::before {
    content: "";
    width: 15px;
    height: 15px;
    display: inline-block;
    margin-right: 10px;
  }
.greenBox::before {
    content: "";
    background: Green;
}

.redBox::before {
    content: "";
    background: Red;
}
.sbut
{
	width: 80px;
	height: 40px;
	background-color: #ff0000;
	border-radius: 30px;
	align-content: center;
	padding: 10px;
	margin-left: 300px;
	margin-bottom: 100px;
}

.emptyBox::before {
    content: "";
    box-shadow: inset 0px 2px 3px 0px rgb(255, 152, 0), 0px 1px 0px 0px rgba(255, 255, 255, .8);
    -moz-box-shadow: inset 0px 2px 3px 0px rgb(255, 152, 0), 0px 1px 0px 0px rgba(255, 255, 255, .8);
    -webkit-box-shadow: inset 0px 2px 3px 0px rgb(255, 152, 0), 0px 1px 0px 0px rgba(255, 255, 255, .8);
    background-color: #fff;
}
table {
    text-align: center;
}

.screen {
    width: 67%;
    background: #ff9800;
    margin: 2em 0;
}

h2.wthree {
    padding: 0.8em;
    font-size: 1.2em;
    color: #000;
    border-radius: 40px;
    text-transform: uppercase;
    font-weight: 600;
    letter-spacing: 7px;
    word-spacing: 10px;
}

input[type=checkbox] {
    width: 13px;
    margin-right: 14px;
    cursor: pointer;
}

input[type=checkbox]:before {
    content: "";
    width: 25px;
    height: 18px;
    border-radius: 5px;
    /* Safari 3-4, iOS 1-3.2, Android 1.6- */
    -webkit-border-radius: 5px;
    /* Firefox 1-3.6 */
    -moz-border-radius: 5px;
    display: inline-block;
    vertical-align: middle;
    text-align: center;
    border: 3px solid #ff9800;
    box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);
    -moz-box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);
    -webkit-box-shadow: inset 0px 2px 3px 0px rgba(0, 0, 0, .3), 0px 1px 0px 0px rgba(255, 255, 255, .8);
    background-color: #ffffff;
}

input[name=seat]:checked:before {
    background-color: Green;
    font-size: 15px;
}

input[name=seat1]:checked:before {
    background-color: Red;
    font-size: 15px;
}
	
.header
{
	height: 10%;
}

.header-btn
{
	text-decoration: none !important;  
	border-radius: 10px; 
	padding: 8px 15px;
	float: right;
	font-size:13px;
	margin-top: 15px;
	color: #fff !important;
	background:#107afd;
}	
::-webkit-scrollbar {
    display: none;
}

</style>

 

<body>
	<div id="hode">
	 <ul class="seat_w3ls">
                <li class="smallBox greenBox" style="color: #fff">Selected Seat</li>

                <li class="smallBox redBox" style="color: #fff">Reserved Seat</li>

                <li class="smallBox emptyBox" style="color: #fff">Empty Seat</li>
            </ul>
            <% int i;%>
          <div class="container header">
		
		<a href="index.jsp" class="header-btn" style="margin-left:10px;font-size:15px;"><u>Logout</u></a>
		<%
		String data;
			try{
				data=session.getAttribute("user").toString();
				if(data=="" || data==" ")
				{
					response.sendRedirect("index.jsp");
				}
				
		%>
		<a href="userbooking.jsp" class="header-btn" style="font-size:15px"><u><%= data %></u></a>
		<%
			}
			catch(Exception e){				
					response.sendRedirect("index.jsp");
			}
		%>
		
	</div>
	<%
		String s=request.getParameter("timing");
	int k=Integer.parseInt(s);
	int theatreid=k/10;
	int showid=k%10;
	//out.print(theatreid+" he "+showid);
	%>
		<%@ page import ="javax.servlet.*" %>
		<%@ page import ="java.sql.*" %>
		<%@ page import ="javax.sql.*" %>
	<%
	String[] allotedseat=new String[300];
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		session.setAttribute("theatreid",theatreid);
		session.setAttribute("showid",showid);
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sb?useSSl=false&allowPublicKeyRetrieval=true","root","root");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from seats where tid='"+theatreid+"' and showid='"+showid+"' order by seatid");
		
		i=0;
		while(rs.next())
		{
			allotedseat[i]=rs.getString(4);
		//	out.print(allotedseat[i]);
			i++;
		}
		allotedseat[i]="\0";
	}
	catch(Exception e){
		
	}
	int d=0;
	
	%>
	
		<form action="payment.jsp" method="post" onsubmit="return funclicked()">
			<table>
				<tr>
                        <td></td>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                        <td>5</td>
                        <td></td>
                        <td>6</td>
                        <td>7</td>
                        <td>8</td>
                        <td>9</td>
                        <td>10</td>
                        <td>11</td>
                        <td>12</td>
				</tr>
				<% String str=""; %>
					<tr>
                        <td>A</td>
                 
                        <% for(i=1;i<=5;i++){ %>
                        <% str=("A"+Integer.toString(i));
              //          out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="A<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="A<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                         
                         
                        <% for(i=6;i<=9;i++){ %>
                        <% str=("A"+Integer.toString(i));
                   //     out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="A<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="A<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                        
                        
                        <% for(i=10;i<=12;i++){ %>
                        <% str=("A9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="A9<%= i%10 %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="A9<%= i%10 %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                        
					</tr>
					
                   <tr>
                        <td>B</td>
                 
                       <% for(i=1;i<=5;i++){ %>
                        <% str=("B"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="B<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="B<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                          <% for(i=6;i<=9;i++){ %>
                        <% str=("B"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="B<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="B<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("B9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="B9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="B9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                        
                        
					</tr>
                    <tr>
                        <td>C</td>
                 
                        <% for(i=1;i<=5;i++){ %>
                        <% str=("C"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="C<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="C<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                        
                        
                            <% for(i=6;i<=9;i++){ %>
                        <% str=("C"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="C<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="C<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("C9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="C9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="C9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                        
                        
					</tr>

                    <tr>
                        <td>D</td>
                 
                        <% for(i=1;i<=5;i++){ %>
                        <% str=("D"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="D<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="D<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                        
                        
                            <% for(i=6;i<=9;i++){ %>
                        <% str=("D"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="D<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="D<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("D9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="D9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="D9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
					</tr>

                    <tr>
                        <td>E</td>
                 
                        <% for(i=1;i<=5;i++){ %>
                        <% str=("E"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="E<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="E<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                        
                        
                            <% for(i=6;i<=9;i++){ %>
                        <% str=("E"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="E<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="E<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("E9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="E9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="E9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
					</tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td>F</td>
                 
                        
                        <% for(i=1;i<=5;i++){ %>
                        <% str=("F"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="F<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="F<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                        
                        
                            <% for(i=6;i<=9;i++){ %>
                        <% str=("F"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="F<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="F<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("F9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="F9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="F9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                        
                        
					</tr>

                   <tr>
                        <td>G</td>
                 
                        <% for(i=1;i<=5;i++){ %>
                        <% str=("G"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="G<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="G<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                        
                        
                            <% for(i=6;i<=9;i++){ %>
                        <% str=("G"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="G<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="G<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("G9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="G9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="G9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
					</tr>

                    <tr>
                        <td>H</td>
                 
                        <% for(i=1;i<=5;i++){ %>
                        <% str=("H"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="H<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="H<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                        
                        
                            <% for(i=6;i<=9;i++){ %>
                        <% str=("H"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="H<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="H<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("H9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="H9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="H9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
					</tr>

                    <tr>
                        <td>I</td>
                 <% for(i=1;i<=5;i++){ %>
                        <% str=("I"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="I<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="I<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                        
                        
                            <% for(i=6;i<=9;i++){ %>
                        <% str=("I"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="I<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="I<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("I9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="I9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="I9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
					</tr>

                    <tr>
                        <td>J</td>
                 
                        <% for(i=1;i<=5;i++){ %>
                        <% str=("J"+Integer.toString(i));
                       // out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="J<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="J<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        <td class="seatGap"></td>
                        
                        
                            <% for(i=6;i<=9;i++){ %>
                        <% str=("J"+Integer.toString(i));
                       //out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="J<%= i %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="J<%= i %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
                         <% for(i=10;i<=12;i++){ %>
                        <% str=("J9"+Integer.toString(i%10));
                     //   out.print("  "+allotedseat[d]+"  "+str +" asdf");
                        %>
                        <% if(allotedseat[d].equals(str)){ %>
                          <td>  <input type="checkbox" class="seats" value="J9<%= i%10  %>" name="seat1"  checked disabled>
                        </td>
                        
                        <% 
                        d++;
                        } 
                        else{
                       %>
                        	 <td>  <input type="checkbox" class="seats" value="J9<%= i%10  %>" name="seat" >
                             </td>
                      <% 
                 	       }
                        
                        
                        }%>
                        
                        
					</tr>
  			</table>
			<div class="screen">
                    <h2 class="wthree" style="text-align: center;">Screen this way</h2>
             </div>
              <input type="submit" class="sbut" value="BOOK" id="Sbut" name="amount" style="cursor:pointer;">
   <script type="text/javascript">
    showChecked();
	function showChecked(){
 	
    document.getElementById('Sbut').value='PAY '+200*document.querySelectorAll('input[name=seat]:checked').length;
}
	document.querySelectorAll('input[name=seat]').forEach(i=>{
 		i.onclick = function(){
 		 showChecked();
 	}
});
	function funclicked(){
		if(document.querySelectorAll('input[name=seat]:checked').length==0  )
			{
			alert("please select the seat")
			return false;
			}
		if(document.querySelectorAll('input[name=seat]:checked').length>=10  )
		{
		alert("exeded the max limit")
		return false;
		}
	}
</script>

            
		</form>
	
</body>
</html>