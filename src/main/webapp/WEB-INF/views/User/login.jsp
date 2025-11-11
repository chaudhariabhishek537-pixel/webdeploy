<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
	<%@ include file="header.jsp"%>

	<!-- Auth Container -->
	<div class="auth-container">
		<div class="auth-box">
			<div class="auth-tabs">
				<div class="auth-tab active" data-tab="login">Login</div>
			</div>

			<div class="auth-form-container">
				<!-- Login Form -->
				<form class="auth-form active" id="login-form"
					action="/verify-login" method="Post">
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

					<ul>
						<p>
							Don't have an account? <a href="/sign">Sign Up</a>
						</p>
					</ul>
					<c:if test="${not empty error}">
						<div class="alert alert-danger text-center">${error}</div>
					</c:if>
					<div class="social-auth">
						<div class="divider">
							<span>Or login with</span>
						</div>
						<div class="social-buttons">
							<a href="#" class="social-btn google"> <i
								class="fab fa-google"></i>
							</a> <a href="#" class="social-btn facebook"> <i
								class="fab fa-facebook-f"></i>
							</a> <a href="#" class="social-btn twitter"> <i
								class="fab fa-twitter"></i>
							</a> <a href="#" class="social-btn pinterest"> <i
								class="fab fa-pinterest"></i>
							</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<%@ include file="footer.jsp"%>

	<script src="js/script.js"></script>
</body>
</html>