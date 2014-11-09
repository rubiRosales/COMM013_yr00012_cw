//function init_map(){
//        var myOptions = {zoom:15,center:new google.maps.LatLng(51.3613653,-0.22012259999996786),mapTypeId: google.maps.MapTypeId.ROADMAP};
//        map = new google.maps.Map(document.getElementById("idmap"), myOptions);
//        marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(51.3613653, -0.22012259999996786)});
//        infowindow = new google.maps.InfoWindow(
//          {content:"<b>Cheam Croquet and Bowls Club</b><br/>Tudor Close<br/>SM3 8QS Cheam" });
//        google.maps.event.addListener(marker, "click", function()
//                                      {infowindow.open(map,marker);
 //                                                                });
//        infowindow.open(map,marker);
//}

//google.maps.event.addDomListener(window, 'load', init_map); -->

function initialize() {
  var mapOptions = {
    zoom: 15,
    center: new google.maps.LatLng(51.3613653,-0.22012259999996786)
  };
  var mapDiv = document.getElementById('idmap');
  var map = new google.maps.Map(mapDiv, mapOptions);

  // We add a DOM event here to show an alert if the DIV containing the
  // map is clicked. Note that we do this within the intialize function
  // since the document object isn't loaded until after the window.load
  // event.
  google.maps.event.addDomListener(mapDiv, 'click', showAlert);
}

function showAlert() {
  window.alert('DIV clicked');
}

google.maps.event.addDomListener(window, 'load', initialize);

