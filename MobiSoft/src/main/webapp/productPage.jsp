<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Transaction History</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f5f5f5;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 800px;
      margin: 0 auto;
      padding: 30px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    table {
      width: 100%;
    }

    th, td {
      padding: 10px;
    }

    th {
      background-color: #f2f2f2;
    }

    tr:nth-child(even) {
      background-color: #f9f9f9;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Transaction History</h1>
    <table>
      <thead>
        <tr>
          <th>Transaction No.</th>
          <th>Model</th>
          <th>Price (USD)</th>
          <th>Transaction Date</th>
        </tr>
      </thead>
      <tbody>
        <%-- Mockup data for transaction history --%>
        <% String[] models = {"Lenovo A7", "Redmi Note 9 Pro", "Samsung Galaxy S20", "Xiaomi Mi 11", "OnePlus 9 Pro", "Sony Xperia 5 II"};
           double[] prices = {149.99, 249.99, 899.99, 699.99, 1099.99, 799.99};
           String[] transactionDates = {"2022-01-15", "2022-02-21", "2022-03-10", "2022-04-05", "2022-05-18", "2022-06-30"};

           // Generate random transaction numbers
           java.util.Random random = new java.util.Random();
           int[] transactionNumbers = new int[models.length];
           for (int i = 0; i < models.length; i++) {
               transactionNumbers[i] = random.nextInt(10000) + 1000;
           }

           // Display the transaction history
           for (int i = 0; i < models.length; i++) {
               %>
               <tr>
                 <td><a href="productPage.jsp?productId=<%= transactionNumbers[i] %>"><%= transactionNumbers[i] %></a></td>
                 <td><a href="productPage.jsp?productId=<%= transactionNumbers[i] %>"><%= models[i] %></a></td>
                 <td><%= prices[i] %></td>
                 <td><%= transactionDates[i] %></td>
               </tr>
               <%
           }
        %>
      </tbody>
    </table>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

