<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>User Details</title>
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
    
    table {
      width: 100%;
      border-collapse: collapse;
    }
    
    th, td {
      padding: 10px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }
    
    th {
      background-color: #f5f5f5;
    }
    
    tr:hover {
      background-color: #f9f9f9;
    }
    
    .add-user-form {
      margin-top: 20px;
      display: flex;
      flex-direction: column;
    }
    
    .add-user-form input {
      margin-bottom: 10px;
      padding: 5px;
    }
    
    .add-user-form button {
      padding: 5px 10px;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>User Details</h1>
    <table id="user-table">
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Phone Number</th>
        <th>Password</th>
        <th>Actions</th>
      </tr>
      <%
        // Mockup data stored in an array
        String[][] users = {
          {"John Doe", "john@example.com", "1234567890", "password1"},
          {"Jane Smith", "jane@example.com", "9876543210", "password2"},
          {"David Johnson", "david@example.com", "5678901234", "password3"}
        };
        
        // Loop through the array to display user details
        for (int i = 0; i < users.length; i++) {
      %>
      <tr>
        <td contenteditable="true"><%= users[i][0] %></td>
        <td contenteditable="true"><%= users[i][1] %></td>
        <td contenteditable="true"><%= users[i][2] %></td>
        <td contenteditable="true"><%= users[i][3] %></td>
        <td>
          <button onclick="deleteUser(<%= i %>);">Delete</button>
        </td>
      </tr>
      <%
        }
      %>
    </table>
    
    <div class="add-user-form">
      <h2>Add User</h2>
      <input type="text" id="name" placeholder="Name" required>
      <input type="email" id="email" placeholder="Email" required>
      <input type="tel" id="phone" placeholder="Phone Number" required>
      <input type="password" id="password" placeholder="Password" required>
      <button onclick="addUser();">Add User</button>
    </div>
    
    <script>
      function deleteUser(index) {
        document.getElementById("user-table").deleteRow(index + 1);
      }
      
      function addUser() {
        var name = document.getElementById("name").value;
        var email = document.getElementById("email").value;
        var phone = document.getElementById("phone").value;
        var password = document.getElementById("password").value;
        
        var table = document.getElementById("user-table");
        var row = table.insertRow(-1);
        
        var cell1 = row.insertCell(0);
        cell1.contentEditable = true;
        cell1.innerText = name;
        
        var cell2 = row.insertCell(1);
        cell2.contentEditable = true;
        cell2.innerText = email;
        
        var cell3 = row.insertCell(2);
        cell3.contentEditable = true;
        cell3.innerText = phone;
        
        var cell4 = row.insertCell(3);
        cell4.contentEditable = true;
        cell4.innerText = password;
        
        var cell5 = row.insertCell(4);
        cell5.innerHTML = '<button onclick="deleteUser(this.parentNode.parentNode.rowIndex - 1);">Delete</button>';
        
        document.getElementById("name").value = "";
        document.getElementById("email").value = "";
        document.getElementById("phone").value = "";
        document.getElementById("password").value = "";
      }
    </script>
  </div>
</body>
</html>
