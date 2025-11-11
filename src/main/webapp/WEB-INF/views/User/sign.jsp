<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopNow - Login or Sign Up</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <!-- Header Section -->
    <%@ include file="header.jsp" %>

    <!-- Auth Container -->
    <div class="auth-container">
        <div class="auth-box">
            <div class="auth-tabs">
                <div class="auth-tab active" data-tab="Sign-up">Sign Up</div>
            </div>
            
            <div class="auth-form-container">
                <!-- Login Form -->
	                <form class="auth-form active" id="Sign-form"action="/add-user"method="Post">
	                    <div class="form-group">
	                       <label for="signup-name">Full Name</label> 
	                       <input type="text" name="username" id="signup-name" placeholder="Enter your full name" required> 
	                    </div> 
	                    <div class="form-group"> 
	                       <label for="signup-email">Email Address</label> 
	                       <input type="email" name="email" id="signup-email" placeholder="Enter your email" required> 
	                    </div> 
	                    <div class="form-group"> 
	                       <label for="signup-password">Password</label> 
	                       <input type="password" id="signup-password" placeholder="Create a password" required> 
	                    </div> 
	                    <div class="form-group"> 
	                       <label for="signup-confirm">Confirm Password</label> 
	                       <input type="password" name="password" id="signup-confirm" placeholder="Confirm your password" required> 
	                    </div>
	                    <button type="submit" class="btn">Create Account</button>
	                    
	                     <!-- Display Error/Success Messages -->
                    <c:if test="${not empty exist}">
                        <div class="alert alert-danger">
                            ${exist}
                        </div>
                    </c:if>
                    <c:if test="${not empty success}">
                        <div class="alert alert-success">
                            ${success}
                        </div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">
                            ${error}
                        </div>
                    </c:if>
	                    
                    <div class="social-auth">
                        <div class="divider">
                            <span>Or login with</span>
                        </div>
                        <div class="social-buttons">
                            <a href="#" class="social-btn google">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-btn facebook">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-btn twitter">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#" class="social-btn pinterest">
                                <i class="fab fa-pinterest"></i>
                            </a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
   <%@ include file="footer.jsp" %>
   

    <script src="js/script.js"></script>
</body>
</html>