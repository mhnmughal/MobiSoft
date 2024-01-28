package com.MobiSoft;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@jakarta.servlet.annotation.WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  @Override
public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    PrintWriter out=response.getWriter();
    // Check the entered credentials
    if (username.equals("Admin") && password.equals("Admin")) {
      // Redirect to Admin panel
      response.sendRedirect("Admin_panel.jsp");
    } else if (isValidUser(username, password)) {
      // Redirect to Home page
      response.sendRedirect("Home.jsp");
    } else {
      // Invalid credentials, show error message
      out.println("<h1>Invalid credentials. Please try again.</h1>");
    }
  }

//Example method to validate user credentials
public boolean isValidUser(String username, String password) {
   // Replace this with your actual user validation logic
   // Mockup data for demonstration purposes
   String[] validUsernames = {"user1", "user2", "user3"};
   String[] validPasswords = {"pass1", "pass2", "pass3"};

   for (int i = 0; i < validUsernames.length; i++) {
       if (username.equals(validUsernames[i]) && password.equals(validPasswords[i])) {
           return true;
       }
   }
   return false;
}
  
  
  public boolean isValidUsers(int a, int b){
  int c= a+b;
  if(c==5)
  {
      return true;
  }
  return false;
  }
}

