<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<%@ include file="header.jsp"%>

	<!-- Insights Section -->
	<div class="insights-section">
		<h3>Product Insights</h3>

		<c:set var="totalProducts" value="0" />
		<c:set var="totalPrice" value="0" />

		<c:forEach var="p" items="${plist}">
			<c:set var="totalProducts" value="${totalProducts + 1}" />
			<c:set var="totalPrice" value="${totalPrice + p.price}" />
		</c:forEach>

		<c:set var="averagePrice"
			value="${totalProducts > 0 ? totalPrice / totalProducts : 0}" />

		<ul class="insights-list">
			<li><strong>Total Products:</strong> ${totalProducts}</li>
			<li><strong>Average Price:</strong> Rs. ${averagePrice}</li>
		</ul>
	</div>


	<!-- Footer -->
	<%@ include file="footer.jsp"%>

	<script src="js/script.js"></script>
</body>
</html>
