<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getMethod().equals("POST")) {
        String userid=request.getParameter("ID");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");

        try {
            String jdbcUrl = "jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=CONVERT_TO_NULL";
            String jdbcUsername = "root";
            String jdbcPassword = "admin";

            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO users (userid,username, password, gmail, phoneno) VALUES (?, ?, ?, ?, ?)");
             preparedStatement.setString(1, userid);
            preparedStatement.setString(2, username);
            preparedStatement.setString(3, password);
            preparedStatement.setString(4, email);
            preparedStatement.setString(5, phone);

            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
                out.println("<script>alert('Account created successfully!')</script>");
            } else {
                out.println("<script>alert('Failed to create account. Please try again.')</script>");
            }

            preparedStatement.close();
            connection.close();
        } catch (Exception e) {
            out.println("<script>alert('An error occurred. Please try again.')</script>");
            e.printStackTrace();
        }
    }
%>
