<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
<link type="text/css" rel="stylesheet" href="uhome.css"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" ></script>
<title>Insert title here</title>
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
</head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #FDEEE3;
}

</style>
<body>
<div class="topnav sticky-top" id="myTopnav">
      <nav>
      <h1 class="title">Booking History</h1>
        
        <div class="topnav-right">
          <a href="/bookingtrial/logout.jsp">Logout</a>
        </div>
        <h1 >Welcome, <%=session.getAttribute("name")%></h1>
      </nav>
    </div>
    <div>
     <%
	try{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/tbs","root","Mohammed_25Muharram");
		Statement stmt=connection.createStatement();
		String uname=(String)session.getAttribute("name");
		String sql="select * from bookings where names=?";
		PreparedStatement stm=connection.prepareStatement(sql);
		stm.setString(1, uname);
		ResultSet rs=stm.executeQuery();
		%>
<table border="2">
<tr>
	<th>Dates of Booking</th>
	<th>Booking Start Time</th>
	<th>Booking End Time</th>
	<th>Customer Names</th>
	
	<%
	while(rs.next()){
		String dateb=rs.getString("dates");
		String tsb=rs.getString("timest");
		String teb=rs.getString("timend");
		String nb=rs.getString("names");
		
		//out.println(cid+"     "+cname+"         "+caddress);
	%>
</tr>
	<tr>
	<td><%=dateb%></td>
	<td><%=tsb%></td>
	<td><%=teb%></td>
	<td><%=nb%></td>
	</tr>
	<%
	}%>

</table>
<%
	}catch(SQLException e){
		e.printStackTrace();
	}
	
%>
    </div>
</body>
</html>