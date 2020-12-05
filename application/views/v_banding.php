<div class="container">
	<br>
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-info">
				<div class="panel-heading">Bandingan 1</div>
				<div class="panel-body">

					<div class="form-group">
						<div class="col-sm-4">
							Nama
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->nama_penginapan; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Kategori</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->nama_kategori; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Alamat</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->alamat; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">No Telpon</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->no_telpon; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Latitude</p>
						</div>
						<div class="col-sm-8"> :
							<?php echo $penginapan->latitude; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Longitude</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->longitude; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Harga</p>
						</div>
						<div class="col-sm-8">: Rp.
							<?php echo number_format($penginapan->harga); ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Fasilitas</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->fasilitas; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Deskripsi</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->deskripsi; ?>
						</div>
					</div>



				</div>
				<div class="panel-footer"></div>
			</div>
		</div>
		<div class="col-md-6">
		<div class="panel panel-info">
				<div class="panel-heading">Bandingan 2</div>
				<div class="panel-body">
					<?php 
						if ($this->uri->segment(3) == 0) {
							?>
						<button onclick="bandingClick()">Pilih Perbandingan</button>
							<?php 
						} else { 

							?>
	<div class="form-group">
						<div class="col-sm-4">
							Nama
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->nama_penginapan; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Kategori</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->nama_kategori; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Alamat</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->alamat; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">No Telpon</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->no_telpon; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Latitude</p>
						</div>
						<div class="col-sm-8"> :
							<?php echo $penginapan->latitude; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Longitude</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->longitude; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Harga</p>
						</div>
						<div class="col-sm-8">: Rp.
							<?php echo number_format($penginapan->harga); ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Fasilitas</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->fasilitas; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Deskripsi</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $penginapan->deskripsi; ?>
						</div>
					</div>
							<?php
						}
					?>
				</div>
				<div class="panel-footer"></div>
			</div>
		</div>
	</div>
</div>

<script>
	function bandingClick() {
		window.open('https://javascript.info/')
	}
</script>
