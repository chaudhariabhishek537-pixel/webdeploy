<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShopNow - Shopping Cart</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
	<!-- Header -->
	<%@ include file="header.jsp"%>

	<!-- Page Content -->
	<div class="container page-content">
		<!-- Breadcrumb -->
		<div class="breadcrumb">
			<a href="/">Home</a> > <span>Shopping Cart</span>
		</div>

		<!-- Cart Section -->
		<div class="section-title">
			<h2>Shopping Cart</h2>
		</div>

		<div class="cart-container">
			<div class="cart-items">
				<c:forEach var="cart" items="${c}">
					<div class="cart-item">
						<img src="${cart.product.imageUrl}"
							alt="${cart.product.name} image">
						<!-- assuming you store imageUrl -->
						<div class="cart-item-details">
							<h3>${cart.product.name}</h3>
							<p>${cart.product.description}</p>
						</div>
						<div class="cart-item-price">$${cart.product.price}</div>
						<div class="cart-item-actions">
							<div class="quantity">
								<form action="update-quantity" method="post">
									<input type="hidden" name="cartItemId" value="${cart.id}" />
<!-- 									<button name="action" value="decrease">-</button> -->
									<span>${cart.quantity}</span>
<!-- 									<button name="action" value="increase">+</button> -->
								</form>
							</div>
							<div class="remove-item">
								<form action="/delete-from-cart" method="post">
									<input type="hidden" name="id" value="${cart.id}" />
									<button type="submit">
										<i class="fas fa-trash"></i>
									</button>
								</form>
							</div>
						</div>
					</div>
				</c:forEach>


				<div class="cart-summary">
					<h3>Order Summary</h3>
					<div class="summary-item">
						<span>Subtotal</span> <span>Rs.${subtotal}</span>
					</div>
					<div class="summary-item">
						<span>Shipping</span> <span>Rs.${shipping}</span>
					</div>
					<div class="summary-item">
						<span>Tax</span> <span>Rs.${tax}</span>
					</div>
					<div class="summary-item summary-total">
						<span>Total</span> <span>Rs.${total}</span>
					</div>
					<a href="checkout" class="btn"
						style="width: 100%; margin-top: 20px;">Proceed to Checkout</a> <a
						href="products.html" class="btn btn-outline"
						style="width: 100%; margin-top: 10px;">Continue Shopping</a>
				</div>

			</div>
		</div>
	</div>
	<!-- Footer -->
	<%@ include file="footer.jsp"%>

	<script src="js/script.js"></script>
</body>
</html>