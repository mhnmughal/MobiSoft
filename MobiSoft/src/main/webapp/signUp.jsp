<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Signup Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
    <h1>Create an Account</h1>
    <form action="sign.jsp" method="POST">
        <div class="form-group">
        <label for="ID">Username ID:</label>
        <input type="text" class="form-control" id="ID" name="ID" placeholder="Enter your ID" required>
      </div>
      <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" class="form-control" id="username" name="username" placeholder="Enter your username" required>
      </div>
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
      </div>
      <div class="form-group">
        <label for="phone">Phone Number:</label>
        <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required>
      </div>
      <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
      </div>
      <div class="form-group">
        <button type="submit" class="btn btn-primary">Create Account</button>
        
      </div>
    </form>
  </div>
</body>
</html>
