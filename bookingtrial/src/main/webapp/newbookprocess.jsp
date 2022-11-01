<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.text.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/tbs","root","Mohammed_25Muharram");
	Statement stmt=connection.createStatement(); 
	String date=request.getParameter("date");
	String start=request.getParameter("timest");
	String end=request.getParameter("timend");
	String username = (String)session.getAttribute("name"); 
	start  = start +":00";
	end  = end +":00";
	ResultSet rs = stmt.executeQuery("SELECT * FROM bookings");  
     if (rs.next() ) {

    	 String d = rs.getString("dates");
    	 String ts = rs.getString("timest");
    			 String te = rs.getString("timend");
    			 String n = rs.getString("names");
    			 
    	 if(date.equals(d) && start.equals(ts) && end.equals(te) && username.equals(n)){
    		 
    		 out.println("Slot has Already been booked. Please select another time/date!");
    		 
    	 }else{
    		 String sql ="insert into bookings(dates,timest,timend,names) values(?,?,?,?)";
             PreparedStatement stm=connection.prepareStatement(sql);
    	     stm.setString(1, date);
    		 stm.setString(2,start);
    		 stm.setString(3,end);
    		 stm.setString(4,username);
    		 stm.executeUpdate();
    		 out.println("Slot Booked Successfully!");
    	 }

     } 

} catch(Exception e){

 // Handle any other exception occuring 
}
%>
</body>
</html>