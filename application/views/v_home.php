<br>

<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-info">
			<div class="panel-heading">
				Pemetaan Lokasi
				<button class="btn btn-success btn-sm" onclick="myloc()"><i class="fa fa-location-arrow "></i> My Location</button>
				<select name="" id="kategori">
					<?php
					foreach ($kategori->result() as $item) { 
						?>
						<option value="<?php echo $item->id_kategori; ?> "> <?php echo $item->nama_kategori;?></option>
					<?php }
					?>
					</select> <button onclick="filterClick()">Filter</button>
			</div>
				<?php
				echo $map['html'];
				?>
				</div>
				Detail Rute Menuju Tempat Olahraga
				<div id='detail'>
				</div>
			</div>
			<div class="panel-footer"></div>
		</div>
	</div>
</div>

<script>
	function makeRute(lat, long) {
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition( function (position) {
				showMPosition(position, lat, long)
			});
		} else {
			alert('Geolocation is not supported by this browser.')
		}
	}

	function myloc() {
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition( function (position) {
				showMyPosition(position)
			});
		} else {
			alert('Geolocation is not supported by this browser.')
		}
	}

	function showPosition(position, lat, long) {
		var e = document.getElementById("kategori");
		var strUser = e.value;
		enableHighAccuracy= 'true';
		window.location.href = "?ownlatitude="+position.coords.latitude+"&ownlongitude="+position.coords.longitude+"&tujuanlatitude="+lat+"&tujuanlongitude="+long+"$kategori="+strUser;
		
	}
	function showMPosition(position, lat, long) {
	window.location.href = "?ownlatitude="+position.coords.latitude+"&ownlongitude="+position.coords.longitude+"&tujuanlatitude="+lat+"&tujuanlongitude="+long;
	
	}
	function showMyPosition(position, lat, long) {
		enableHighAccuracy= 'true';
		window.location.href = "?ownlatitude="+position.coords.latitude+"&ownlongitude="+position.coords.longitude;
			
	}
</script>

<script>
	function filterClick() {
		var e = document.getElementById("kategori");
		var strUser = e.value;
		window.location.href = "?kategori="+strUser; 
	}
</script>


