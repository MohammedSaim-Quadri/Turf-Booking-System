<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
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
	String sql;
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/tbs","root","Mohammed_25Muharram");
	Statement stmt=connection.createStatement(); 
	String name=request.getParameter("username");
	String mail=request.getParameter("usermail");
	String pass=request.getParameter("password");
	String cpass=request.getParameter("cnfpwd");
	String num=request.getParameter("usernum");
	sql = "insert into usersall values(?,?,?,?)";
	PreparedStatement stm=connection.prepareStatement(sql);
	stm.setString(1, name);
	stm.setString(2, mail);	
	stm.setString(3, pass);	
	stm.setString(4, num);
	int i = stm.executeUpdate();
	if(i != 0)
	{
		if(pass.compareTo(cpass)==0){
		%>
		<script>alert("Sucessfully Registered");
		</script>
		<%
		RequestDispatcher rd=request.getRequestDispatcher("userReg.jsp");
		rd.include(request,response);
		}
		else
		{
			//out.println("<b>Invalid username and password !</b><br>");
			RequestDispatcher rd=request.getRequestDispatcher("userSignup.jsp");
			rd.include(request,response);
			%>
			<script>alert("Invalid Details!!")</script>
			<%
		}
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