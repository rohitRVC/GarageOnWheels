<!DOCTYPE html>
<html lang="zxx">

<head>
    <title> Register Mechanic</title>
    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content=" RoadSide-Assistance Finder login and signup">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <!-- onlinefonts -->
    <link href="https://fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700,800" rel="stylesheet">
</head>

<body>
<% 
if(session.getAttribute("id")== null){
    response.sendRedirect("./signinup.html");
}

%>
    <header>
        <h1>RoadSide Assistance </h1>
    </header>
    <!-- //header -->
    <section class="login-wrap">
        <div class="main_w3agile">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked>
            <label for="tab-1" class="tab">Sign Up</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up">
            <label for="tab-2" class="tab"></label>
            <div class="login-form">
                <!-- signin form -->
                <div class="signin_wthree">
                    <form method="post" action="register-mechanic.jsp">
                        <div class="group">
                            <label for="user1" class="label">Garage Name</label>
                            <input id="user1" name="name" type="text" class="input" required>
                        </div>
                        <div class="group">
                            <label for="email" class="label">Contact</label>
                            <input id="email" name="contact" type="text" class="input" required>
                        </div>
                        <div class="group">
                            <label for="password1" class="label">Latitude</label>
                            <input name="latitude" type="text" class="input"  required>
                        </div>
                        <div class="group">
                            <label for="password1" class="label">Longitude</label>
                            <input name="longitude" type="text" class="input" required>
                        </div>

                        <div class="group">
                            <input type="submit" class="button" value="Register as Mechanic">
                        </div>

                    </form>
                </div>
                <!-- //signin form -->
            </div>
        </div>
    </section>
    <!-- //section -->
    <footer>
        <p> © 2018 RoadSide-Assistance Login & Signup form. All rights reserved </p>
    </footer>
    <!-- //footer -->

</body>
<!-- //Body -->

</html>