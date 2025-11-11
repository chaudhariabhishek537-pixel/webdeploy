<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Profile - ShopNow</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        .profile-container {
            max-width: 900px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .profile-header {
            display: flex;
            align-items: center;
            gap: 30px;
            margin-bottom: 30px;
        }

        .profile-header img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid #ccc;
        }

        .profile-info h2 {
            margin: 0;
            font-size: 26px;
            color: #333;
        }

        .profile-info p {
            margin: 5px 0;
            color: #666;
        }

        .profile-section h3 {
            margin-top: 30px;
            font-size: 22px;
            color: #444;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }

        .profile-section table {
            width: 100%;
            margin-top: 15px;
            border-collapse: collapse;
        }

        .profile-section table td {
            padding: 10px 0;
            border-bottom: 1px solid #eee;
            color: #555;
        }

        .btn-edit {
            margin-top: 20px;
            display: inline-block;
            background-color: #007BFF;
            color: #fff;
            padding: 10px 16px;
            border-radius: 6px;
            text-decoration: none;
            transition: background-color 0.2s;
        }

        .btn-edit:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<!-- Header -->
<%@ include file="header.jsp" %>

<section class="profile-container">

    <div class="profile-header">
        <img src="/images/3d-design-bmw-m4-5120x2880-18928.jpg" alt="Profile Picture">
        <div class="profile-info">
            <h2><c:out value="${user.username}" /></h2>
            <p><i class="fas fa-envelope"></i> <c:out value="${user.email}" /></p>
        </div>
    </div>

    <div class="profile-section">
        <h3>Personal Details</h3>
        <table>
            <tr>
                <td><strong>Full Name:</strong></td>
                <td><c:out value="${user.username}" /></td>
            </tr>
            <tr>
                <td><strong>Email:</strong></td>
                <td><c:out value="${user.email}" /></td>
            </tr>
        </table>
        <a href="/edit-profile" class="btn-edit"><i class="fas fa-user-edit"></i> Edit Profile</a>
    </div>

    <div class="profile-section">
        <h3>Recent Orders</h3>
<%--         <c:if test="${empty user.recentOrders}"> --%>
<!--             <p>No recent orders found.</p> -->
<%--         </c:if> --%>
<%--         <c:forEach var="order" items="${user.recentOrders}"> --%>
<!--             <div style="margin-top: 10px;"> -->
<%--                 <p><strong>Order ID:</strong> ${order.id}</p> --%>
<%--                 <p><strong>Date:</strong> ${order.date}</p> --%>
<%--                 <p><strong>Total:</strong> Rs.${order.total}</p> --%>
<%--                 <a href="/order-details?id=${order.id}" class="btn btn-sm">View Details</a> --%>
<!--                 <hr> -->
<!--             </div> -->
<%--         </c:forEach> --%>
    </div>
    <div style="text-align: center; margin-top: 40px;">
    <form action="/logout" method="Get">
        <button type="submit" class="btn-logout">
            <i class="fas fa-sign-out-alt"></i> Logout
        </button>
    </form>
</div>
    

</section>

<!-- Footer -->
<%@ include file="footer.jsp" %>

</body>
</html>
