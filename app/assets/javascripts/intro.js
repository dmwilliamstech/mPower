var timer = 0; //setting this up as global

$(document).ready( function () {

        $("#mySite").hide(); // you could have the site as display:none in css instead of this line.
        timer = setInterval( showSite , 18000 ) // here's your 2 seconds delay

});

function showSite() {
      clearInterval(timer);
      $(".sp-containers").fadeOut();
      $("#mySite").fadeIn();
}