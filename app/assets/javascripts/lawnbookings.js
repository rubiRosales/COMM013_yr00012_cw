jQuery(document).ready(function() {
  // posts the data from the view to the back end. 
  $(".button_book").click(function() {
    var currentObject = $(this);
       $.ajax({
         type: "POST",
         url: "booking_lawn",
         dataType: "json",
         data: { booking_date: currentObject.data("booking-date") , lawn_no: currentObject.data("lawn-no")},
         success: function(data, status, xhr){
            alert("Successfully booked");
         },
         error: function(xhr, status){
           alert("failure");}
       }); 
    });

    //calls the update event from the SSE method to update the page with the booked lawns.
    setTimeout(function() {
    var source = new EventSource('/get_booking');
      var event_name = 'update';
      source.addEventListener(event_name, function(e) {
        var obj = JSON.parse(e.data);
       $('.unbooked[data-booking-date="' + obj.booking_date +'"][data-lawn-no="' + obj.lawn_no +'"]').removeClass("unbooked").addClass("booked").html("has already been booked");

      });
  }, 0.5);

});
