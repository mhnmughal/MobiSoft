<%@ page language="java" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Order List</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    /* Your custom CSS styles for the order list page */
    body {
      background-color: #f5f5f5;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 20px;
    }

    .card {
      margin-top: 20px;
      border: none;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .card-body {
      padding: 20px;
    }

    .card-title {
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 10px;
    }

    ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    li {
      font-size: 18px;
      margin-bottom: 10px;
    }

    .btn-primary {
      background-color: #1976D2;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      text-transform: uppercase;
      cursor: pointer;
      transition: background-color 0.3s ease-in-out;
    }

    .btn-primary:hover {
      background-color: #1565C0;
    }

    /* Additional styling for the order list items */
    .order-item {
      border: 1px solid #ddd;
      padding: 10px;
      border-radius: 5px;
      background-color: #fff;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .order-item-title {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .order-item-details {
      color: #888;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Order History</h1>
    <div class="card">
      <div class="card-body">
        <% 
          // Retrieve the order list from the session
          ArrayList<String> orderList = (ArrayList<String>) session.getAttribute("orderList");
          
          if (orderList != null && !orderList.isEmpty()) {
        %>
        <ul>
          <% for (String item : orderList) { %>
          <li class="order-item">
            <div class="order-item-title"><%= item %></div>
            <div class="order-item-details">Date: <%= getCurrentDate() %></div>
            <!-- Add more order details here if needed -->
          </li>
          <% } %>
        </ul>
        <% } else { %>
        <p>No orders yet.</p>
        <% } %>

        <a href="Home.jsp" class="btn btn-primary">Go back to Home</a>
      </div>
    </div>
  </div>
  
  <%!
    // Utility method to get the current date in the format "dd-MM-yyyy"
    public String getCurrentDate() {
      java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MM-yyyy");
      return sdf.format(new java.util.Date());
    }
  %>
</body>
</html>