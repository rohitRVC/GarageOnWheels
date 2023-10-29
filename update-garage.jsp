<%@ page import="java.sql.*" %>
<%
  // Retrieve the user's input from the signup form
  String gid = request.getParameter("gid");
  // Connect to the database and insert the user's information
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/garage","root","");
  PreparedStatement ps=con.prepareStatement("UPDATE garage.garage_list_new SET is_approved=1 WHERE garage_id=?");
  
  
  ps.setString(1, gid);

  int result = ps.executeUpdate();

  // If the signup is successful, redirect the user to the login page
  if (result > 0) {
    out.print("<script>alert('success'); window.location.replace('mechanic-signup.jsp?success');<script>");
  } else {
    out.print("Something went wrong");
  }
%>
                