<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Admin Panel</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }
    
    .navbar {
      background-color: #333;
      overflow: hidden;
    }
    
    .navbar a {
      float: left;
      color: #f2f2f2;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      font-size: 17px;
    }
    
    .navbar a:hover {
      background-color: #ddd;
      color: black;
    }
    
    .navbar a.active {
      background-color: #4CAF50;
      color: white;
    }
    
    .container {
      max-width: 800px;
      margin: 20px auto;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
      padding: 20px;
    }
    
    h1 {
      margin-top: 0;
    }
    
    .search-form {
      margin-bottom: 20px;
    }
    
    .search-form input[type="text"] {
      padding: 5px;
      width: 200px;
    }
    
    .search-form button {
      padding: 5px 10px;
    }
  </style>
</head>
<body>
  <div class="navbar">
    <a href="Home.jsp">Home</a>
    <a href="addproduct.jsp">Add Product</a>
    <a href="User.jsp">User Count</a>
    <a href="Orderlist.jsp">Orderlist</a>
    <a href="Search.jsp">Search</a>
  </div>
  
  <div class="container">
    <h1>Welcome to Admin Panel</h1>
    
   
    
    <!-- Content for each page goes here -->
    <div id="content">
      <h2>Home Page</h2>
      <p>Welcome to the home page of the web app.</p>
    </div>
  </div>
</body>
</html>
