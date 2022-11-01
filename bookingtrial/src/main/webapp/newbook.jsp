<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>Booking</title>
	<!-- Bootstrap -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" ></script>

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="bstyle.css" />

</head>

<body>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
				
					<div class="booking-cta">
						<h1>Make Your Reservation</h1>
						<p><jsp:include page="newbookprocess.jsp" /> </p>
					</div>
					<div class="booking-form">
						<form action="">
							<div class="col-md-8">
								<div class="form-group">
									<span class="form-label">Date/Day</span>
									<input class="form-control" name="date" type="date" required>
								</div>
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<span class="form-label">Timing(start)</span>
									<input class="form-control" name="timest" type="time" required>
								</div>
							</div>
							<div class="col-md-8">
								<div class="form-group">
									<span class="form-label">Timing(End)</span>
									<input class="form-control" name="timend"type="time" required>
								</div>
							</div>
							
							<div class="col-md-8">
								<div class="form-btn">
									<a ><button class="btn submit-btn" type="submit">Book</button></a>
								</div>
							</div>
							
						</form>
						
					</div>
				</div>
			</div>
			
		</div>
		
	</div>
</body>

</html>