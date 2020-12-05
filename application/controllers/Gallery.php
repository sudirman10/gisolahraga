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
        $data = array('title' => 'GIS Sarana Olahraga '.$setting->nama_wilayah,
						'title2' => 'Data Gallery',
                        'isi'	=>	'admin/gallery/v_lists',
						'gallery'	=>	$gallery,
						'map'		=>	$this->googlemaps->create_map()
					);
		$this->load->view('admin/layout/v_wrapper', $data,false);	
	}

	public function addfoto($id_penginapan)
	{
		$this->form_validation->set_rules('ket_foto', 'Keterangan Foto','required',
        array('required' => '%s Harus Diisi'));

        if ($this->form_validation->run()) {
        	$config['upload_path']   = './assets/foto_penginapan/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = 1500;
            $config['max_width']     = 5000;
            $config['max_height']    = 5000;
            $this->upload->initialize($config);
            if(! $this->upload->do_upload('foto_penginapan')) {
					$penginapan=$this->m_gallery->detail($id_penginapan);
					$foto=$this->m_gallery->foto($id_penginapan);
					$setting=$this->m_setting->list_setting();
					$data = array('title' => 'GIS Sarana Olahraga '.$setting->nama_wilayah,
									'title2' => 'Add Foto : '.$penginapan->nama_penginapan,
			                        'isi'	=>	'admin/gallery/v_add',
			                        'error_upload'	=>	$this->upload->display_errors(),
									'penginapan'	=>	$penginapan,
									'foto'	=>	$foto,
									'map'		=>	$this->googlemaps->create_map()
								);
					$this->load->view('admin/layout/v_wrapper', $data,false);
			}else{
		$upload_data        		= array('uploads' =>$this->upload->data());
		$config['image_library']  	= 'gd2';
		$config['source_image']   	= './assets/foto_penginapan/'.$upload_data['uploads']['file_name'];

		$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$i = $this->input;
	            $data = array(
	            				'id_penginapan'=> $id_penginapan,
	            				'ket_foto'	=> $i->post('ket_foto'),
	                    		'foto_penginapan'	=> $upload_data['uploads']['file_name'],
	                        	);
	            $this->m_gallery->add($data);
	            $this->session->set_flashdata('sukses',' Data Kategori Berhasil Ditambahkan !');
	            redirect('gallery/addfoto/'.$id_penginapan,'refresh');
		}
	}

		$penginapan=$this->m_gallery->detail($id_penginapan);
					$penginapan=$this->m_gallery->detail($id_penginapan);
					$foto=$this->m_gallery->foto($id_penginapan);
					$setting=$this->m_setting->list_setting();
					$data = array('title' => 'GIS Sarana Olahraga '.$setting->nama_wilayah,
									'title2' => 'Add Foto : '.$penginapan->nama_penginapan,
			                        'isi'	=>	'admin/gallery/v_add',			                     
									'penginapan'	=>	$penginapan,
									'foto'	=>	$foto,
									'map'		=>	$this->googlemaps->create_map()
								);
					$this->load->view('admin/layout/v_wrapper', $data,false);

	}


	//Delete one item
	public function delete($id_penginapan,$id_foto)
	{
		//hapus gambar
		$penginapan=$this->m_gallery->detail($id_penginapan);
		$foto=$this->m_gallery->detailfoto($id_foto);
		if ($foto->foto_penginapan != "") {
			unlink('./assets/foto_penginapan/'.$foto->foto_penginapan);
		}
		//===========================
		$data = array('id_foto' => $id_foto);
		$this->m_gallery->delete($data);
		$this->session->set_flashdata('sukses','Foto Berhasil Dihapus');
		redirect('gallery/addfoto/'.$id_penginapan,'refresh');
	}

}

/* End of file Gallery.php */
/* Location: ./application/controllers/Gallery.php */
