<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="cyan">

  <%!
  int a=8;  
  %>
   <% 


    int i= Integer.parseInt(request.getParameter("num1"));
	int j= Integer.parseInt(request.getParameter("num2"));
	
	int k=i+j;

	out.println("K=== "+k);
	%>
	<h1>Your age is :<%= a %></h1>

</body>
</html>