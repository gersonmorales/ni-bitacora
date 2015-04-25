    <link rel='stylesheet' href='css/simple-sidebar.css' />
    <link rel='stylesheet' href='css/fullcalendar.css' />
    <link rel='stylesheet' href='css/fullcalendar.print.css' media='print' />

    <script src='js/moment.min.js'></script>
    <script src='js/fullcalendar.min.js'></script>
    <script src='js/fullcalendar.es.js'></script>

<script>

	var calSrc = new Array();
	//first source uses querystring to determine what events to pull back
	calSrc[0] = 'get-events.php';
	//second source just returns all events
	//calSrc[1] = '/hackyjson/anothercal/';
	var newSrc = new Array(); //we'll use this later

	$(document).ready(function() {
	
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			defaultDate: '2015-02-12',
			editable: false,
			businessHours: true,
			eventLimit: true, // allow "more" link when too many events
			eventSources: [calSrc[0]],
			loading: function(bool) {
				$('#loading').toggle(bool);
			}
		});

    	$("{$pac2js}").change(function() {
        	//get current status of our filters into newSource
 	        newSrc[0] = 'get-events.php?new=1' + 
 	        {foreach $pacientes as $key => $value}
        		{foreach $value as $k => $v}
					'&pac_{$k}='+ $('#pac_{$k}').is(':checked') +  	        
        		{/foreach}
      		{/foreach}
        			'&end=1';

	        //remove the old eventSources
    	    $('#calendar').fullCalendar('removeEventSource', calSrc[0]);
    	    $('#calendar').fullCalendar('refetchEvents');

        	//attach the new eventSources
     	    $('#calendar').fullCalendar('addEventSource', newSrc[0]);
	        $('#calendar').fullCalendar('refetchEvents');

      	  	calSrc[0] = newSrc[0];
    	});
	});

</script>