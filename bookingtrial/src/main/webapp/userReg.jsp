<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <link  type="text/css" rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login Page</title>
</head>
<body>

<div class="container">
<a href="index.jsp">
<button class="btn"><i class="fa fa-home"></i></button>
</a>
        <div class="forms">
            <div class="form login">
                <span class="title">Login</span>

                <form action="usrlog.jsp">
                    <div class="input-field">
                        <input type="text" name="usermail" placeholder="Enter your email" required>
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" class="password" name="password" placeholder="Enter your password" required>
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>

                    <div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="logCheck">
                            <label for="logCheck" class="text">Remember me</label>
                        </div>
                        
                        <a href="#" class="text">Forgot password?</a>
                    </div>

                    <div class="input-field button">
                        <input type="submit" value="Login">
                    </div>

                </form>

                <div class="login-signup">
                    <span class="text">Not a member?
                        <a href="#" class="text signup-link">Signup Now</a>
                    </span>
                </div>
            </div>
            

            <!-- Registration Form -->
            <div class="form signup">
                <span class="title">Registration</span>

                <form action="userSignup.jsp">
                    <div class="input-field">
                        <input type="text" name="username" placeholder="Enter your name" required>
                        <i class="uil uil-user"></i>
                    </div>
                    <div class="input-field">
                        <input type="text" name="usermail" placeholder="Enter your email" required>
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="tel" name="usernum" placeholder="Enter your phone number" required>
                        <i class="fa fa-phone"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" id="password" name="password" class="password" placeholder="Create a password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
                        <i class="uil uil-lock icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" id="cnfpwd" name="cnfpwd" class="password" placeholder="Confirm a password" onkeyup="validate_password()"required>
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>

                    <div id="message">
  						<h3>Password must contain the following:</h3>
  						<p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  						<p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  						<p id="number" class="invalid">A <b>number</b></p>
  						<p id="length" class="invalid">Minimum <b>8 characters</b></p>
					</div>
					
					<span id="wrong_pass_alert"></span>
                    <div class="input-field button">
                        <input type="submit" style="opacity:1;" id="create" value="Signup" onclick="wrong_pass_alert()">
                    </div>
                </form>

                <div class="login-signup">
                    <span class="text">Already a member?
                        <a href="#" class="text login-link">Login Now</a>
                    </span>
                </div>
            </div>
        </div>
        
    </div>
    <script src="script.js"></script>
</body>
</html>