<%@ page import="java.sql.*" %>
<%
  // Retrieve the user's input from the login form
  String username = request.getParameter("username");
  String password = request.getParameter("password");

  // Connect to the database and validate the user's credentials
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/garage","root","");
  PreparedStatement ps=con.prepareStatement("SELECT * FROM users_new WHERE username=? AND password=?");
  ps.setString(1, username);
  ps.setString(2, password);
  ResultSet rs=ps.executeQuery();

  // If the login is successful, create a session variable to keep the user logged in
  if (rs.next()) {
    session.setAttribute("username", username);
    session.setAttribute("role", role);
    response.sendRedirect("home.jsp");
  } else {
    out.print("Invalid username or password");
  }
%>
