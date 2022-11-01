<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="index.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" ></script>
	
<title>Turf Booking System</title>
</head>
<body>
<div class="topnav" id="myTopnav">
      <nav>
        <a class="homebtn bactive" href="/bookingtrial/index.jsp">Home</a>
        <a href="javascript:void(0);" class="icon" onclick="myFunction()">
          <i class="fa fa-bars"></i>
        </a>
        <a href="#">About</a>
        <a href="#">Contact</a>
        <div class="topnav-right">
          <a href="/bookingtrial/userReg.jsp">Login/Register</a>
        </div>
      </nav>
    </div>
    <div class="home">
      <h1>Talk with your feet, play with your heart</h1><br>
    </div>

    <script>
      function myFunction() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
          x.className += " responsive";
        } else {
          x.className = "topnav";
        }
      }
    </script>
</body>
</html>