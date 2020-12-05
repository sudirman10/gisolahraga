<br>

<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-info">
			<div class="panel-heading">
				Pemetaan Lokasi
			</div>
			<div class="panel-body">



				<?php
				echo $map['html'];
				?>

			</div>
			<div class="panel-footer"></div>
		</div>
	</div>
</div>

<script>
	function makeRute(lat, long) {
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition( function (position) {
				showPosition(position, lat, long)
			});
		} else {
			alert('Geolocation is not supported by this browser.')
		}
	}

	function showPosition(position, lat, long) {
		// x.innerHTML = "Latitude: " + position.coords.latitude +
		// 	"<br>Longitude: " + position.coords.longitude;
		window.location.href = "?ownlatitude="+position.coords.latitude+"&ownlongitude="+position.coords.longitude+"&tujuanlatitude="+lat+"&tujuanlongitude="+long;
			
	}
</script>
