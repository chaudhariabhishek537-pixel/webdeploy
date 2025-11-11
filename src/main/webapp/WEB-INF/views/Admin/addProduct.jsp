<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ShopNow - Add Product</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
	<style>
	 .bodyContainer {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
            margin : 20px;
        }
	</style>
</head>
<body>
	<!-- Header Section -->
	<%@ include file="header.jsp"%>
  <div class="bodyContainer">
	<div class="auth-box">
		<form action="/add-product" method="POST" class="auth-form active">
			<div class="auth-box">
				<div class="auth-tabs">
					<div class="auth-tab active">Add Product</div>
				</div>
				<div class="auth-form-container">
					<!-- Product Name -->
					<div class="form-group">
						<label for="name">Product Name:</label> <input type="text"
							id="name" name="name" placeholder="Enter the product name"
							required>
					</div>

					<!-- Product Image URL -->
					<div class="form-group">
						<label for="imageUrl">Image URL:</label> <input type="text"
							id="imageUrl" name="imageUrl" placeholder="Enter image URL"
							required>
					</div>

					<!-- Product Price -->
					<div class="form-group">
						<label for="price">Price:</label> <input type="number" id="price"
							name="price" step="0.01" placeholder="Enter product price"
							required>
					</div>

					<!-- Product Original Price -->
					<div class="form-group">
						<label for="originalPrice">Original Price:</label> <input
							type="number" id="originalPrice" name="originalPrice" step="0.01"
							placeholder="Enter original price" required>
					</div>

					<!-- Product Rating -->
					<div class="form-group">
						<label for="rating">Rating:</label> <input type="number"
							id="rating" name="rating" min="0" max="5" step="0.1"
							placeholder="Rate the product" required>
					</div>

					<!-- Product Reviews Count -->
					<div class="form-group">
						<label for="reviewsCount">Number of Reviews:</label> <input
							type="number" id="reviewsCount" name="reviewsCount"
							placeholder="Enter number of reviews" required>
					</div>

					<!-- Product Description -->
					<div class="form-group">
						<label for="description">Description:</label>
						<textarea id="description" name="description" rows="4"
							placeholder="Enter product description" required></textarea>
					</div>

					<!-- Category Dropdown -->
					<div class="form-group">
						<label for="category">Category:</label> <select id="category"
							name="category" required>
							<option value="" disabled selected>Select a Category</option>
							<!-- Dynamically populated categories -->
							<c:forEach var="category" items="${clist}">
								<option value="${category.id}">${category.name}</option>
							</c:forEach>
						</select>
					</div>

					<!-- Submit Button -->
					<button type="submit" class="btn">Add Product</button>
				</div>
			</div>
		</form>

	</div>
</div>
	<!-- Footer Section -->
	<%@ include file="footer.jsp"%>

	<script src="js/script.js"></script>
</body>
</html>

