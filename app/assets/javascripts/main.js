$(function() {

  $("#event_published_on").datepicker();
  $("#event_start").datepicker();

  $(".image_box").fancybox();

  $('#calendar').fullCalendar({
      // see http://arshaw.com/fullcalendar/docs
      // for details.
      events: '/events.json',
      aspectRatio: 2,
      dayNamesShort:['S', 'M', 'T', 'W', 'T', 'F', 'S'] 
  })
  
});