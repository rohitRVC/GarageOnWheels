<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd"> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
   <head>
      <title>Connection with mysql database</title>
   </head>
   <body>
      <% 
         try {
         String lati=request.getParameter("lat");
         String longi=request.getParameter("long");
         
         String connectionURL = "jdbc:mysql://localhost:3306/garage"; 
         Connection conn = null; 
         PreparedStatement stmt=null;
         Class.forName("com.mysql.jdbc.Driver").newInstance(); 
         conn = DriverManager.getConnection(connectionURL, "root", "");
         String sql = "select * from (SELECT *,(6371 * acos( cos( radians("+longi+" ) ) * cos( radians( longitude  ) ) * cos( radians( "+lati+" ) - radians(latitude) ) + sin( radians( "+longi+" ) ) * sin( radians(longitude) ) )) AS distance FROM garage_list_new ) a where distance < 1 order by 5 asc limit 5";
         
         stmt = conn.prepareStatement(sql);
         
         %>
      <%-- sql = <%=sql.toString() %> <br> --%>
      lat = <%=lati %>
      longitude = <%=longi %>
      <br>
      <%
         ResultSet rs = stmt.executeQuery(sql);
         // Extract data from result set
         while (rs.next()) {
            int id = rs.getInt("garage_id");
            String name = rs.getString("garage_name");
             String latitude = rs.getString("latitude");
             String longitude = rs.getString("longitude");
         
         %>
      id = <%=id %>
      name = <%=name %>
      latitude = <%=latitude %>
      longitude = <%=longitude %>
      <br>
      <% 
         }
         conn.close();
         }
         catch(Exception ex){
         %>
      <%
         out.println("Unable to connect to database."+ex);
         }
         %>
   </body>
</html>