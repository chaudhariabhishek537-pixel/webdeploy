<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Category</title>
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/responsive.css" />
<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
/>
<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  background-color: #f4f4f4;
}

.container {
  width: 80%;
  margin: 0 auto;
}

.add-category-btn {
  padding: 10px 20px;
  background-color: blue;
  color: white;
  font-size: 16px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

.add-category-btn:hover {
  background-color: #45a049;
}

.category-list {
  margin-top: 20px;
}

.category-list ul {
  list-style-type: none;
  padding: 0;
}

.category-list li {
  background-color: #fff;
  margin: 10px 0;
  padding: 10px;
  border-radius: 5px;
  border: 1px solid #ddd;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.category-list li span {
  font-size: 18px;
}

.category-list .action-buttons button {
  background-color: #f44336;
  color: white;
  border: none;
  padding: 5px 10px;
  font-size: 14px;
  cursor: pointer;
  border-radius: 3px;
}

.category-list .action-buttons button:hover {
  background-color: #e53935;
}

.category-form {
  display: flex;
  justify-content: center;
  gap: 10px;
  margin-top: 50px;
}

.category-form input[type="text"] {
  padding: 10px;
  font-size: 16px;
  width: 300px;
  border-radius: 5px;
  border: 1px solid #ccc;
}
</style>
</head>
<body>
  <%@ include file="header.jsp" %>

  <div class="container">
    <!-- Add Category Form -->
    <form action="/add-category" method="post" class="category-form">
      <input type="text" name="name" placeholder="Enter category name" required/>
      <button type="submit" class="add-category-btn">Add Category</button>
    </form>

    <!-- Category List -->
    <div class="category-list">
      <h3>Existing Categories</h3>
      <ul>
        <c:forEach var="category" items="${clist}">
          <li>
            <span>${category.name}</span>
            <div class="action-buttons">
              <form action="/delete-category" method="post"style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this category?');">
                <!-- CSRF token for Spring Security, remove if not needed -->
                <input type="hidden" name="name" value="${category.name}" />
                <button type="submit">Delete</button>
              </form>
            </div>
          </li>
        </c:forEach>
      </ul>
    </div>
  </div>

  <%@ include file="footer.jsp" %>

  <script src="js/script.js"></script>
</body>
</html>
