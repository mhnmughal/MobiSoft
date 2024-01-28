<%@ page language="java" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Purchase Confirmation</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    /* Your custom CSS styles for the buy page */
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

    .card-text {
      font-size: 18px;
      color: #555;
      margin-bottom: 20px;
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
  </style>
</head>
<body>
  <div class="container">
    <h1>OrderCheckout</h1>
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Thank you for your purchasing!</h5>
        <p class="card-text">Do you really want to buy these products? :</p>

        <ul>
          <% 
            // Retrieve and display the purchased items and calculate total price
            ArrayList<String> orderList = new ArrayList<String>();
            double totalPrice = 0.0;

            for (int i = 0; i < 50; i++) {
              String productName = request.getParameter("productName" + i);
              String productPrice = request.getParameter("productPrice" + i);

              if (productName != null && productPrice != null) {
                orderList.add(productName + " - $" + productPrice);
                totalPrice += Double.parseDouble(productPrice);
              }
            }

            // Now let's store the orderList in the session for later retrieval
            session.setAttribute("orderList", orderList);
            session.setAttribute("totalPrice", totalPrice);
          %>
          <% for (String item : orderList) { %>
          <li><b><%= item %></b></li>
          <% } %>
        </ul>

        <p class="card-text">Total Paid: $<%= String.format("%.2f", totalPrice) %></p>
        <a href="Home.jsp" class="btn btn-primary">Go back to Home</a>
      </div>
    </div>
    <a href="buy.jsp" class="btn btn-primary">Confirm Order</a>
  </div>
</body>
</html>


