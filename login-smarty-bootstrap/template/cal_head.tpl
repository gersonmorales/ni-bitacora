    <link rel='stylesheet' href='css/fullcalendar.css' />
    <link rel='stylesheet' href='css/fullcalendar.print.css' media='print' />

    <script src='js/moment.min.js'></script>
    <script src='js/fullcalendar.min.js'></script>
    <script src='js/fullcalendar.es.js'></script>

<script>

	$(document).ready(function() {
	
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			defaultDate: '2015-02-12',
			editable: true,
			businessHours: true,
			eventLimit: true, // allow "more" link when too many events
			events: {
				url: 'get-events.php',
				error: function() {
					$('#script-warning').show();
				}
			},
			loading: function(bool) {
				$('#loading').toggle(bool);
			}
		});
	});

</script>