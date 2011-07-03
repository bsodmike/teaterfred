$(function() {

  $("#event_published_on").datepicker();
  $("#event_start").datepicker();

  $('#calendar').fullCalendar({
      // see http://arshaw.com/fullcalendar/docs
      // for details.
      events: '/feeds/events.json',
      aspectRatio: 2,
      dayNamesShort:['S', 'M', 'T', 'W', 'T', 'F', 'S'] 
  });
  
  $(".image_box a").lightBox();
  
});