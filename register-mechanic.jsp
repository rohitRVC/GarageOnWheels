<%@ page import="java.sql.*" %>
<%
  // Retrieve the user's input from the signup form
  String name = request.getParameter("name");
  String contact = request.getParameter("contact");
  String latitude = request.getParameter("latitude");
  String longitude = request.getParameter("longitude");
int userid = Integer.parseInt(session.getAttribute("id").toString());
  // Connect to the database and insert the user's information
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/garage","root","");
  PreparedStatement ps=con.prepareStatement("INSERT INTO garage.garage_list_new(garage_name, contact, latitude, longitude, userid, is_approved) VALUES(?, ?, ?, ?, ?,0);");
  
  
  ps.setString(1, name);
  ps.setString(2, contact);
  ps.setString(3, latitude);
  ps.setString(4, longitude);
  ps.setInt(5, userid);
  int result = ps.executeUpdate();

  // If the signup is successful, redirect the user to the login page
  if (result > 0) {
    out.print("<script>alert('success'); window.location.replace('mechanic-signup.jsp?success');<script>");
    response.sendRedirect("mechanic-signup.jsp?success");
  } else {
    out.print("Something went wrong");
  }
%>
                