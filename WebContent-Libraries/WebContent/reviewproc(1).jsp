<%@ page language="java" 
    contentType="text/html; 
    charset=windows-1256"
     pageEncoding="windows-1256" 
     import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException"
	 import="com.sun.org.apache.bcel.internal.generic.NEW"
	 import="com.mongodb.DBObject"
	 import="com.mongodb.Mongo"
      %> 
      
      <%
      	String name=request.getParameter("name");
      String rating=request.getParameter("rating");
      String review=request.getParameter("review");
      	out.print(name+" "+rating+" "+review);
      
      %>
      
   <% 

Mongo mg = new Mongo("Localhost",27017);
DB db = mg.getDB("moviecentral");
DBCollection collection = db.getCollection("review");
BasicDBObject doc = new BasicDBObject();
DBCursor cursor = collection.find();
doc = new BasicDBObject();
			doc.append("userid",session.getAttribute("user").toString());
			doc.append("Moviename",name);
			doc.append("Rating",rating);
			doc.append("review",review);
			//doc.append("userid",session.getAttribute("userid").toString());
			collection.insert(doc);
			
			mg.close();
			response.sendRedirect("rewiewmongo.jsp");

		

%>