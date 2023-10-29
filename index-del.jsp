<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>
    <button type="button" onclick="getLocation();">Click here to get nearest garage</button>
    </div>
    
    <script>
    

    function getLocation() {
        
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
      } else {
        alert("Geolocation is not supported by this browser.");
      }
    }
    
    function showPosition(position) {
    redirectUrl =  'find-garage.jsp?lat='+position.coords.latitude+"&long="+position.coords.longitude;
    // alert("Latitude: " + position.coords.latitude +"<br>Longitude: " + position.coords.longitude);
    console.log(redirectUrl)
      window.location.href =redirectUrl;

    }
    

</script>
</body>
</html>