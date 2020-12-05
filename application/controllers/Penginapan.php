<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penginapan extends CI_Controller {

	public $fasilitas;

	public function __construct()
	{
		parent::__construct();
		//Load Dependencies
		$this->load->library(array("googlemaps"));
		$this->load->model("m_penginapan");
		$this->load->model('m_kategori');
		$this->load->model('m_setting');
		$this->fasilitas = array('Wifi','AC','Toilet','Mushola','Tribun','Loker Barang','Lapangan','Kantin');
	}

	// List all your items
	public function index()
	{
		$penginapan = $this->m_penginapan->lists();
		$map=$this->googlemaps->create_map();
		$setting=$this->m_setting->list_setting();
        $data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
						'title2' => 'Data Tempat Olahraga',
                        'isi'	=>	'admin/penginapan/v_lists',					
						'penginapan'	=>	$penginapan,
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
		$this->form_validation->set_rules('nama_penginapan', 'Nama Penginapan','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('alamat', 'Alamat','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('no_telpon', 'No Telpon','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('latitude', 'Latitude','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('longitude', 'Longitude','required',
        array('required' => '%s Harus Diisi'));

        if ($this->form_validation->run()) {
        	$config['upload_path']   = './assets/gambar_penginapan/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = 1500;
            $config['max_width']     = 5000;
            $config['max_height']    = 5000;
            $this->upload->initialize($config);
            if(! $this->upload->do_upload('gambar_penginapan')) {
        		$data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
										'title2' 		=>	'Add Data Tempat Olahraga',
										'kategori'		=>	$this->m_kategori->lists(),
										'error_upload'	=>	$this->upload->display_errors(),
										'map'		=>	$map,
										'isi'	 		=>	'admin/penginapan/v_add'
									);
				$this->load->view('admin/layout/v_wrapper', $data, FALSE);
				
			}else{
				$upload_data        		= array('uploads' =>$this->upload->data());
				$config['image_library']  	= 'gd2';
				$config['source_image']   	= './assets/gambar_penginapan/'.$upload_data['uploads']['file_name'];
				//$config['new_image']     	= './assets/gambar_penginapan/thumbs/'.$upload_data['uploads']['file_name'];
				//$config['create_thumb'] 	= TRUE;
				//$config['maintain_ratio'] 	= TRUE;
				//$config['width']         	= 200;
				//$config['height']       	= 200;
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$i = $this->input;
	            $data = array(
	            				'nama_penginapan'	=> $i->post('nama_penginapan'),
	            				'id_kategori'		=> $i->post('id_kategori'),
	            				'alamat'			=> $i->post('alamat'),
	                			'no_telpon'			=> $i->post('no_telpon'),
	                			'latitude'			=> $i->post('latitude'),
	                			'longitude'			=> $i->post('longitude'),
	                			'harga'				=> $i->post('harga'),
	                			'fasilitas'			=> @implode(", ", @$i->post('fasilitas')),
	                    		'gambar_penginapan'	=> $upload_data['uploads']['file_name'],                    		
	                    		'deskripsi'			=> $i->post('deskripsi'),
	                        	);
	            $this->m_penginapan->add($data);
	            $this->session->set_flashdata('sukses',' Data Tempat Olahraga Berhasil Ditambahkan !');
	            redirect('penginapan','refresh');
		}
	}

        $data = array('title' => 'GIS Sarana Olahraga '.$setting->nama_wilayah,
									'title2' 		=>	'Add Data Tempat Olahraga',
									'kategori'		=>	$this->m_kategori->lists(),
									'map'		=>	$map,
									'isi'	 		=>	'admin/penginapan/v_add'
								);
		$this->load->view('admin/layout/v_wrapper', $data, FALSE);
	}


	//Delete one item
	public function delete($id_penginapan)
	{
		//hapus gambar
		
		$penginapan=$this->m_penginapan->detail($id_penginapan);
		if ($penginapan->icon != "") {
			unlink('./assets/gambar_penginapan/'.$penginapan->gambar_penginapan);
		}
		//===========================
		$data = array('id_penginapan' => $id_penginapan);
		$this->m_penginapan->delete($data);
		$this->session->set_flashdata('sukses','Data Berhasil Dihapus');
		redirect('penginapan','refresh');
	}

	//edit
	public function edit($id_penginapan)
	{
		$setting=$this->m_setting->list_setting();
		$penginapan=$this->m_penginapan->detail($id_penginapan);
		$this->load->library('googlemaps');
        $config['center'] = "$setting->latitude, $setting->longitude";
        $config['zoom'] = "$setting->zoom";
        $this->googlemaps->initialize($config);

        $marker['position'] = "$setting->latitude, $setting->longitude";
        $marker['draggable'] = true;
        $marker['ondragend'] = 'setMapToForm(event.latLng.lat(), event.latLng.lng());';
        $this->googlemaps->add_marker($marker);

		$map=$this->googlemaps->create_map();
		$this->form_validation->set_rules('nama_penginapan', 'Nama Penginapan','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('alamat', 'Alamat','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('no_telpon', 'No Telpon','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('latitude', 'Latitude','required',
        array('required' => '%s Harus Diisi'));
        $this->form_validation->set_rules('longitude', 'Longitude','required',
        array('required' => '%s Harus Diisi'));

        if ($this->form_validation->run()) {
        	$config['upload_path']   = './assets/gambar_penginapan/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['max_size']      = 1500;
            $config['max_width']     = 5000;
            $config['max_height']    = 5000;
            $this->upload->initialize($config);
            if(! $this->upload->do_upload('gambar_penginapan')) {
        		$data = array('title' => 'GIS Sarana Olahraga '.$setting->nama_wilayah,
										'title2' 		=>	'Edit Data Fitness',
										'kategori'		=>	$this->m_kategori->lists(),
										'error_upload'	=>	$this->upload->display_errors(),
										'map'			=>	$map,
										'penginapan'	=>  $penginapan,
										'isi'	 		=>	'admin/penginapan/v_edit'
									);
				$this->load->view('admin/layout/v_wrapper', $data, FALSE);
				
			}else{
				$upload_data        		= array('uploads' =>$this->upload->data());
				$config['image_library']  	= 'gd2';
				$config['source_image']   	= './assets/gambar_penginapan/'.$upload_data['uploads']['file_name'];
				//$config['new_image']     	= './assets/gambar_penginapan/thumbs/'.$upload_data['uploads']['file_name'];
				//$config['create_thumb'] 	= TRUE;
				//$config['maintain_ratio'] 	= TRUE;
				//$config['width']         	= 200;
				//$config['height']       	= 200;
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$i = $this->input;
	            $data = array(
	            				'id_penginapan'		=>$id_penginapan,
	            				'nama_penginapan'	=> $i->post('nama_penginapan'),
	            				'id_kategori'		=> $i->post('id_kategori'),
	            				'alamat'			=> $i->post('alamat'),
	                			'no_telpon'			=> $i->post('no_telpon'),
	                			'latitude'			=> $i->post('latitude'),
	                			'longitude'			=> $i->post('longitude'),
	                			'harga'				=> $i->post('harga'),
	                			'fasilitas'			=> @implode(", ", @$i->post('fasilitas')),
	                    		'gambar_penginapan'	=> $upload_data['uploads']['file_name'],                    		
	                    		'deskripsi'			=> $i->post('deskripsi'),
	                        	);
	            $this->m_penginapan->edit($data);
	            $this->session->set_flashdata('sukses',' Data Tempat Olahraga Berhasil DiEdit !');
	            redirect('penginapan','refresh');
		}
	}

        $data = array('title' => 'GIS Sarana Olahraga '.$setting->nama_wilayah,
									'title2' 		=>	'Edit Data Fitness',
									'kategori'		=>	$this->m_kategori->lists(),
									'map'		=>	$map,
									'penginapan'	=>  $penginapan,
									'isi'	 		=>	'admin/penginapan/v_edit'
								);
		$this->load->view('admin/layout/v_wrapper', $data, FALSE);
	}


}

/* End of file Penginapan.php */
/* Location: ./application/controllers/Penginapan.php */
