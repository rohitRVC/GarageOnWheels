
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        alert("Geolocation is not supported by this browser.");
    }
}

function showPosition(position) {
    redirectUrl = 'find-garage.jsp?lat=' + position.coords.latitude + "&long=" + position.coords.longitude;
    // alert("Latitude: " + position.coords.latitude +"<br>Longitude: " + position.coords.longitude);
    console.log(redirectUrl)
    window.location.href = redirectUrl;

}

