google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawChart);

function drawChart(arr) {

	$(document).ready(function() {

		var date = $('#date').val();

		showTemperatureChart( date);
		showHumidityChart( date );
		showDewPointChart( date );
	});

	function showTemperatureChart(date) {
		$.ajax({
			data: {
				json: 'temp',
				date: date
			},
			dataType: 'json'
		}).done(function(arr) {
			console.log(arr);

			var data = google.visualization.arrayToDataTable(arr);
			var options = {
				title: 'Temperatura (°C)'
			};
			var chart = new google.visualization.LineChart(document.getElementById('chart_temp'));

			chart.draw(data, options);

		}).fail(function(data) {
			console.error(data);
		});
	}

	function showHumidityChart(date) {
		$.ajax({
			data: {
				json : 'humidity',
				date : date
			},
			dataType: 'json'
		}).done(function(arr) {
			console.log(arr);

			var data = google.visualization.arrayToDataTable(arr);
			var options = {
				title: 'Humidade (%)'
			};
			var chart = new google.visualization.LineChart(document.getElementById('chart_humidity'));

			chart.draw(data, options);

		}).fail(function(data) {
			console.error(data);
		});
	}

	function showDewPointChart(date) {
		$.ajax({
			data : {
				json : 'dew_point',
				date : date
			},
			dataType: 'json'
		}).done(function(arr) {
			console.log(arr);

			var data = google.visualization.arrayToDataTable(arr);
			var options = {
				title: "Ponto de orvalho (°C)   [13-16° Confortável, 10-12° Muito Confortável, <10° Pouco seco para alguns]"
			};
			var chart = new google.visualization.LineChart(document.getElementById('chart_dew_point'));

			chart.draw(data, options);

		}).fail(function(data) {
			console.error(data);
		});
	}
}