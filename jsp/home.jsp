<%
  // Check whether the user is logged in
  if (session.getAttribute("username") == null) {
    response.sendRedirect("login.jsp");
  }
%>
<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
</head>
<body>
  <h1>Welcome <%= session.getAttribute("username") %>!</h1>
  <p>You are now logged in.</p>
  <a href="logout.jsp">Logout</a>
</body>
</html>
