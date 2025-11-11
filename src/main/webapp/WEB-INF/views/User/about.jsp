<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopNow - About Us</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
    <!-- Header -->
     <%@ include file="header.jsp" %>

    <!-- Page Content -->
    <div class="container page-content">
        <!-- Breadcrumb -->
        <div class="breadcrumb">
            <a href="/">Home</a> > <span>About Us</span>
        </div>

        <!-- About Section -->
        <div class="section-title">
            <h2>About Us</h2>
        </div>

        <div class="about-content">
            <div class="about-text">
                <h3>Our Story</h3>
                <p>Founded in 2020, ShopNow has been dedicated to providing high-quality products at affordable prices. We believe that everyone deserves access to well-made goods that enhance their daily lives.</p>
                <p>Our team carefully selects each product in our catalog, ensuring they meet our strict standards for quality, durability, and value. We're committed to sustainable practices and ethical sourcing throughout our supply chain.</p>
                <p>With over 500,000 satisfied customers and counting, we're proud to be one of the fastest-growing e-commerce platforms in the region.</p>
            </div>
            <div class="about-image">
                <img src="/images/minecraft-10th-5120x2880-23769.jpg" alt="Our modern office space with collaborative work environment">
            </div>
        </div>

        <!-- Team Section -->
        <div class="section-title">
            <h2>Our Team</h2>
        </div>

        <div class="team">
            <div class="team-member">
                <img src="/images/saitama-one-punch-man-5k-5680x3104-11350.jpg" alt="John Doe, CEO and Founder of ShopNow">
                <div class="team-info">
                    <h3>Abhishek Chaudhari</h3>
                    <p>CEO & Founder</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="footer.jsp" %>

    <script src="js/script.js"></script>
</body>
</html>