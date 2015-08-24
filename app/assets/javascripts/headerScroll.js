$(document).ready(function(){       
   var scroll_start = 0;
   var startchange = $('#mainNav');
   var offset = startchange.offset();
   $(document).scroll(function() { 
      scroll_start = $(this).scrollTop();
      if(scroll_start > offset.top) {
          $('#mainNav').css('background-color', 'rgba(34,34,34,0.9)');
       } else {
          $('#mainNav').css('background-color', 'transparent');
       }
   });
});