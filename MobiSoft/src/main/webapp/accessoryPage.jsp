<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mobile Phone Accessories</title>
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
    <h1>Mobile Phone Accessories</h1>
    <table>
      <thead>
        <tr>
          <th>Transaction No.</th>
          <th>Accessory</th>
          <th>Company</th>
          <th>Price (USD)</th>
          <th>Transaction Date</th>
        </tr>
      </thead>
      <tbody>
        <%-- Mockup data for accessory transaction history --%>
        <% String[] accessories = {"Handfree", "Headphone", "Earpods", "Mobile Cover", "Charger"};
           String[] companies = {"Lenovo", "Redmi", "Samsung", "Xiaomi", "OnePlus", "Sony"};
           double[] prices = {19.99, 29.99, 39.99, 9.99, 14.99};
           String[] transactionDates = {"2022-01-15", "2022-02-21", "2022-03-10", "2022-04-05", "2022-05-18", "2022-06-30"};

           // Generate random transaction numbers
           java.util.Random random = new java.util.Random();
           int[] transactionNumbers = new int[accessories.length];
           for (int i = 0; i < accessories.length; i++) {
               transactionNumbers[i] = random.nextInt(10000) + 1000;
           }

           // Display the accessory transaction history
           for (int i = 0; i < accessories.length; i++) {
               %>
               <tr>
                 <td><a href="accessoryPage.jsp?transactionId=<%= transactionNumbers[i] %>"><%= transactionNumbers[i] %></a></td>
                 <td><a href="accessoryPage.jsp?transactionId=<%= transactionNumbers[i] %>"><%= accessories[i] %></a></td>
                 <td><%= companies[i % companies.length] %></td>
                 <td><%= prices[i % prices.length] %></td>
                 <td><%= transactionDates[i % transactionDates.length] %></td>
               </tr>
               <%
           }
        %>
      </tbody>
    </table>
  </div>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
