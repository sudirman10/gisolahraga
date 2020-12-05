<div class="col-sm-5">
  <div class="panel panel-info">
    <div class="panel-heading">Input Data Sarana Olahraga</div>
    <div class="panel-body">

<?php

//notifikasi error
echo validation_errors('<div class="alert alert-warning alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>','</div>');
//error upload
if (isset($error_upload)){
    echo '<div class="alert alert-danger"><button type="button" class="close" data-dismiss="alert"><i class="fa fa-times"></i>
        </button><i class="fa fa-bullhorn"></i>'.$error_upload.'</div>';
}
 

$atribut='class="form-horizontal"';
echo form_open_multipart('penginapan/edit/'.$penginapan->id_penginapan,$atribut);
 ?>


    	<div class="form-group">
        <div class="col-sm-12">
            <label class="control-label">Nama Tempat olahraga</label>
            <input name="nama_penginapan" type="text" class="form-control" placeholder="Nama Penginapan" value="<?php echo $penginapan->nama_penginapan; ?>" required>
        </div>
    	</div>

    	<div class="form-group">
        <div class="col-md-12">
            <label class="control-label">Kategori</label>
            <select name="id_kategori" class="form-control">
                <?php foreach ($kategori as $value) { ?>
                        <option value="<?php echo $value->id_kategori;?>">
                            <?php echo $value->nama_kategori; ?>
                        </option>
                <?php } ?>
            </select>
        </div>
    	</div>

    	<div class="form-group">
        <div class="col-sm-12">
            <label class="control-label">Alamat</label>
            <input name="alamat" type="text" class="form-control" placeholder="Alamat" value="<?php echo $penginapan->alamat; ?>" required>
        </div>
    	</div>

    	<div class="form-group">
        <div class="col-sm-12">
            <label class="control-label">No Telpon</label>
            <input name="no_telpon" type="text" class="form-control" placeholder="No Telpon" value="<?php echo $penginapan->no_telpon; ?>" required>
        </div>
    	</div>  	

        <div class="form-group">
        <div class="col-sm-12">
        	<label class="control-label">Lokasi Tempat Olahraga (Koordinat)</label>
        </div>
        <div class="col-sm-6">
            <input name="latitude" type="text" class="form-control" placeholder="Latitude" value="<?php echo $penginapan->latitude; ?>" required>
        </div>
        <div class="col-sm-6">
            <input name="longitude" type="text" class="form-control" placeholder="Longitude" value="<?php echo $penginapan->longitude; ?>" required>
        </div>
    	</div>     

        <div class="form-group">
        <div class="col-sm-12">
            <label class="control-label">Harga</label>
            <input name="harga" type="text" class="form-control" placeholder="Harga" value="<?php echo $penginapan->harga; ?>" required>
        </div>
    	</div> 

        <div class="form-group">
    	<div class="col-sm-12">
    		<div class="col-sm-12">
    			<label class="control-label">Fasilitas</label>
    		</div>
    		<div class="col-sm-12">
                <?php $fasilitas = @explode(', ', $penginapan->fasilitas); ?>
			<?php foreach($this->fasilitas as $value) : ?>
		    <div class="checkbox checkbox-info checkbox-inline">
		        <input type="checkbox" value="<?php echo $value; ?>" name="fasilitas[]" <?php if(@in_array($value,$fasilitas)) echo 'checked'; ?>>
		        <label> <?php echo $value; ?></label>
		    </div>
		    <?php endforeach; ?>
			</div>
    	</div>
  		</div>

  		<div class="form-group">
  		<div class="col-sm-12">
  			<label class="control-label">Gambar Tempat Olahraga</label>
        	<input type="file" name="gambar_penginapan" class="form-control" required>
        </div>
    	</div>

  		<div class="form-group">
  		<div class="col-sm-12">
            <label class="control-label">Deskripsi</label>
            <textarea name="deskripsi" type="text" class="form-control" placeholder="Deskripsi" value="<?php echo set_value('deskripsi'); ?>" required><?php echo $penginapan->deskripsi; ?></textarea>
        </div>
        </div>

        <div class="form-group">
        	<div class="col-sm-6">
        		<button type="submit" class="form-control btn btn-primary"><i class="fa fa-save"></i> Simpan</button>
        	</div>
            <div class="col-sm-6">
            	<button type="reset" class="form-control btn btn-warning"><i class="fa fa-times"></i> Reset</button>
            </div>
        </div>


<?php echo form_close(); ?>

    </div>
    <div class="panel-footer"></div>
  </div>
</div>

<div class="col-sm-7">
  <div class="panel panel-success">
    <div class="panel-heading">Pilih Lokasi Fitness</div>
    <div class="panel-body">
      
    <?php echo $map['html']; ?>

    </div>
    <div class="panel-footer"></div>
  </div>
</div>
