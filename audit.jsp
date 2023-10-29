<!DOCTYPE html>
<html lang="en">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<% 
if(!("admin".equalsIgnoreCase(session.getAttribute("role").toString()))){
  response.sendRedirect("./index.html");
}else{
}

%>
<head>
  <title>GarageOnWheels</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Add icon library -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

  <link href="https://fonts.googleapis.com/css?family=Raleway:400,900" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700&amp;subset=latin-ext,vietnamese"
    rel="stylesheet">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="js/project.js"></script>

  <style>
    * {
      box-sizing: border-box;
    }

    body {
      font-family: 'Raleway', sans-serif;

    }


    .background {
      background: linear-gradient(0deg, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.5)), url(image/home3.jpg);
      background-repeat: no-repeat;
      background-size: cover;
      background-position: center;
      padding: 1em 0;
      color: #ffffff;
      text-align: center;

    }


    .background h1 {
      font-size: 2em;
      color: white;
      font-weight: 900;
      margin-top: 12%;
      padding-bottom: 0.5em;

    }


    .background h4 {
      font-size: 1.5em;
      color: white;
      font-weight: 900;

    }

    .background button {
      width: 50%;
      height: 2em;
      font-weight: 400;
      border: 1px solid white;
      margin-top: 0.5em;
      color: white;

    }

    .design li,
    a {
      text-decoration: none;
      list-style: none;
      color: gainsboro;
      transition: all 0.3s ease-in;


    }

    .design li,
    a:hover {
      color: darkorange;
      font-size: 1.02em;
    }

    .design1 a {
      background-color: transparent;

    }

    .navbar-brand:hover {
      font-size: 1.27em;

    }

    .buttons {
      width: 50%;
      background-color: transparent;
      transition: all 0.3s ease-in;


    }

    .buttons:hover {
      width: 51%;
      background-color: transparent;


    }

    button a {

      text-decoration: none;


    }

    button a:hover {

      text-decoration: none;
      color: white;


    }

    .backfooter {
      font-size: 1em;
      padding: 1em;

    }

    .backfooter li {
      display: inline-block;

    }

    .backfooter a {
      border-radius: 50%;
      border: 1px solid grey;
      width: 30px;
      height: 30px;
      display: block;
      font-size: 16px;
      text-align: center;
      line-height: 30px;
      color: white;
      transition: all 0.2s ease-in;
    }

    .backfooter a:hover {
      font-size: 1.2em;
      color: darkorange;
      border: 1px solid orange;
    }

    img {

      width: 100%;
      height: 75%;
      margin-top: 1em;
    }

    hr {
      width: 82%;
      border: 1px solid orange;
    }

    .foooter-background {

      color: white;
      background-color: rgb(20, 26, 26);
      padding-top: 2em;

    }

    .footer-icon {
      font-size: 0.8em;

    }

    .footer-icon li {
      display: inline-block;

    }

    .footer-icon a {
      border-radius: 50%;
      border: 1px solid grey;
      width: 30px;
      height: 30px;
      display: block;
      font-size: 1em;
      text-align: center;
      line-height: 30px;
      color: white;
      transition: all 0.2s ease-in;
    }

    .footer-icon a:hover {
      font-size: 1.2em;
      color: darkorange;
      border: 1px solid orange;
    }

    @media screen and (max-width: 500px) {
      .background button {
        width: 80%;

      }

      .buttons:hover {
        width: 81%;
        background-color: transparent;


      }

    }
  </style>
</head>

<body>

  <nav class="navbar navbar-expand-md bg-dark  navbar-dark  ">

    <a style="margin-left: 2em;" class="navbar-brand" href="#">Garage On Wheels</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
    </button>
    </nav>
 <% 
         try {
         
         String connectionURL = "jdbc:mysql://localhost:3306/garage"; 
         Connection conn = null; 
         PreparedStatement stmt=null;
         Class.forName("com.mysql.jdbc.Driver").newInstance(); 
         conn = DriverManager.getConnection(connectionURL, "root", "");
         String sql = "select ua.*,un.name,un.email  from user_audit ua left join users_new un on ua.user_id = un.userid order by timestamp desc";
         
         stmt = conn.prepareStatement(sql);
         
         %>

      <br>
<div class="container">
<table class="table">

  <thead>
    <tr>
      <%-- <th scope="col">#</th> --%>
      <th scope="col">Timestamp</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">From Location</th>
      
    </tr>
  </thead>
    <tbody>
      <%
         ResultSet rs = stmt.executeQuery(sql);
         // Extract data from result set
         while (rs.next()) {
            int id = rs.getInt("user_id");
            String name = rs.getString("name");
             String email = rs.getString("email");
             String latitude = rs.getString("latitude");
             String longitude = rs.getString("longitude");
             String auditId=rs.getString("audit_id");
             String ts=rs.getString("timestamp");
         
         
         %>
       <tr>
      
      <td> <%=ts %></td>
      <td> <%=name %></td>
      <td> <%=email %></td>
      <td><a style="color:blue" target="_blank" href="https://www.google.com/maps?q=<%=latitude %>,<%=longitude %>"><i class="fa fa-map-marker" aria-hidden="true"></i> Visit</a></td>
      
    </tr>
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



   
   
  </tbody>
</table>
<%@include file="footer.html"%>

 	<script>
		function approve(garage_id) {
			console.log(garage_id)
			var url = "update-garage.jsp?gid=" + garage_id;
			$.ajax({
				type: "GET",
				url: url,
				data: {},
				cache: false,
				success: function(data) {
					console.log("data=" + data);
          location.reload()
				},
				error: function(xhr, status, error) {
					console.error(xhr);
				}
			});

		}
	</script>
</body>

</html>