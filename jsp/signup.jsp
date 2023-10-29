<%@ page import="java.sql.*" %>
<%
  // Retrieve the user's input from the signup form
  String name = request.getParameter("name");
  String email = request.getParameter("email");
  String username = request.getParameter("username");
  String password = request.getParameter("password");

  // Connect to the database and insert the user's information
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/garage","root","");
  PreparedStatement ps=con.prepareStatement("INSERT INTO users_new (name, email, username, password,role) VALUES (?, ?, ?, ?,'user')");
  ps.setString(1, name);
  ps.setString(2, email);
  ps.setString(3, username);
  ps.setString(4, password);
  int result = ps.executeUpdate();

  // If the signup is successful, redirect the user to the login page
  if (result > 0) {
    response.sendRedirect("signinup.html");
  } else {
    out.print("Error creating account");
  }
%>
