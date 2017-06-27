// Show the number of people in space
// As well as their names
// Show the current latitude and longitude of the International Space Station
// Update the latitude and longitude every three seconds
// Use Google Maps to display the current position of the international space station
// Either add a new marker every three seconds
// Or, change the position of the one already on the screen
// Use Google Maps to draw a Polyline of all of the locations for the International Space Station

$(document).ready(function(){
  var findNames = function() {
    // debugger;
    var baseURL = 'http://api.open-notify.org/astros.json';

    $.ajax({
    url: baseURL

    })
    .done(function(res){
      console.log(res.people[1]);
      // result = res.people(1)
      for (var i = 0; i < res.people.length; i++) {
        var result = res.people[i];
        var $people = $("<li>").html(res.people[i].name);
        $('#people').append($people)
      }

    })
    .fail(function(xhr, status, err){
      console.log(xhr,status,err);

    })
  };

  var findLocation = function() {
    $('#location').empty()

    var baseURL = 'http://api.open-notify.org/iss-now.json';
    $.ajax({
      url: baseURL
    })
    .done(function(res){
      console.log(res);
      var position = res.iss_position
      var lat = parseInt(position.latitude);
      var lng = parseInt(position.longitude);
// debugger;
      var $location = $('<p>').html("latitude: " + lat + "; longitude: " + lng);
      $('#location').append($location)


      initMap(lat,lng);

    })
    .fail(function(xhr, status, err){
      console.log(xhr,status,err);
    })
  };

    function initMap(lat, lng) {
      var where = {lat: lat, lng: lng};
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 4,
        center: where
      });
      var marker = new google.maps.Marker({
        position: where,
        map: map
      });
      
    };

  findNames();
  findLocation();
  setInterval(findLocation,3000);
  // googleMaps()
  // initMap();
});
