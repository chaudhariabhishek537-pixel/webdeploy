<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
<style>
/* Modal styles */
.modal {
	position: fixed;
	z-index: 1000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.5);
	display: none;
}

.modal-content {
	background-color: #fff;
	margin: 10% auto;
	padding: 20px;
	border-radius: 8px;
	max-width: 500px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.25);
	position: relative;
}

.close {
	color: #aaa;
	position: absolute;
	right: 15px;
	top: 10px;
	font-size: 28px;
	font-weight: bold;
	cursor: pointer;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
}

#modalProductImage {
	max-width: 100%;
	border-radius: 6px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>

	<c:if test="${not empty success}">
		<div class="alert alert-info text-center">${success}</div>
	</c:if>
	<!-- Hero Secti	on -->
	<section class="hero">
		<div class="hero-content">
			<h1>Summer Sale: Up to 50% Off</h1>
			<p>Discover the latest trends and get amazing deals on your
				favorite products</p>
			<a href="/all-products" class="btn">Shop Now</a>
		</div>
	</section>

	<!-- Featured Products -->
	<section class="container">
		<div class="section-title">
			<h2>Featured Products</h2>
		</div>

		<!-- Product Grid -->
		<div class="products">
			<c:forEach var="p" items="${plist}">
				<c:set var="discount" value="0" />
				<c:if test="${p.originalPrice > p.price}">
					<c:set var="discount"
						value="${((p.originalPrice - p.price) / p.originalPrice) * 100}" />
				</c:if>

				<div class="product-card">
					<div class="product-img">
						<img src="${p.imageUrl}" alt="${p.name}">
					</div>

					<div class="product-info">
						<h3>${p.name}</h3>

						<div class="product-price">
							<span class="discounted-price">Rs.${p.price}</span> <span
								class="original-price">Rs.${p.originalPrice}</span>
							<c:if test="${p.originalPrice > p.price}">
								<span class="discount">-${discount.intValue()}%</span>
							</c:if>
						</div>

						<!-- Product Ratings -->
						<div class="product-rating">
							<span class="rating-stars"> <c:forEach begin="1"
									end="${p.rating}">
									<i class="fas fa-star"></i>
								</c:forEach> <c:forEach begin="${p.rating + 1}" end="5">
									<i class="far fa-star"></i>
								</c:forEach>
							</span> <span class="rating-count">(${p.reviewsCount} reviews)</span>
						</div>

						
							<!-- Actions: Add to Cart + View Details -->
						<div class="product-actions">
							<!-- 🛒 Add to Cart -->
							<form action="/add-to-cart" method="post"
								style="display: inline; margin-right: 10px;">
								<input type="hidden" name="id" value="${p.id}" /> 
								<label for="quantity-${p.id}" style="margin-right: 5px;">Qty:</label>
								<input type="number" id="quantity-${p.id}" name="quantity" value="1" min="1" max="99"style="width: 50px; padding: 4px; margin-right: 10px;" />
								<button type="submit" class="btn btn-primary">
									<i class="fas fa-shopping-cart"></i> Add to Cart
								</button>
							</form>

							<!-- 👁️ View Details -->
							<button type="button" class="btn view-details-btn"
								onclick="openModal(
									'${p.name}', 
									'${p.imageUrl}', 
									'${p.description}', 
									${p.price}, 
									${p.originalPrice}, 
									${p.rating}, 
									${p.reviewsCount}
								)">
								<i class="fas fa-info-circle"></i> View Details
							</button>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		<!-- Modal -->
		<div id="productModal" class="modal">
			<div class="modal-content">
				<span class="close">&times;</span>
				<h2 id="modalProductName"></h2>
				<img id="modalProductImage" src="" alt="" />
				<p id="modalProductDescription"></p>
				<p>
					<strong>Price:</strong> Rs.<span id="modalProductPrice"></span> <span
						id="modalProductOriginalPrice"
						style="text-decoration: line-through; color: grey; margin-left: 10px;"></span>
					<span id="modalProductDiscount"
						style="color: green; margin-left: 10px;"></span>
				</p>
				<p>
					<strong>Rating:</strong> <span id="modalProductRating"></span> (<span
						id="modalProductReviewsCount"></span> reviews)
				</p>
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
					src="/images/wp4974518-bmw-m4-iphone-wallpapers.jpg"
					alt="Electronics section with various gadgets and devices"> <a
					href="products.html" class="category-overlay">Electronics</a>
			</div>
			<div class="category-card">
				<img
					src="/images/momo-dandadan-ken-5120x2880-23854.png"
					alt="Fashion clothing and accessories collection"> <a
					href="products.html" class="category-overlay">Fashion</a>
			</div>
			<div class="category-card">
				<img
					src="/images/forza-motorsport-3840x2160-23006.jpg"
					alt="Home and kitchen appliances and decor"> <a
					href="products.html" class="category-overlay">Home & Kitchen</a>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<%@ include file="footer.jsp"%>

	<script src="js/script.js"></script>
	<script>
		const modal = document.getElementById("productModal");
		const spanClose = modal.querySelector(".close");

		function openModal(name, imageUrl, description, price, originalPrice, rating, reviewsCount) {
			document.getElementById("modalProductName").textContent = name;
			document.getElementById("modalProductImage").src = imageUrl;
			document.getElementById("modalProductImage").alt = name;
			document.getElementById("modalProductDescription").textContent = description;
			document.getElementById("modalProductPrice").textContent = price.toFixed(2);

			const originalPriceEl = document.getElementById("modalProductOriginalPrice");
			const discountEl = document.getElementById("modalProductDiscount");

			if (originalPrice > price) {
				originalPriceEl.textContent = "Rs." + originalPrice.toFixed(2);
				const discountPercent = Math.round(((originalPrice - price) / originalPrice) * 100);
				discountEl.textContent = `-${discountPercent}%`;
			} else {
				originalPriceEl.textContent = "";
				discountEl.textContent = "";
			}

			let starsHTML = "";
			for (let i = 1; i <= 5; i++) {
				starsHTML += i <= rating
					? '<i class="fas fa-star" style="color:gold;"></i>'
					: '<i class="far fa-star" style="color:gold;"></i>';
			}
			document.getElementById("modalProductRating").innerHTML = starsHTML;
			document.getElementById("modalProductReviewsCount").textContent = reviewsCount;

			modal.style.display = "block";
		}

		spanClose.onclick = () => modal.style.display = "none";
		window.onclick = (event) => {
			if (event.target === modal) modal.style.display = "none";
		};
	</script>

</body>
</html>