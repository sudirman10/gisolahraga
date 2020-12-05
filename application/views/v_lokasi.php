<br>
<div class="container">    
  <div class="row">
    <div class="col-sm-5">
      <div class="panel panel-info">
        <div class="panel-heading">Data Tempat Sarana Olahraga</div>
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
    <div class="col-sm-7">
      <div class="panel panel-info">
        <div class="panel-heading">Galleri</div>
        <div class="panel-body">
          <div class="col-sm-12">
            <?php foreach ($foto as $key => $value) { ?>
              <div class="col-sm-3 text-center">            
                <img border="12px" width="150px" height="150px"  src="<?php echo base_url('assets/foto_penginapan/'.$value->foto_penginapan); ?>">               
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
        <div class="panel-heading">Lokasi Tempat Fitness</div>
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
