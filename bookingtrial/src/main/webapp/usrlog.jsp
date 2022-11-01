<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try {
	String sql;
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/tbs","root","Mohammed_25Muharram");
	Statement stmt=connection.createStatement(); 
	String mail=request.getParameter("usermail");
	String pass=request.getParameter("password");
	sql = "select * from usersall where usermail=? and password=?";
	PreparedStatement stm=connection.prepareStatement(sql);
	stm.setString(1, mail);
	stm.setString(2, pass);	
	ResultSet rs=stm.executeQuery();
	if(rs.next())
	{
		
		if(mail.contains("admin")){
			session.setAttribute("name",mail.split("@")[0]);
			RequestDispatcher rd=request.getRequestDispatcher("adminhome.jsp");
			rd.include(request,response);
			
		}
		else{
			session.setAttribute("name",mail.split("@")[0]);
			RequestDispatcher rd=request.getRequestDispatcher("userhome.jsp");
			rd.include(request,response);
			
		}
	}
	else
	{
		//out.println("<b>Invalid username and password !</b><br>");
		RequestDispatcher rd=request.getRequestDispatcher("userReg.jsp");
		rd.include(request,response);
		%>
		<script>alert("Invalid Details!!")</script>
		<%
	}
}
catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>
</body>
</html>