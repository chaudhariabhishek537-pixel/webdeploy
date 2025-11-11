<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ShopNow - Products</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

	<!-- Header -->
	<%@ include file="header.jsp" %>

	<!-- Page Content -->
	<div class="container page-content">

		<!-- Breadcrumb -->
		<div class="breadcrumb">
			<a href="/">Home</a> > <span>Products</span>
		</div>

		<!-- Products Section -->
		<div class="section-title">
			<h2>Our Products</h2>

			<!-- ✅ Add Product Button -->
			<div style="text-align: right; margin-bottom: 20px;">
				<a href="/new-product" class="btn btn-primary">+ Add Product</a>
			</div>
		</div>

		<!-- Product Grid -->
		<div class="products">
			<c:forEach var="p" items="${plist}">
				<div class="product-card">
					<input type="hidden" name="productId" value="${p.id}" />

					<div class="product-img">
						<img src="${p.imageUrl}" alt="${p.name}">
					</div>

					<div class="product-info">
						<h3>${p.name}</h3>

						<div class="product-price">
							<span class="discounted-price">Rs.${p.price}</span>
							<span class="original-price">Rs.${p.originalPrice}</span>
							<c:if test="${p.originalPrice > p.price}">
								<c:set var="discount" value="${((p.originalPrice - p.price) / p.originalPrice) * 100}" />
								<span class="discount">-${discount.intValue()}%</span>
							</c:if>
						</div>

						<!-- Product Ratings -->
						<div class="product-rating">
							<span class="rating-stars">
								<c:forEach begin="1" end="${p.rating}">
									<i class="fas fa-star"></i>
								</c:forEach>
								<c:forEach begin="${p.rating + 1}" end="5">
									<i class="far fa-star"></i>
								</c:forEach>
							</span>
							<span class="rating-count">(${p.reviewsCount} reviews)</span>
						</div>

						<!-- ✅ Delete Button -->
						<div class="product-actions">
							<form action="/product/delete/${p.id}" method="post" onsubmit="return confirm('Are you sure you want to delete this product?');">
<%-- 								<input type="hidden" name="productId" value="${p.id}" /> --%>
								<button type="submit" class="btn btn-danger">Delete</button>
							</form>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- Footer -->
	<%@ include file="footer.jsp" %>

	<script src="js/script.js"></script>
</body>
</html>
