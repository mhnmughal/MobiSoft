<%@ page language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.MobiSoft.Product" %>
<%@ page import="com.MobiSoft.ProductList" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Mobile Store</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    body {
      background-color: #f5f5f5;
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 20px;
    }

    .navigation {
      margin-bottom: 20px;
    }

    .navigation a {
      margin-right: 10px;
    }

    .product-list {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 20px;
    }

    .product {
      background-color: #fff;
      padding: 10px;
      border-radius: 5px;
      text-align: center;
    }

    .product img {
      width: 100%;
      height: auto;
      margin-bottom: 10px;
    }

    .product-title {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 5px;
    }

    .product-price {
      font-size: 16px;
      color: #888;
    }

    .product-button {
      margin-top: 10px;
    }

    .cart-button {
      background-color: #f44336;
      color: #fff;
      border: none;
      padding: 8px 16px;
      border-radius: 5px;
      text-transform: uppercase;
      cursor: pointer;
    }

    .cart-form {
      margin-top: 20px;
    }

    .cart-form label {
      font-weight: bold;
    }

    .cart-form .form-group {
      margin-bottom: 10px;
    }

    .buy-button {
      background-color: #4CAF50;
      color: #fff;
      border: none;
      padding: 8px 16px;
      border-radius: 5px;
      text-transform: uppercase;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="navigation">
      <a href="Home.jsp">Home</a>
      <a href="about.html">About</a>
      <a href="catagory.html">Category</a>
      <a href="UserOrderlist.jsp">OrderList</a>
       <a href="Search.jsp">Search</a>
      <button class="cart-button" onclick="showCart()">Cart</button>
    </div>
    <div class="product-list">
      <div class="product">
        <img src="lenovo_phone.jpg" alt="Lenovo Phone">
        <h3 class="product-title">LENOVO LEGION Y70 </h3>
        <p class="product-price">$999</p>
        <button class="product-button cart-button" onclick="addToCart('Lenovo Phone', 199)">Add to Cart</button>
      </div>
      <div class="product">
        <img src="redmi_phone.jpg" alt="
Redmi Note 12R Pro">
        <h3 class="product-title">
Redmi Note 12R Pro</h3>
        <p class="product-price">$179</p>
        <button class="product-button cart-button" onclick="addToCart('Redmi Phone', 179)">Add to Cart</button>
      </div>
      <div class="product">
        <img src="samsung_phone.jpg" alt="Samsung Phone">
        <h3 class="product-title">Samsung  Galaxy S23 Ultra</h3>
        <p class="product-price">$249</p>
        <button class="product-button cart-button" onclick="addToCart('Samsung  Galaxy S23 Ultra', 749)">Add to Cart</button>
      </div>
      <div class="product">
        <img src="samsung_phone.jpg" alt="Xiaomi Phone">
        <h3 class="product-title">Xiaomi 13</h3>
        <p class="product-price">$359</p>
        <button class="product-button cart-button" onclick="addToCart('Xiaomi 13', 359)">Add to Cart</button>
      </div>
      <div class="product">
        <img src="oneplus_phone.jpg" alt="OnePlus Phone">
        <h3 class="product-title">OnePlus 10 pro</h3>
        <p class="product-price">$499</p>
        <button class="product-button cart-button" onclick="addToCart('OnePlus 10 pro', 499)">Add to Cart</button>
      </div>
      <div class="product">
        <img src="sony_phone.jpg" alt="Sony Phone">
        <h3 class="product-title">Sony Xperia 1 V </h3>
        <p class="product-price">$329</p>
        <button class="product-button cart-button" onclick="addToCart('Sony Xperia 1 V ', 329)">Add to Cart</button>
      </div>
      
        <%
    ProductList productList = new ProductList();
    ArrayList<Product> cartItems = productList.getProducts();
    // Rest of your existing scriptlet code
%>
      
      <!-- Add more products here -->
    </div>
    <div id="cartFormContainer" style="display: none;">
      <h2>Cart</h2>
      <form class="cart-form" action="checkoutList.jsp" method="post">
        <div class="form-group">
          <label for="productName">Product Name:</label>
          <input type="text" id="productName" name="productName" readonly>
        </div>
        <div class="form-group">
          <label for="productPrice">Price:</label>
          <input type="text" id="productPrice" name="productPrice" readonly>
        </div>
        <!-- Add more fields for product details here -->
        <div class="form-group">
          <button type="submit" class="buy-button">Buy</button>
        </div>
      </form>
    </div>
  </div>
  
  <script>
    var cartItems = [];

    function addToCart(productName, productPrice) {
      cartItems.push({ name: productName, price: productPrice });
      updateCartForm();
      showCart();
    }

    function updateCartForm() {
      var cartFormContainer = document.getElementById("cartFormContainer");
      var cartForm = cartFormContainer.querySelector(".cart-form");

      // Remove existing cart item fields
      var existingFields = cartForm.querySelectorAll(".cart-item-field");
      existingFields.forEach(function (field) {
        field.parentNode.removeChild(field);
      });

      // Add cart item fields for each product
      cartItems.forEach(function (item, index) {
        var productNameField = document.createElement("input");
        productNameField.type = "text";
        productNameField.name = "productName" + index;
        productNameField.value = item.name;
        productNameField.readOnly = true;
        productNameField.className = "cart-item-field";

        var productPriceField = document.createElement("input");
        productPriceField.type = "text";
        productPriceField.name = "productPrice" + index;
        productPriceField.value = item.price;
        productPriceField.readOnly = true;
        productPriceField.className = "cart-item-field";

        cartForm.appendChild(productNameField);
        cartForm.appendChild(productPriceField);
      });
    }

    function showCart() {
      var cartFormContainer = document.getElementById("cartFormContainer");
      cartFormContainer.style.display = "block";
    }
  </script>
</body>
</html>

