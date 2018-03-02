<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css"
	integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy"
	crossorigin="anonymous">

<!-- Leaflet CSS -->
<link rel="stylesheet"
	href="https://unpkg.com/leaflet@1.2.0/dist/leaflet.css"
	integrity="sha512-M2wvCLH6DSRazYeZRIm1JnYyh22purTM+FDB5CsyxtQJYeKq83arPe5wgbNmcFXGqiSH2XR8dT/fJISVA1r/zQ=="
	crossorigin="" />

<style>
.leaflet-grid-label .lng {
	margin-left: 8px;
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
}

div.gridSquareLabel {
	text-align: center;
	margin: 0px;
}
</style>

<title>Hamtelligence</title>

</head>
<body>

	<div class="jumbotron">
		<h1 class="display-4 text-center">&middot; Hamtelligence &middot;</h1>
		<hr class="my-4">
		<div class="input-group mb-3">
			<input type="text" class="form-control" placeholder="Callsign"
				aria-label="Recipient's username" aria-describedby="basic-addon2">
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button">Search</button>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<div class="card">
					<div class="card-header">${station.getAttribute("name")},
						${station.getCallsign()}</div>
					<pre>${modeUse.get("WSPR")}</pre>
					<table class="table table-hover">
						<tr>
							<th>Address</th>
							<td>${station.getAttribute("city")},
								${station.getAttribute("state")},
								${station.getAttribute("country")}</td>
						</tr>
						<tr>
							<th>Modes</th>
							<td>APRS, <span class="badge badge-pill badge-primary"
								data-toggle="popover" title="DMR IDs"
								data-content="2344327, 2341514">DMR</span> , RTTY
							</td>
						</tr>
						<tr>
							<th>Bands</th>
							<td>80m, 40m</td>
						</tr>
					</table>
					<div class="card-body">
						<a href="#" class="card-link">QRZ.com</a> <a href="#"
							class="card-link">Hamcall.net</a>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-6">
				<div class="card">
					<div class="card-header">Location</div>
					<div id="map" style="height: 300px"></div>
					<div class="card-body">
						<a href="#" class="card-link">Google Maps</a> <a href="#"
							class="card-link">OpenStreetMap</a>
					</div>
				</div>
			</div>

			<div class="col-lg-6">
				<div class="card">
					<div class="card-header">Activity</div>
					<ul class="nav nav-tabs" id="activityTabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							id="activity-overview-tab" data-toggle="tab" href="#overview"
							role="tab" aria-controls="overview" aria-selected="true">Overview</a></li>
						<li class="nav-item"><a class="nav-link" id="spots-tab"
							data-toggle="tab" href="#spots" role="tab" aria-controls="spots"
							aria-selected="false">Spots</a></li>
					</ul>
					<div class="tab-content" id="activityTabContent">
						<div class="tab-pane fade show active" id="overview"
							role="tabpanel" aria-labelledby="overview-tab">
							<canvas id="activityChart" width="100%" height="50"></canvas>
							<canvas id="modeChart" width="100%" height="50"></canvas>
						</div>
						<div class="tab-pane fade" id="spots" role="tabpanel"
							aria-labelledby="spots-tab">
							<table class="table table-hover">
								<tr>
									<th>Date</th>
									<th>Frequency</th>
									<th>Mode</th>
									<th>By</th>
								</tr>
								<c:forEach items="${station.getActivity()}" var="spot">
									<tr>
										<td>${spot.getCreated_at()}</td>
										<td>${spot.getFrequency()}</td>
										<td>${spot.getMode()}</td>
										<td>${spot.getSpotter()}</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
		integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
		crossorigin="anonymous"></script>
	<script>
		// Start popovers
		$(function() {
			$('[data-toggle="popover"]').popover()
		})
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.bundle.min.js"></script>
	<script>
		var activityCtx = document.getElementById("activityChart").getContext(
				'2d');
		var myChart = new Chart(activityCtx,
				{
					type : 'bar',
					data : {
						labels : [
							<c:forEach items="${bandUse.keySet()}" var="bandKey">
								"${bandKey}", 
							</c:forEach>
						],
						datasets : [ {
							label : '# of spots',
							data : [
								<c:forEach items="${bandUse.keySet()}" var="bandKey">
									${bandUse.get(bandKey)}
								</c:forEach>
							],
							backgroundColor : [ 'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(54, 162, 235, 0.2)', // Blue = HF
							'rgba(255, 206, 86, 0.2)', // Yellow = VHF
							'rgba(255, 206, 86, 0.2)', // Yellow = VHF
							'rgba(255, 206, 86, 0.2)', // Yellow = VHF
							'rgba(255, 206, 86, 0.2)', // Yellow = VHF
							'rgba(75, 192, 192, 0.2)' ], // Green = UHF
							borderColor : [ 'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});
		var modeCtx = document.getElementById("modeChart").getContext('2d');
		var myChart = new Chart(modeCtx, {
			type : 'bar',
			data : {
				labels : [
					<c:forEach items="${modeUse.keySet()}" var="modeKey">
						"${modeKey}", 
					</c:forEach>
				],
				datasets : [ {
					label : '# of spots',
					data : [
						<c:forEach items="${modeUse.keySet()}" var="modeKey">
							${modeUse.get(modeKey)}
						</c:forEach>
					],
					backgroundColor : [ 'rgba(54, 162, 235, 0.2)', // Blue = Voice
					'rgba(255, 206, 86, 0.2)', // Yellow = CW
					'rgba(75, 192, 192, 0.2)',// Green = RTTY
					'rgba(153, 102, 255, 0.2)' ], // Purple = PSK31
					borderColor : [ 'rgba(54, 162, 235, 1)',
							'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)',
							'rgba(153, 102, 255, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});
	</script>
	<script src="https://unpkg.com/leaflet@1.2.0/dist/leaflet.js"
		integrity="sha512-lInM/apFSqyy1o6s89K4iQUKg6ppXEgsVxT35HbzUupEVRh2Eu9Wdl4tHj7dZO0s1uvplcYGmt3498TtHq+log=="
		crossorigin=""></script>
	<script src="js/leaflet.ajax.min.js"></script>
	<script src="js/l.maidenheadgrid.js"></script>
	<script>
		// Set up location map
		
		var map = L.map('map').setView([ ${locations.get(0).getLatitude()}, ${locations.get(0).getLongitude()} ], 13);
		L
				.tileLayer(
						'http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png ',
						{
							attribution : 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery � <a href="http://mapbox.com">Mapbox</a>',
							maxZoom : 18,
						}).addTo(map);

		var pointList = [
			<c:forEach items="${locations}" var="location">
				new L.LatLng(${location.getLatitude()}, ${location.getLongitude()}),
			</c:forEach>
		];

		var track = new L.Polyline(pointList, {
			color : 'red',
			weight : 3,
			opacity : 0.5,
			smoothFactor : 1
		});
		track.addTo(map);

		var grid_square = new L.geoJson(null, {
			style : {
				"color" : "#ffffff",
				"weight" : 5,
				"opacity" : 0.65,
				"fill-opacity" : 0
			}
		});

		grid_square.addTo(map);

		$.ajax({
					dataType : "json",
					url : "js/mh.2.geo.json",
					success : function(data) {
						console.log("AJAX Finished");
						$(data.features)
								.each(
										function(key, data) {
											var label = L
													.marker(
															L
																	.latLngBounds(
																			L
																					.latLng(
																							data.geometry.coordinates[0][0][1],
																							data.geometry.coordinates[0][0][0]),
																			L
																					.latLng(
																							data.geometry.coordinates[0][2][1],
																							data.geometry.coordinates[0][2][0]))
																	.getCenter(),
															{
																icon : new L.DivIcon(
																		{
																			className : 'gridSquareLabel',
																			html : data.properties.name,
																			iconSize : [
																					20,
																					12 ]
																		})
															}).addTo(map);

											console.log(label);

											grid_square.addData(data);
										});
						console.log("Finished processing geojson");
					},
					error : function(jqXHR, textStatus, errorThrown) {
						console.log("Oops: " + errorThrown);
					}
				});
		
	</script>

</body>
</html>