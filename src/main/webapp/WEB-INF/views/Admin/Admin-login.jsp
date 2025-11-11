<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShopNow - Login or Sign Up</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
	<!-- Header Section -->
	<%--     <%@ include file="header.jsp" %> --%>

	<!-- Auth Container -->
	<div class="auth-container">
		<div class="auth-box">
			<div class="auth-tabs">
				<div class="auth-tab active" data-tab="login">Admin Login</div>
			</div>

			<div class="auth-form-container">
				<!-- Login Form -->
				<form class="auth-form active" id="login-form"
					action="/admin-verify" method="Post">
					<div class="form-group">
						<label for="login-email">Email Address</label> <input type="email"
							name="email" id="login-email" placeholder="Enter your email"
							required>
					</div>
					<div class="form-group">
						<label for="login-password">Password</label> <input
							type="password" name="password" id="login-password"
							placeholder="Enter your password" required>
					</div>
					<div class="form-options">
						<div class="remember-me">
							<input type="checkbox" id="remember"> <label
								for="remember">Remember me</label>
						</div>
						<a href="#" class="forgot-password">Forgot Password?</a>
					</div>
					<button type="submit" class="btn">Login</button>
				</form>
			</div>
		</div>
	</div>
	<!-- Back Button -->
	<div class="back-button-container">
		<a href="/" class="btn back-btn"><i class="fas fa-arrow-left"></i>
			Back</a>
	</div>

	<!-- Footer -->
	<%--    <%@ include file="footer.jsp" %> --%>

	<script src="js/script.js"></script>
</body>
</html>



<!-- <!-- Sign Up Form -->
-->
<!--                 <form class="auth-form" id="signup-form" action="/login"method="Post"> -->
<!--                     <div class="form-group"> -->
<!--                         <label for="signup-name">Full Name</label> -->
<!--                         <input type="text" id="signup-name" placeholder="Enter your full name" required> -->
<!--                     </div> -->
<!--                     <div class="form-group"> -->
<!--                         <label for="signup-email">Email Address</label> -->
<!--                         <input type="email" id="signup-email" placeholder="Enter your email" required> -->
<!--                     </div> -->
<!--                     <div class="form-group"> -->
<!--                         <label for="signup-password">Password</label> -->
<!--                         <input type="password" id="signup-password" placeholder="Create a password" required> -->
<!--                     </div> -->
<!--                     <div class="form-group"> -->
<!--                         <label for="signup-confirm">Confirm Password</label> -->
<!--                         <input type="password" id="signup-confirm" placeholder="Confirm your password" required> -->
<!--                     </div> -->
<!--                     <button type="submit" class="btn">Create Account</button> -->
<!--                 </form> -->