<%@ page language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.MobiSoft.Product" %>
<%@ page import="com.MobiSoft.ProductList" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Search</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    /* Your custom CSS styles for the search page */
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

    .search-form {
      margin-top: 20px;
    }

    .search-form input[type="text"] {
      padding: 10px;
      width: 100%;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
      margin-bottom: 10px;
    }

    .search-form button {
      background-color: #1976D2;
      color: #fff;
      border: none;
      padding: 10px 20px;
      border-radius: 5px;
      text-transform: uppercase;
      cursor: pointer;
      transition: background-color 0.3s ease-in-out;
    }

    .search-form button:hover {
      background-color: #1565C0;
    }

    .search-results {
      margin-top: 20px;
    }

    .search-results ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    .search-results li {
      font-size: 18px;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Search for Products</h1>
    <div class="search-form">
      <form action="Search.jsp" method="post">
        <input type="text" name="searchQuery" placeholder="Enter product name">
        <button type="submit">Search</button>
      </form>
    </div>
    <div class="search-results">
      <h2>Search Results:</h2>
      <ul>
        <% 
          try {
            // Retrieve the search query from the form submission
            String searchQuery = request.getParameter("searchQuery");
            ArrayList<String> searchResults = new ArrayList<String>();
            ProductList productList = new ProductList();
            ArrayList<Product> cartItems = productList.getProducts();
          
            // Check if the search query is not empty and search for matching items in cartItems
            if (searchQuery != null && !searchQuery.trim().isEmpty()) {
              for (int i = 0; i < cartItems.size(); i++) {
                String productName = cartItems.get(i).getName();
                if (productName.toLowerCase().contains(searchQuery.toLowerCase())) {
                  searchResults.add(productName + " - $" + cartItems.get(i).getPrice());
                }
              }
            }

            // If no results found, display a message
            if (searchResults.isEmpty()) {
              out.println("<p>No products found for the search query: " + searchQuery + "</p>");
            } else {
              // Display the search results
              for (String result : searchResults) { 
        %>
        <li><b><%= result %></b></li>
        <% 
              }
            }
          } catch (Exception e) {
            out.println("<p>Error occurred: " + e.getMessage() + "</p>");
          }
        %>
      </ul>
    </div>
  </div>
</body>
</html>
