function init_map(){
        var myOptions = {zoom:15,center:new google.maps.LatLng(51.3613653,-0.22012259999996786),mapTypeId: google.maps.MapTypeId.ROADMAP};
        map = new google.maps.Map(document.getElementById("idmap"), myOptions);
        marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(51.3613653, -0.22012259999996786)});
        infowindow = new google.maps.InfoWindow(
          {content:"<b>Cheam Croquet and Bowls Club</b><br/>Tudor Close<br/>SM3 8QS Cheam" });
        google.maps.event.addListener(marker, "click", function()
                                      {infowindow.open(map,marker);
                                                                 });
        infowindow.open(map,marker);
}

google.maps.event.addDomListener(window, 'load', init_map);