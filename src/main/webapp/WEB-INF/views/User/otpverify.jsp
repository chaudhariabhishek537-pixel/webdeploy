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
                <div class="auth-tab active" data-tab="Sign-up">Email Verification</div>
            </div>
            
            <div class="auth-form-container">
                <!-- Login Form -->
	                <form class="auth-form active" id="Sign-form"action="/verify-otp"method="Post">
	                    <div class="form-group">
	                       <label for="signup-name">OTP</label> 
	                       <input type="text" name="otp" id="signup-name" placeholder="Enter otp" required> 
	                    </div>
	                    <button type="submit" class="btn">Verify OTP</button>
	                    
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
                        <div class="alert alert-danger" style="color: red;">
                            ${error}
                        </div>
                    </c:if>
                </form>
            </div>
        </div>
    </div>

    <!-- Footer -->
   <%@ include file="footer.jsp" %>
   
    <script src="js/script.js"></script>
</body>
</html>