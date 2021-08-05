<div class="panel panel-info">
<div class="panel-heading">
	 <a href="<?php echo base_url('olahraga/add'); ?>" class="btn btn-primary btn-xs"><i class="fa fa-plus"></i> Add Data</a>

</div>
<div class="panel-body">

	 <?php 
              // notifikasi
              if ($this->session->flashdata('sukses')) {
              echo '<div class="alert alert-success alert-dismissible"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><i class="icon fa fa-check"></i>';
              echo $this->session->flashdata('sukses');
              echo '</div>';
              }
              ?>

		<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
			<thead>
				<tr>
					<th class="text-center" width="50px">No</th>
					<th class="text-center">Nama Tempat Olahraga</th>
					<th class="text-center">Kategori</th>
					<th class="text-center">Jam Buka</th>
					<th class="text-center">Harga</th>
					<th class="text-center" width="100px">Action</th>
				</tr>
			</thead>
			<tbody>
				<?php $no=1 ; foreach($olahraga as $value){ ?>
				<tr>
					<td class="text-center"><?php echo $no++; ?></td>
					<td><?php echo $value->nama_olahraga; ?></td>
					<td><?php echo $value->nama_kategori; ?></td>
					<td><?php echo $value->jam_buka; ?></td>
					<td><?php echo number_format($value->harga); ?></td>
					<td width="130px" class="text-center">
						<a href="<?php echo base_url('olahraga/edit/'.$value->id_olahraga); ?>" class="btn btn-success btn-xs"><i class="fa fa-pencil"></i> Edit</a>
						<a href="<?php echo base_url('olahraga/delete/'.$value->id_olahraga); ?>" type="button" class="btn  btn-danger btn-xs" type="button" class="btn  btn-danger btn-sm" onclick="return confirm('Yakin Ingin Menghapus Data ini.?')"><i class="fa fa-trash"></i> Delete</a>
					</td>
				</tr>
			<?php } ?>
			</tbody>
		</table>

</div>
</div>
