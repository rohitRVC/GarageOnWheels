<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html lang="en">
   <head>
      <title> Emergency_contacts</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- Add icon library -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
      <link href="https://fonts.googleapis.com/css?family=Raleway:400,900" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700&amp;subset=latin-ext,vietnamese" rel="stylesheet">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
      <script src="js/project.js"></script>
      <style>
         .title{
         color: gray;
         width: 55%;
         margin: 2% auto;
         text-align: center;
         }
         .contact{
         padding: 2em;
         font-weight: 900;
         }
         h6{
         color: gray;
         }
      </style>
   </head>
   <body>
   <%-- <%@include file="nav.jsp"%> --%>
   <% 
if(session.getAttribute("id")== null){
    response.sendRedirect("./signinup.html");
}

%>
      <nav  class="navbar  bg-dark " >
         <div class="col-sm-12 col-md-12 col-lg-12 col-12">
            <a  style="margin-left: 50%; color: white " id="contact" class="nav-link" href="index.html">HOME</a>
         </div>
      </nav>
      <% 
         if(!(request.getParameter("lat") != null &&request.getParameter("long")!=null) ){
         out.println("<script>getLocation();</script>");
         }else{
         try {
         
         
         String lati=request.getParameter("lat");
         String longi=request.getParameter("long");
         
         String connectionURL = "jdbc:mysql://localhost:3306/garage"; 
         Connection conn = null; 
         PreparedStatement stmt=null;
         Class.forName("com.mysql.jdbc.Driver").newInstance(); 
         int userid = Integer.parseInt(session.getAttribute("id").toString());
         conn = DriverManager.getConnection(connectionURL, "root", "");
         
         String sqlaudit = "INSERT INTO garage.user_audit(latitude, longitude, `timestamp`, user_id) VALUES('"+lati+"', '"+longi+"', current_timestamp(), "+userid+");";
         stmt = conn.prepareStatement(sqlaudit);
         stmt.executeUpdate(sqlaudit);
         String sql = "select * from (SELECT *,(6371 * acos( cos( radians("+longi+" ) ) * cos( radians( longitude  ) ) * cos( radians( "+lati+" ) - radians(latitude) ) + sin( radians( "+longi+" ) ) * sin( radians(longitude) ) )) AS distance FROM garage_list_new ) a where is_approved = 1 order by 8 asc";
         stmt = conn.prepareStatement(sql);
         
         %>
      <%-- sql = <%=sql.toString() %> <br> --%>
      <%-- lat = <%=lati %> --%>
      <%-- longitude = <%=longi %> --%>
      <%-- <br> --%>
      <h3 class="title">Garages Near <%=lati %>, <%=longi %></h3>
      <div class="container ">
         <div class="row">
            <%
               ResultSet rs = stmt.executeQuery(sql);
               // Extract data from result set
               while (rs.next()) {
                  int id = rs.getInt("garage_id");
                  String name = rs.getString("garage_name");
                   String latitude = rs.getString("latitude");
                   String longitude = rs.getString("longitude");
               String number = rs.getString("contact");
               %>
            <%-- id = <%=id %>
               name = <%=name %>
               latitude = <%=latitude %>
               longitude = <%=longitude %> --%>
            <div class="col-md-4 col-12 col-lg-4  contact ">
               <h5><%=name %></h5>
               <h6><a href="tel:<%=number %>"> <%=number %></a></h6>
               <h6>
               <a target="_blank" href="https://www.google.com/maps?q=<%=latitude %>,<%=longitude %>"><i class="fa fa-map-marker" aria-hidden="true"></i> Visit</a>
</h6>
            </div>
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
               }
               
               %>
         </div>
      </div>
   </body>
</html>