<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->library(array("googlemaps"));
		$this->load->model('m_setting');
		$this->load->model('m_gallery');

	}

	public function index()
	{
		$setting=$this->m_setting->list_setting();
		$gallery=$this->m_gallery->lists();
        $data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
						'title2' => 'Data Gallery',
                        'isi'	=>	'admin/gallery/v_lists',
						'gallery'	=>	$gallery,
						'map'		=>	$this->googlemaps->create_map()
					);
		$this->load->view('admin/layout/v_wrapper', $data,false);	
	}

	public function addfoto($id_olahraga)
	{
		$this->form_validation->set_rules('ket_foto', 'Keterangan Foto','required',
        array('required' => '%s Harus Diisi'));

        if ($this->form_validation->run()) {
        	$config['upload_path']   = './assets/foto_olahraga/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = 1500;
            $config['max_width']     = 5000;
            $config['max_height']    = 5000;
            $this->upload->initialize($config);
            if(! $this->upload->do_upload('foto_olahraga')) {
					$olahraga=$this->m_gallery->detail($id_olahraga);
					$foto=$this->m_gallery->foto($id_olahraga);
					$setting=$this->m_setting->list_setting();
					$data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
									'title2' => 'Add Foto : '.$olahraga->nama_olahraga,
			                        'isi'	=>	'admin/gallery/v_add',
			                        'error_upload'	=>	$this->upload->display_errors(),
									'olahraga'	=>	$olahraga,
									'foto'	=>	$foto,
									'map'		=>	$this->googlemaps->create_map()
								);
					$this->load->view('admin/layout/v_wrapper', $data,false);
			}else{
		$upload_data        		= array('uploads' =>$this->upload->data());
		$config['image_library']  	= 'gd2';
		$config['source_image']   	= './assets/foto_olahraga/'.$upload_data['uploads']['file_name'];

		$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$i = $this->input;
	            $data = array(
	            				'id_olahraga'=> $id_olahraga,
	            				'ket_foto'	=> $i->post('ket_foto'),
	                    		'foto_olahraga'	=> $upload_data['uploads']['file_name'],
	                        	);
	            $this->m_gallery->add($data);
	            $this->session->set_flashdata('sukses',' Data Kategori Berhasil Ditambahkan !');
	            redirect('gallery/addfoto/'.$id_olahraga,'refresh');
		}
	}

		$olahraga=$this->m_gallery->detail($id_olahraga);
					$olahraga=$this->m_gallery->detail($id_olahraga);
					$foto=$this->m_gallery->foto($id_olahraga);
					$setting=$this->m_setting->list_setting();
					$data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
									'title2' => 'Add Foto : '.$olahraga->nama_olahraga,
			                        'isi'	=>	'admin/gallery/v_add',			                     
									'olahraga'	=>	$olahraga,
									'foto'	=>	$foto,
									'map'		=>	$this->googlemaps->create_map()
								);
					$this->load->view('admin/layout/v_wrapper', $data,false);

	}


	//Delete one item
	public function delete($id_olahraga,$id_foto)
	{
		//hapus gambar
		$olahraga=$this->m_gallery->detail($id_olahraga);
		$foto=$this->m_gallery->detailfoto($id_foto);
		if ($foto->foto_olahraga != "") {
			unlink('./assets/foto_olahraga/'.$foto->foto_olahraga);
		}
		//===========================
		$data = array('id_foto' => $id_foto);
		$this->m_gallery->delete($data);
		$this->session->set_flashdata('sukses','Foto Berhasil Dihapus');
		redirect('gallery/addfoto/'.$id_olahraga,'refresh');
	}

}

/* End of file Gallery.php */
/* Location: ./application/controllers/Gallery.php */
