<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Add Product</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    
    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
    }
    
    .form-group {
      margin-bottom: 20px;
    }
    
    label {
      display: block;
      font-weight: bold;
    }
    
    input[type="text"], textarea {
      width: 100%;
      padding: 10px;
    }
    
    .btn {
      background-color: #333;
      color: #fff;
      padding: 10px 20px;
      border-radius: 5px;
      text-decoration: none;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Add Product</h1>
    <form action="addProduct.jsp" method="POST" enctype="multipart/form-data">
      <div class="form-group">
        <label for="image">Image:</label>
        <input type="file" id="image" name="image" required>
      </div>
      <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter product name" required>
      </div>
      <div class="form-group">
        <label for="model">Model:</label>
        <input type="text" id="model" name="model" placeholder="Enter product model" required>
      </div>
      <div class="form-group">
        <label for="price">Price:</label>
        <input type="text" id="price" name="price" placeholder="Enter product price" required>
      </div>
      <div class="form-group">
        <label for="description">Description:</label>
        <textarea id="description" name="description" rows="5" placeholder="Enter product description" required></textarea>
      </div>
      <div class="form-group">
        <button type="submit" class="btn">Add Product</button>
      </div>
    </form>
  </div>
</body>
</html>

<%
    if (request.getMethod().equals("POST")) {
        String image = request.getPart("image").getSubmittedFileName();
        String name = request.getParameter("name");
        String model = request.getParameter("model");
        String price = request.getParameter("price");
        String description = request.getParameter("description");
        
        // Store the product details in an array or stack
        String[][] products = new String[10][5];
        // Add the product details to the array or stack
        
        out.println("<script>alert('Product added successfully!')</script>");
    }
%>
