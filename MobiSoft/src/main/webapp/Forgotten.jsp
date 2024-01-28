<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Email Input</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }
    
    .center {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    
    form {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
    }
    
    input[type="email"] {
      width: 300px;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      font-size: 16px;
    }
    
    .btn-container {
      display: flex;
      justify-content: space-between;
      width: 300px;
      margin-top: 10px;
    }
    
    button[type="submit"],
    a.btn-link {
      padding: 10px 20px;
      border-radius: 3px;
      font-size: 16px;
      cursor: pointer;
    }
    
    button[type="submit"] {
      background-color: #4CAF50;
      color: #fff;
      border: none;
    }
    
    button[type="submit"]:hover {
      background-color: #45a049;
    }
    
    a.btn-link {
      background-color: #fff;
      color: #333;
      border: 1px solid #ccc;
      text-decoration: none;
    }
    
    a.btn-link:hover {
      background-color: #f4f4f4;
    }
  </style>
</head>
<body>
  <div class="center">
    <form action="otherpage.jsp">
      <input type="email" name="email" placeholder="Enter your email" required>
      <div class="btn-container">
          <%--<button type="submit">Submit Email</button>--%>
        <a href="end.html" class="btn-link">Submit Email</a>
      </div>
    </form>
  </div>
</body>
</html>
