<!DOCTYPE html>
<html lang="en">

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


    <div class="collapse navbar-collapse design " id="collapsibleNavbar">

      <div class="container">
        <div class="row">
          <div class="col-sm-3">
            <li class="nav-item">
              <a class="nav-link" href="#"><i style="font-size: 1em; " class="fa fa-home"></i> Home</a>
            </li>
          </div>

          <div class="col-sm-3">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown" href="#"> Menu</a>
              <div class="dropdown-menu design1">
                <a class="dropdown-item" href="repair.html">Garage NearMe</a>
                <a class="dropdown-item" href="emergency.html">Emergency HelpLine</a>
              </div>
            </li>
          </div>

          <div class="col-sm-3">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown" href="#"> More</a>
              <div class="dropdown-menu design1">
                <a class="dropdown-item" href="#about">About Us </a>
                <a class="dropdown-item" href="#about">Connect US</a>
                <a class="dropdown-item" href="#service">Service Provided</a>
              </div>
            </li>
          </div>
<% 
if(session.getAttribute("id")!= null){
  String name= session.getAttribute("name").toString();
%>
          <div class="col-sm-3">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" id="navbardrop" data-toggle="dropdown" href="#"> More</a>
              <div class="dropdown-menu design1">
                <a class="dropdown-item">Welcome <%= name %></a>
                <%
if(("admin".equalsIgnoreCase(session.getAttribute("role").toString()))){
 out.print("<a class='dropdown-item' href='admin.jsp' target='_blank'>Admin</a>");
 out.print("<a class='dropdown-item' href='audit.jsp' target='_blank'>Service</a>");
}
if(session.getAttribute("id")!= null){
    out.print("<a class='dropdown-item' target='_blank' href='mechanic-signup.jsp'>Register Mechanic</a>");
    out.print("<a class='dropdown-item' href='logout.jsp'>Logout</a>");
}
}
else{
  out.print("<a class='nav-link' href='signinup.html'>SignUp</a>");
}

%>   

              </div>
            </li>


                      <li class="nav-item">
          
            </li>

          </div>
        </div>
      </div>
    </div>
  </nav>

  <div class="background">
    <header>

      <h1> Find Nearest Mechanics,Towing and More</h1>
      <h4>Get Help On ONE CLICK</h4>
      <div class="container" style="margin-top: 10%;">
        <div class="row">
          <!-- <div class="col-lg-12 ">
                      <button class='btn btn-lg buttons'>
                    <i class="fa  fa-map-marker"></i><a href="gas-station.html"> Search Gas Stations </a>
                      </button>
                    </div> -->
          <div class="col-lg-12">
            <button class='btn btn-lg buttons'>
              <i class=""></i><a onclick="getLocation();"> Search Mechanics </a>
            </button>
          </div>
        </div>

      </div>
    </header>
    <!-- <div class="backfooter"  style="margin-top: 2%; ">
        <ul>
        <li style="padding: 0.5em;"> <a href="#"><i class="fa fa-facebook"></i></a> </li>
         <li style="padding: 0.5em;"> <a href="#"><i class="fa  fa-google-plus"></i></a> </li>
         <li style="padding: 0.5em;"> <a href="#"><i class="fa fa-twitter"></i></a> </li>
         <li style="padding: 0.5em;"> <a href="#"><i class="fa fa-instagram"></i></a> </li>

        </ul>

    </div> -->

  </div>
  <br>

  <article class="container">
    <div class="row">

      <div class="col-sm-6 ">


        <hr>

        <p style="font-size:1.2em;"> <br>At least once in a life, everyone have experienced vehical breakdown which
          force you to search for mechanics .How painful was that! Finding mechanics or petrol pump isn't that easy,is
          it? So , We are here to reduce your entire burden to find mechanics and Gas Station in case of vehical
          breakdown. </p>

        <p style="font-size:1.2em;"> <br><b style="color: coral; font-size: 1.8em; "> RoadSide Assistant </b>helps you
          to find nearest Mechanics, Petrol Pump on ONE CLICK . You just have to enter the location (eg.name of city)
          and within a second we will provide you nearest service center with detail information.</p>

      </div>
      <div class="col-sm-6 col-lg-6 col-md-6  img-fluid ">
        <img src="image/car1.jpg" alt="breakdown">

      </div>

    </div>
    <br>
    <br>
  </article>
  <section style="text-align: center ;" id="service">
    <hr>
    <h3>
      <span style="color: blueviolet;"> SERVICE PROVIDED </span>
      <br><br>
    </h3>
  </section>
  <div class="container" style="margin-top:1%;">
    <div class="row">
      <!-- <div class="col-12 col-md-4" style="background-color: gainsboro;margin-left: 0.5em; margin-bottom: 0.5em;">
         <p><span style="color:red;">Find Nearest Gas Station:</span><br><br>You can find Nearest gas station in Maharashtra, Gujrat,Rajastan,Tamilnadu,Delhi.<br><br>
              User rating for all nearby gas staion is on your fingertips.<br> choose Best nearby Gas Station
            </p>


        </div> -->
      <div class="col-12 col-md-4 " style="background-color: gainsboro; margin-left: 0.5em;margin-bottom: 0.5em;">
        <p><span style="color:purple;">Find Nearest Mechanics:</span>
          <br><br>You can find Nearest Mechanics in Maharashtra, Gujrat,Rajastan,Tamilnadu,Delhi.<br><br>

          You can even place order online or call service provider and get rid of breakdown.
        </p>


      </div>
      <div class="col-12 col-md-3" style="background-color: gainsboro;margin-left: 0.5em;margin-bottom: 0.5em;">
        <p style="color:green;">Get help for Towing:<br>

        </p>

      </div>
    </div>
  </div>
  <br> <br>
  <br>

  <footer class="foooter-background" id="about">
    <div class="container">
      <div class="row">
        <div class="col-12 col-sm-4" style="padding-bottom:3em; ">
          <span style="color: coral;"> ABOUT US:</span>
          <br><br>
          We are nerd rockstars
          <br>
          Meet the amazing team behind this project <br>and find out more about how we work.
          <br>

          Want to work with us?
          <br>
        </div>
        <div class="col-12 col-sm-4" style="padding-bottom:3em;">
          <span style="color: coral;"> CONTACT INFO:</span><br><br>
          Mobile No: <span style="font-family: serif">987654321</span><br>
          Gmail:RSAfinder@gmail.com
          <!-- <div class="footer-icon"  style="margin-top: 2%; ">
        <ul>
        <li style="padding: 0.5em;"> <a href="#"><i class="fa fa-facebook"></i></a> </li>
         <li style="padding: 0.5em;"> <a href="#"><i class="fa  fa-google-plus"></i></a> </li>
         <li style="padding: 0.5em;"> <a href="#"><i class="fa fa-twitter"></i></a> </li>
         <li style="padding: 0.5em;"> <a href="#"><i class="fa fa-instagram"></i></a> </li>

        </ul>
                  </div> -->
        </div>
        <div class="col-12 col-sm-4" style="padding-bottom:2em; ">
          <span style="color: coral;"> SERVICE PROVIDED </span>
          <br><br>

          <li>Locating Nearest .... </li>
          <li>Towing </li>
        </div>
      </div>
    </div>
    <p style="text-align: center;font-size: 1.1em;"> © 2018 RoadSide-Assistance. All rights reserved </p>
  </footer>

 



</body>

</html>