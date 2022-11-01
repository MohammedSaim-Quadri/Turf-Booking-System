<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
<link type="text/css" rel="stylesheet" href="uhome.css" />
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" ></script>
    
<title>User Page</title>
 
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
    />
   
    
</head>
<body>
<div class="topnav sticky-top" id="myTopnav">
      <nav>
        <h1 class="title">UserHome</h1>
        <div class="topnav-right">
          <a href="/bookingtrial/logout.jsp">Logout</a>
        </div>
        <h1>Welcome, <%=session.getAttribute("name")%></h1>
      </nav>
    </div>
    
    <div class="bg">
        <div class="second">
            <div class="card1" style="width: 24rem;height: 30rem;margin-right:70px;">
                <img src="book.webp" class="card-img-top" alt="..." width="264px" height="290px">
                <div class="card-body">
                    <h5 class="card-title">New booking</h5>
                    <p class="card-text">Make New booking.</p>
                    <a href="newbook.jsp" class="btn btn-warning" style="width: 23rem;margin-top:48px">Book Now</a>
                </div>
            </div>
            <div class="card1" style="width: 24rem; height: 30rem;">
                <img src="history.jpg" class="card-img-top" alt="Error" width="264px" height="290px">
                <div class="card-body">
                    <h5 class="card-title">Booking History</h5>
                    <p class="card-text">Check Booking made till date.</p>
                    <a href="bkhist.jsp" class="btn btn-warning" style="width: 23rem;margin-top:48px">Check History.</a>
                </div>
            </div>
            <div class="card1" style="width: 24rem;height: 30rem;margin-left:45px;">
                <img src="feed.jpg" class="card-img-top" alt="Error" width="264px" height="290px">
                <div class="card-body">
                    <h5 class="card-title">Feedback</h5>
                    <p class="card-text">Give Feedback about the web-site.</p>
                    <a href="usrfeed.jsp" class="btn btn-warning" style="width: 23rem;margin-top:48px">Give Feedback.</a>
                </div>
            </div>
            
                </div>
            </div>
</body>
</html>