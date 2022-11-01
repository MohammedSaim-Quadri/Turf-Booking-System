<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
      <%response.setContentType("application/vnd.ms-excel");
      response.setHeader("Content-Disposition", "attachment;filename=myExcel.xls");%>
</head>
<body>
<table BORDER="1">
<tr>
<th>QUESTIONS</th>
<th>SCORE</th>
<tr>
<%
try {
              	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/tbs","root","Mohammed_25Muharram");
		                	Statement stmt=connection.createStatement(); 
							PreparedStatement stm=connection.prepareStatement("select * from feed");
							
							ResultSet rs=stm.executeQuery();
							
						
%>					
 <% while(rs.next()){ %>
<tr>
<td><%= rs.getString(1)%></td>
<td><%= rs.getString(2)%></td>
</tr>
<%} %>
</table>
<%
					
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
</body>
</html>