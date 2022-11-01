<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <%

            session.invalidate();
        response.sendRedirect("index.jsp");


        %>

        <h1><font color="Red">You are Successfully logged out...</font></h1>
</body>
</html>