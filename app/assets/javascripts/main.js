$(function() {	
	
  $(".menu").accordion({
    event: 'mouseover'
  });

  $("#event_published_on").datepicker();
  $("#event_start").datepicker();

  $(".images a").lightBox();

  $('#calendar').fullCalendar({
      // see http://arshaw.com/fullcalendar/docs
      // for details.
      events: '/events.json',
      eventRender: eventRenderer,
      eventAfterRender: eventDayHighlighter,
      viewDisplay: clearDayHighlights,
      header: {left: 'prev', center: 'title', right: 'next'},     
      dayNamesShort:['S', 'M', 'T', 'O', 'T', 'F', 'L'],
      monthNames:['Januar', 'Februar', 'Marts', 'April', 'Maj', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'December']
  });
  
  
  function eventRenderer(event, element, view) {
      if (view.start.getMonth() == event.start.getMonth()) {
          var day = (view.start.getDay()-1) + event.start.getDate();
          element.html("<a class=\"fc-day" + day + " \"></a>");

      } else {
          element.addClass('fc-event-other-month');
      }                
   }

  function eventDayHighlighter(event, element, view) {        
      if (view.start.getMonth() == event.start.getMonth()) {
          var day = event.start.getDate();
          var foo ='#calendar .fc-grid td:not(.fc-other-month)';            
          $(foo).eq(day - 1).addClass("has-event");
          
          $('.fc-day'+ (day+4)).qtip({ 
              content: { text: event.title},
              style: {
                 classes: 'ui-tooltip-dark ui-tooltip-shadow ui-tooltip-rounded'
              },
              position: {
                 my: 'top center',  // Position my top left...
                 at: 'bottom center', // at the bottom right of...
                 target: $("#calendar .fc-grid td:not(.fc-other-month)").eq(day - 1) // my target
              }
          });
          
          $(".has-event")
          .mouseover(function() { 
              var myClass = $(this);
              $(myClass).addClass("hoverTd");
          })
          .mouseout(function() {
              var myClass = $(this);
              $(myClass).removeClass("hoverTd");
          });
      }
  }           

  function clearDayHighlights(view) {
      $("#calendar .fc-grid td").removeClass("has-event");
      $("#calendar").fullCalendar('rerenderEvents');
  }
  
});