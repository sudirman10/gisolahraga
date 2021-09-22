<br>
<div class="container">    
  <div class="row">
    <div class="col-sm-5">
      <div class="panel panel-info">
        <div class="panel-heading">Data Tempat Olahraga</div>
        <div class="panel-body">

          <div class="form-group">
            <div class="col-sm-4">
              Nama      :
            </div>
            <div class="col-sm-8"> 
              <?php echo $olahraga->nama_olahraga; ?>
            </div>            
          </div>

          <div class="form-group">
            <div class="col-sm-4"> 
              <p class="control-label">Kategori :</p>
            </div>
            <div class="col-sm-8">
              <?php echo $olahraga->nama_kategori; ?>
            </div>            
          </div>

          <div class="form-group">
            <div class="col-sm-4"> 
              <p class="control-label">Alamat :</p>
            </div>
            <div class="col-sm-8"> 
              <?php echo $olahraga->alamat; ?>
            </div>            
          </div>

          <div class="form-group">
            <div class="col-sm-4">
              <p class="control-label">No Telpon :</p>
            </div>
            <div class="col-sm-8"> 
              <?php echo $olahraga->no_telpon; ?>
            </div>            
          </div>

					<div class="form-group">
            <div class="col-sm-4">
              <p class="control-label">Jam Buka :</p>
            </div>
            <div class="col-sm-8"> 
              <?php echo $olahraga->jam_buka; ?>
            </div>            
          </div>

          <div class="form-group">
            <div class="col-sm-4">
              <p class="control-label">Latitude :</p>
            </div>
            <div class="col-sm-8">  
              <?php echo $olahraga->latitude; ?>
            </div>            
          </div>

          <div class="form-group">
            <div class="col-sm-4">
              <p class="control-label">Longitude :</p>
            </div>
            <div class="col-sm-8">  
              <?php echo $olahraga->longitude; ?>
            </div>            
          </div>

          <div class="form-group">
            <div class="col-sm-4">
              <p class="control-label">Harga :</p>
            </div>
            <div class="col-sm-8"> Rp. 
              <?php echo number_format($olahraga->harga); ?>
            </div>            
          </div>

          <div class="form-group">
            <div class="col-sm-4">
              <p class="control-label">Fasilitas :</p>
            </div>
            <div class="col-sm-8"> 
              <?php echo $olahraga->fasilitas; ?>
            </div>            
          </div>  

          <div class="form-group">
            <div class="col-sm-4">
              <p class="control-label">Deskripsi :</p>
            </div>
            <div class="col-sm-8"> 
              <?php echo $olahraga->deskripsi; ?>
            </div>            
          </div>        
          
               
          
        </div>
        <div class="panel-footer"></div>
      </div>
    </div>
    <div class="col-sm-7">
      <div class="panel panel-info">
        <div class="panel-heading">Galeri</div>
        <div class="panel-body">
          <div class="col-sm-12">
            <?php foreach ($foto as $key => $value) { ?>
              <div class="col-sm-3 text-center" >            
                <img border="12px" width="150px" height="150px" src="<?php echo base_url('assets/foto_olahraga/'.$value->foto_olahraga); ?>" >               
                <h5><?php echo $value->ket_foto; ?></h5>
             </div>
        <?php } ?>
        </div>

        </div>
        <div class="panel-footer"></div>
      </div>
    </div>

     <div class="col-sm-12">
      <div class="panel panel-info">
        <div class="panel-heading">Lokasi Tempat Olahraga</div>
        <div class="panel-body">
          
        <?php
          echo $map['html']; 
        ?>

        </div>
        <div class="panel-footer"></div>
      </div>
    </div>
  </div>
</div>
