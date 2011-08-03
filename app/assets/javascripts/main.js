$(function() {	
	
  $(".menu").accordion({
    event: 'mouseover'
  });

  $("#event_published_on").datepicker();
  $("#event_start").datepicker();

  $(".image_box a").lightBox();

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
  
  $(".lightbox").click(function(e) {
    e.preventDefault();
    var image_href = $(this).attr("href");
    
    if ($("#lightbox").length > 0) {
      //insert img tag with clicked link's href as src value
      $('#content').html('<img src="' + image_href + '" />');
      
      // show lightbox window - you can use a transition here if you want
      $('#lightbox').show();
    }
    else { //#lightbox does not exist
      
      //create HTML markup for lightbox window
      var lightbox =
      '<div id="lightbox">' + 
        '<p>Klik for at lukke</p>' +
        '<div id="content">' + //insert clicked link's href into img src
          '<img src="' + image_href +'" />' +
        '</div>' +
      '</div>';
    
      //insert lightbox HTML into page
      $('body').append(lightbox); 
    }
    
   //Click anywhere on the page to get rid of lightbox window 
   $("#lightbox").live('click', function() { //must use live, as the lightbox element is inserted into the DOM
     $("#lightbox").hide();
   });
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
  
  var uploader = new plupload.Uploader({
    runtimes : "silverlight,flash,html5",
    browse_button : 'pickfiles',
    max_file_size : '2mb',
    url : "<%= images_path %>",
    flash_swf_url: "/javascripts/plupload/plupload.flash.swf",
    silverlight_xap_url: "/javascripts/plupload/plupload.silverlight.xap",
    multipart: true,
    multipart_params: {
     "authenticity_token" : '<%= form_authenticity_token %>'
    }
  });

  uploader.bind('FilesAdded', function(up, files) {
    $.each(files, function(i, file) {
      $('#filelist').append(
        '<div id="' + file.id + '">' +
        'File: ' + file.name + ' (' + plupload.formatSize(file.size) + ') <b></b>' +
        '</div>'
        );
      });
    });

  uploader.bind('UploadProgress', function(up, file) {
    $('#' + file.id + " b").html(file.percent + "%");
  });

  $('#uploadfiles').click(function(e) {
    uploader.start();
    e.preventDefault();
  });

  uploader.init();
});