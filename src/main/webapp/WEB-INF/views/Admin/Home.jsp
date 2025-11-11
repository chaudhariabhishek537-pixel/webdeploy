<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShopNow - Home</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>

	<c:if test="${not empty success}">
		<div id="msg" data-type="success" data-text="${success}"></div>
	</c:if>

	<!-- Featured Products -->
	<section class="container">
		<div class="section-title">
			<h2>Featured Products</h2>
		</div>
		<div class="products">
			<div class="product-card">
				<div class="product-img">
					<img
						src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"
						alt="Wireless Headphones with noise cancellation feature">
				</div>
				<div class="product-info">
					<h3>Wireless Headphones</h3>
					<div class="product-price">$129.99</div>
					<a href="#" class="btn">Add to Cart</a>
				</div>
			</div>
			<div class="product-card">
				<div class="product-img">
					<img
						src="https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"
						alt="Elegant smartwatch with fitness tracking capabilities">
				</div>
				<div class="product-info">
					<h3>Smart Watch</h3>
					<div class="product-price">$199.99</div>
					<a href="#" class="btn">Add to Cart</a>
				</div>
			</div>
			<div class="product-card">
				<div class="product-img">
					<img
						src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"
						alt="Portable Bluetooth speaker with premium sound quality">
				</div>
				<div class="product-info">
					<h3>Bluetooth Speaker</h3>
					<div class="product-price">$79.99</div>
					<a href="#" class="btn">Add to Cart</a>
				</div>
			</div>
			<div class="product-card">
				<div class="product-img">
					<img
						src="https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"
						alt="Comfortable running shoes for athletic activities">
				</div>
				<div class="product-info">
					<h3>Running Shoes</h3>
					<div class="product-price">$89.99</div>
					<a href="#" class="btn">Add to Cart</a>
				</div>
			</div>
		</div>
	</section>

	<!-- Categories Section -->
	<section class="container">
		<div class="section-title">
			<h2>Shop by Category</h2>
		</div>
		<div class="categories">
			<div class="category-card">
				<img
					src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"
					alt="Electronics section with various gadgets and devices"> <a
					href="products.html" class="category-overlay">Electronics</a>
			</div>
			<div class="category-card">
				<img
					src="https://images.unsplash.com/photo-1496747611176-843222e1e57c?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"
					alt="Fashion clothing and accessories collection"> <a
					href="products.html" class="category-overlay">Fashion</a>
			</div>
			<div class="category-card">
				<img
					src="https://images.unsplash.com/photo-1556228720-195a672e8a03?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80"
					alt="Home and kitchen appliances and decor"> <a
					href="products.html" class="category-overlay">Home & Kitchen</a>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<%@ include file="footer.jsp"%>

	<script src="js/script.js"></script>
</body>
</html>