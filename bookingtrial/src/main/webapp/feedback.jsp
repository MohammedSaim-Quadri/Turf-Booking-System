<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String id[]= new String[5];
for(int i=0;i<4;i++){
id[i]=request.getParameter("qid"+i);
System.out.println(id[i]);
}
String option[]= new String[5];
for(int i=0;i<4;i++){
option[i]=request.getParameter("radio"+i);
System.out.println(option[i]);
}
String ques[]= new String[5];
for(int i=0;i<4;i++){
ques[i]=request.getParameter("question"+i);
System.out.println(ques[i]);
}
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/tbs","root","Mohammed_25Muharram");
Statement st=conn.createStatement();
for(int j=0;j<4;j++){
String optionValue=option[j];
String qid=id[j];
String question=ques[j];
st.executeUpdate("insert into feed(questions,options) values('"+question+"','"+optionValue+"')");
}

out.println("Feedback Submitted Successfully");
response.sendRedirect("userhome.jsp");
}
catch(Exception e){
out.println(e);
}
%>
</body>
</html>