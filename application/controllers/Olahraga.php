<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Olahraga extends CI_Controller {

	public $fasilitas;

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		$this->load->library(array("googlemaps"));
		$this->load->model("m_olahraga");
		$this->load->model('m_kategori');
		$this->load->model('m_setting');
		$this->fasilitas = array('Wifi','AC','Toilet','Mushola','Tribun','Loker Barang','Lapangan','Kantin','Parkiran','Kipas Angin');
	}

	// List all your items
	public function index()
	{
		$olahraga = $this->m_olahraga->lists();
		$map=$this->googlemaps->create_map();
		$setting=$this->m_setting->list_setting();
        $data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
						'title2' => 'Data Tempat Olahraga',
                        'isi'	=>	'admin/olahraga/v_lists',					
						'olahraga'	=>	$olahraga,
						'map'		=>	$map
					);
		$this->load->view('admin/layout/v_wrapper', $data,false);
	}

	public function add()
	{
		$setting=$this->m_setting->list_setting();
		$this->load->library('googlemaps');
        $config['center'] = "$setting->latitude, $setting->longitude";
        $config['zoom'] = "$setting->zoom";
        $this->googlemaps->initialize($config);

        $marker['position'] = "$setting->latitude, $setting->longitude";
        $marker['draggable'] = true;
        $marker['ondragend'] = 'setMapToForm(event.latLng.lat(), event.latLng.lng());';
        $this->googlemaps->add_marker($marker);

		$map=$this->googlemaps->create_map();
		$this->form_validation->set_rules('nama_olahraga', 'Nama Olahraga','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('alamat', 'Alamat','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('no_telpon', 'No Telpon','required',
        array('required' => '%s Harus Diisi'));
		$this->form_validation->set_rules('jam_buka', 'Jam Buka','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('latitude', 'Latitude','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('longitude', 'Longitude','required',
        array('required' => '%s Harus Diisi'));

        if ($this->form_validation->run()) {
        	$config['upload_path']   = './assets/gambar_olahraga/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = 1500;
            $config['max_width']     = 5000;
            $config['max_height']    = 5000;
            $this->upload->initialize($config);
            if(! $this->upload->do_upload('gambar_olahraga')) {
        		$data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
										'title2' 		=>	'Add Data Tempat Olahraga',
										'kategori'		=>	$this->m_kategori->lists(),
										'error_upload'	=>	$this->upload->display_errors(),
										'map'		=>	$map,
										'isi'	 		=>	'admin/olahraga/v_add'
									);
				$this->load->view('admin/layout/v_wrapper', $data, FALSE);
				
			}else{
				$upload_data        		= array('uploads' =>$this->upload->data());
				$config['image_library']  	= 'gd2';
				$config['source_image']   	= './assets/gambar_olahraga/'.$upload_data['uploads']['file_name'];
				//$config['new_image']     	= './assets/gambar_olahraga/thumbs/'.$upload_data['uploads']['file_name'];
				//$config['create_thumb'] 	= TRUE;
				//$config['maintain_ratio'] 	= TRUE;
				//$config['width']         	= 200;
				//$config['height']       	= 200;
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$i = $this->input;
	            $data = array(
	            				'nama_olahraga'	=> $i->post('nama_olahraga'),
	            				'id_kategori'		=> $i->post('id_kategori'),
	            				'alamat'			=> $i->post('alamat'),
	                			'no_telpon'			=> $i->post('no_telpon'),
								'jam_buka'			=> $i->post('jam_buka'),
	                			'latitude'			=> $i->post('latitude'),
	                			'longitude'			=> $i->post('longitude'),
	                			'harga'				=> $i->post('harga'),
	                			'fasilitas'			=> @implode(", ", @$i->post('fasilitas')),
	                    		'gambar_olahraga'	=> $upload_data['uploads']['file_name'],                    		
	                    		'deskripsi'			=> $i->post('deskripsi'),
	                        	);
	            $this->m_olahraga->add($data);
	            $this->session->set_flashdata('sukses',' Data Tempat Olahraga Berhasil Ditambahkan !');
	            redirect('olahraga','refresh');
		}
	}

        $data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
									'title2' 		=>	'Add Data Tempat Olahraga',
									'kategori'		=>	$this->m_kategori->lists(),
									'map'		=>	$map,
									'isi'	 		=>	'admin/olahraga/v_add'
								);
		$this->load->view('admin/layout/v_wrapper', $data, FALSE);
	}


	//Delete one item
	public function delete($id_olahraga)
	{
		//hapus gambar
		$olahraga=$this->m_olahraga->detail($id_olahraga);
		if ($olahraga->icon != "") {
			unlink('./assets/gambar_olahraga/'.$olahraga->gambar_olahraga);
		}
		//===========================
		$data = array('id_olahraga' => $id_olahraga);
		$this->m_olahraga->delete($data);
		$this->session->set_flashdata('sukses','Data Berhasil Dihapus');
		redirect('olahraga','refresh');
	}

	//edit
	public function edit($id_olahraga)
	{
		$setting=$this->m_setting->list_setting();
		$olahraga=$this->m_olahraga->detail($id_olahraga);
		$this->load->library('googlemaps');
        $config['center'] = "$setting->latitude, $setting->longitude";
        $config['zoom'] = "$setting->zoom";
        $this->googlemaps->initialize($config);

        $marker['position'] = "$setting->latitude, $setting->longitude";
        $marker['draggable'] = true;
        $marker['ondragend'] = 'setMapToForm(event.latLng.lat(), event.latLng.lng());';
        $this->googlemaps->add_marker($marker);

		$map=$this->googlemaps->create_map();
		$this->form_validation->set_rules('nama_olahraga', 'Nama Olahraga','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('alamat', 'Alamat','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('no_telpon', 'No Telpon','required',
        array('required' => '%s Harus Diisi'));
		$this->form_validation->set_rules('jam_buka', 'Jam Buka','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('latitude', 'Latitude','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('longitude', 'Longitude','required',
        array('required' => '%s Harus Diisi'));

        if ($this->form_validation->run()) {
        	$config['upload_path']   = './assets/gambar_olahraga/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = 1500;
            $config['max_width']     = 5000;
            $config['max_height']    = 5000;
            $this->upload->initialize($config);
            if(! $this->upload->do_upload('gambar_olahraga')) {
        		$data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
										'title2' 		=>	'Edit Data Tempat Olahraga',
										'kategori'		=>	$this->m_kategori->lists(),
										'error_upload'	=>	$this->upload->display_errors(),
										'map'			=>	$map,
										'olahraga'	=>  $olahraga,
										'isi'	 		=>	'admin/olahraga/v_edit'
									);
				$this->load->view('admin/layout/v_wrapper', $data, FALSE);
				
			}else{
				$upload_data        		= array('uploads' =>$this->upload->data());
				$config['image_library']  	= 'gd2';
				$config['source_image']   	= './assets/gambar_olahraga/'.$upload_data['uploads']['file_name'];
				//$config['new_image']     	= './assets/gambar_olahraga/thumbs/'.$upload_data['uploads']['file_name'];
				//$config['create_thumb'] 	= TRUE;
				//$config['maintain_ratio'] 	= TRUE;
				//$config['width']         	= 200;
				//$config['height']       	= 200;
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$i = $this->input;
	            $data = array(
	            				'id_olahraga'		=>$id_olahraga,
	            				'nama_olahraga'	=> $i->post('nama_olahraga'),
	            				'id_kategori'		=> $i->post('id_kategori'),
	            				'alamat'			=> $i->post('alamat'),
	                			'no_telpon'			=> $i->post('no_telpon'),
								'jam_buka'			=> $i->post('jam_buka'),
	                			'latitude'			=> $i->post('latitude'),
	                			'longitude'			=> $i->post('longitude'),
	                			'harga'				=> $i->post('harga'),
	                			'fasilitas'			=> @implode(", ", @$i->post('fasilitas')),
	                    		'gambar_olahraga'	=> $upload_data['uploads']['file_name'],                    		
	                    		'deskripsi'			=> $i->post('deskripsi')
	                        	);
	            $this->m_olahraga->edit($data);
	            $this->session->set_flashdata('sukses',' Data Tempat Olahraga Berhasil DiEdit !');
	            redirect('olahraga','refresh');
		}
	}

        $data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
									'title2' 		=>	'Edit Data Tempat Olahraga',
									'kategori'		=>	$this->m_kategori->lists(),
									'map'		=>	$map,
									'olahraga'	=>  $olahraga,
									'isi'	 		=>	'admin/olahraga/v_edit'
								);
		$this->load->view('admin/layout/v_wrapper', $data, FALSE);
	}


}

/* End of file Olahraga.php */
/* Location: ./application/controllers/Olahraga.php */
