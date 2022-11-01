<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link href="dashboard.css" rel="stylesheet"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <link type="text/css" rel="stylesheet" href="adhome.css"/>
    
<title>Admin Page</title>

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
  background-color: #FDEEE390;
}

</style>
<body>
<div class="topnav sticky-top" id="myTopnav" >
      <nav>
        <div class="topnav-right">
          <a href="/bookingtrial/logout.jsp">Logout</a>
        </div>
        <h1 >Welcome, <%=session.getAttribute("name")%></h1>
      </nav>
    </div>
    <div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse" style="  z-index: 0;">
      <div class="position-sticky pt-3 sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="adminhome.jsp">
              <span data-feather="home" class="align-text-bottom"></span>
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="chkbook.jsp">
              <span data-feather="file" class="align-text-bottom"></span>
              Bookings
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="chkcust.jsp">
              <span data-feather="users" class="align-text-bottom"></span>
              Customers
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="chkfeed.jsp">
              <span data-feather="bar-chart-2" class="align-text-bottom"></span>
              Reports
            </a>
          </li>
        </ul>
      </div>
    </nav>
    <div>
    
    </div>
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Reports</h1>
        <div class="btn-toolbar mb-2 mb-md-0">
          <div class="btn-group me-2">
            <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
            <a href="exlrep.jsp"><button type="button" class="btn btn-sm btn-outline-secondary">Export</button></a>
          </div>
          
        </div>
      </div>
      <div>
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
      
      </div>
      </main>
    </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="dashboard.js"></script>
</body>
</html>