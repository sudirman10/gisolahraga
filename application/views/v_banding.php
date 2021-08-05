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
							<?php echo $olahraga->nama_olahraga; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Kategori</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $olahraga->nama_kategori; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Alamat</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $olahraga->alamat; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Jam Buka</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $olahraga->jam_buka; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">No Telpon</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $olahraga->no_telpon; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Latitude</p>
						</div>
						<div class="col-sm-8"> :
							<?php echo $olahraga->latitude; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Longitude</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $olahraga->longitude; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Harga</p>
						</div>
						<div class="col-sm-8">: Rp.
							<?php echo number_format($olahraga->harga); ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Fasilitas</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $olahraga->fasilitas; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Deskripsi</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $olahraga->deskripsi; ?>
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
							<select name="" id="ban">
							<?php
							foreach ($select->result() as $item){?>
								<option value="<?php echo $item->id_olahraga; ?> "> <?php echo $item->nama_olahraga; ?></option>
							<?php }
							?>
							</select>
							<button onclick="bandingClick()">Pilih Perbandingan</button>
							<?php 
						} else { 

							?>
	<div class="form-group">
						<div class="col-sm-4">
							Nama
						</div>
						<div class="col-sm-8">:
							<?php echo $banding->nama_olahraga; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Kategori</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $banding->nama_kategori; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Alamat</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $banding->alamat; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Jam Buka</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $banding->jam_buka; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">No Telpon</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $banding->no_telpon; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Latitude</p>
						</div>
						<div class="col-sm-8"> :
							<?php echo $banding->latitude; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Longitude</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $banding->longitude; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Harga</p>
						</div>
						<div class="col-sm-8">: Rp.
							<?php echo number_format($banding->harga); ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Fasilitas</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $banding->fasilitas; ?>
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-4">
							<p class="control-label">Deskripsi</p>
						</div>
						<div class="col-sm-8">:
							<?php echo $banding->deskripsi; ?>
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
		var e = document.getElementById("ban");
		var strUser = e.value;
		window.location.href = strUser; 
	}
</script>
