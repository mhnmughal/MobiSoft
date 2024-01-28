<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>MobiSoft</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
    <h1>MobiSoft</h1>
    <form action="search.jsp" method="GET" class="mb-3">
      <div class="form-group">
        <input type="text" class="form-control" name="search" placeholder="Search by Make or Model">
      </div>
      <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="searchType" id="byMake" value="byMake" checked>
        <label class="form-check-label" for="byMake">By Make</label>
      </div>
      <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="searchType" id="byModel" value="byModel">
        <label class="form-check-label" for="byModel">By Model</label>
      </div>
      <button type="submit" class="btn btn-primary">Search</button>
    </form>
    <div class="row">
      <% 
          String search = request.getParameter("search");
          String searchType = request.getParameter("searchType");

          String jdbcUrl = "jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL [root on Default schema]";
          String username = "root";
          String password = "admin";

          try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcUrl, username, password);
            Statement statement = connection.createStatement();

            String query = "";

            if (searchType.equals("byMake")) {
              query = "SELECT * FROM products WHERE make LIKE '%" + search + "%'";
            } else if (searchType.equals("byModel")) {
              query = "SELECT * FROM products WHERE model LIKE '%" + search + "%'";
            }

            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {
              String make = resultSet.getString("make");
              String model = resultSet.getString("model");
              double price = resultSet.getDouble("price");

              out.println("<div class='col-md-4'>");
              out.println("<div class='card mb-4 shadow-sm'>");
              out.println("<div class='card-body'>");
              out.println("<h5 class='card-title'>" + make + " " + model + "</h5>");
              out.println("<p class='card-text'>Price: $" + price + "</p>");
              out.println("</div></div></div>");
            }

            resultSet.close();
            statement.close();
            connection.close();
          } catch (Exception e) {
            out.println("<p>An error occurred. Please try again.</p>");
            e.printStackTrace();
          }
      %>
    </div>
  </div>
</body>
</html>

