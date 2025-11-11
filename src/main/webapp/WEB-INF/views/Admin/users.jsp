<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ShopNow - User List</title>
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
            <a href="/">Home</a> > <span>User List</span>
        </div>

        <!-- User List Section -->
        <div class="section-title">
            <h2>User List</h2>
        </div>

        <!-- User Table -->
        <table class="user-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <!-- Example User Data - This should be populated dynamically from the backend -->
                <c:forEach var="u" items="${ulist}">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.username}</td>
                    <td>${u.email}</td>
                    <td>${u.password}</td>
                    <td class="action-btn">
                        <button class="btn">Edit</button>
                        <button class="btn">Delete</button>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Footer -->
    <%@ include file="footer.jsp" %>

    <script src="js/script.js"></script>
</body>
</html>
