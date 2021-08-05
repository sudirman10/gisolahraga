<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->library(array("googlemaps"));
		$this->load->model('m_olahraga');
		$this->load->model('m_setting');
		$this->load->model('m_gallery');
		$this->load->model('m_polyline');
		$this->load->library('guzzle');
	}

	public function index()
	{
		$setting = $this->m_setting->list_setting();
		//tampilan awal view map
		$this->load->library("googlemaps");
		if (isset($_GET['ownlatitude']) && isset($_GET['ownlongitude'])) {
			$config['center'] = $_GET['ownlatitude'] . ", " . $_GET['ownlongitude'];
			$circle = array();
			$circle['center'] = $_GET['ownlatitude'] . ", " . $_GET['ownlongitude'];
			$circle['radius'] = 500;
			$marker['animation'] = 'BOUNCE';
			$marker['position'] =  $_GET['ownlatitude'] . ", " . $_GET['ownlongitude'];
			$marker['icon'] = base_url('assets/icon/position.png');
		    $this->googlemaps->add_marker($marker);
			$this->googlemaps->add_circle($circle);
		} else {
			$config['center'] = "$setting->latitude,$setting->longitude";
		}

		if (isset($_GET['ownlatitude']) && isset($_GET['ownlongitude']) && isset($_GET['tujuanlatitude']) && isset($_GET['tujuanlongitude'])) {
	
			$config['directions'] = TRUE;
			$config['directionsMode'] = "DRIVING";
			$config['directionsStart'] = $_GET['ownlatitude'].','.$_GET['ownlongitude'];
			$config['directionsEnd'] = $_GET['tujuanlatitude'].','.$_GET['tujuanlongitude'];
			$config['directionsDivID'] = 'detail';
		}
		//filter tempat olahraga berdasarkan kategori
		$kategori = $this->db->query("SELECT * from tbl_kategori");
			//return $query;
		if (isset($_GET['kategori']) ) {

			$this->db->select('*');
			$this->db->from('tbl_olahraga');
			$this->db->join('tbl_kategori', 'tbl_kategori.id_kategori = tbl_olahraga.id_kategori', 'left');
			$this->db->where('tbl_olahraga.id_kategori', $_GET['kategori']);
			$query=$this->db->get();
			$olahrag = $query->result();
			$kategori = $this->db->query("SELECT * from tbl_kategori");
			//return $query;
			foreach($olahrag as $key => $value) ://perulangan data
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['position'] = "$value->latitude, $value->longitude";
				$marker['infowindow_content'] = '<div class="media" style="width:500px;">';
				$marker['infowindow_content'] .= '<div class="media-left">';
				$marker['infowindow_content'] .= '<img src="'.base_url("assets/gambar_olahraga/{$value->gambar_olahraga}").'" class="media-object" style="width:150px">';
				$marker['infowindow_content'] .= '</div>';
				$marker['infowindow_content'] .= '<div class="media-body">';
				$marker['infowindow_content'] .= '<h4 class="media-heading">'.$value->nama_olahraga.'</h4>';
				$marker['infowindow_content'] .= '<p>Alamat : '.$value->alamat.'</p>';
				// $marker['infowindow_content'] .= "<p>Jam Buka : ".$value->jam_buka."</p>";
				$marker['infowindow_content'] .= '<p>No Telpon : '.$value->no_telpon.'</p>';
				$marker['infowindow_content'] .= '<p>Harga : Rp.'.number_format($value->harga).'</p><br>';
				$marker['infowindow_content'] .= '<a href="'.base_url('home/lokasi/'.$value->id_olahraga).'" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Detail</a>';
				$marker['infowindow_content'] .= '<button class="btn btn-success btn-sm" onclick="makeRute('.$value->latitude.','.$value->longitude.')"><i class="fa fa-location-arrow"></i> Rute</button>';
				$marker['infowindow_content'] .= '<a href="'.base_url('bandingkan/'.$value->id_olahraga.'/0').'" class="btn btn-success btn-sm"><i class="fa fa-exchange"></i> Bandingkan</a>';
				$marker['infowindow_content'] .= '</div>';
				$marker['infowindow_content'] .= '</div>';
				$marker['icon'] = base_url('assets/icon/'.$value->icon);
				$this->googlemaps->add_marker($marker);
				endforeach;
				//end perulangan data
				//tampilan data marker map
				$this->googlemaps->initialize($config);
				//menampilkan maker ke map
				$data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
					'title2'=> $setting->nama_wilayah,
								'isi'	=>	'v_home',
								'kategori' => $kategori,
								'map' =>  $this->googlemaps->create_map()
			);
				$this->load->view('layout/v_wrapper', $data, FALSE);
		}else{
			$config['zoom'] = "$setting->zoom";
		    $this->googlemaps->initialize($config);
		    //tampil semua data olahraga dari database 
		    $olahraga = $this->m_olahraga->lists();
		    foreach($olahraga as $key => $value) ://perulangan data
		    $marker = array();
		    $marker['animation'] = 'DROP';
		    $marker['position'] = "$value->latitude, $value->longitude";
		    $marker['infowindow_content'] = '<div class="media" style="width:500px;">';
		    $marker['infowindow_content'] .= '<div class="media-left">';
		    $marker['infowindow_content'] .= '<img src="'.base_url("assets/gambar_olahraga/{$value->gambar_olahraga}").'" class="media-object" style="width:150px">';
		    $marker['infowindow_content'] .= '</div>';
		    $marker['infowindow_content'] .= '<div class="media-body">';
		    $marker['infowindow_content'] .= '<h4 class="media-heading">'.$value->nama_olahraga.'</h4>';
		    $marker['infowindow_content'] .= '<p>Alamat : '.$value->alamat.'</p>';
			// $marker['infowindow_content'] .= "<p>Jam Buka : ".$value->jam_buka."</p>";
		    $marker['infowindow_content'] .= '<p>No Telpon : '.$value->no_telpon.'</p>';
		    $marker['infowindow_content'] .= '<p>Harga : Rp.'.number_format($value->harga).'</p><br>';
		    $marker['infowindow_content'] .= '<a href="'.base_url('home/lokasi/'.$value->id_olahraga).'" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Detail</a>';
			$marker['infowindow_content'] .= '<button class="btn btn-success btn-sm" onclick="makeRute('.$value->latitude.','.$value->longitude.')"><i class="fa fa-location-arrow"></i> Rute</button>';
			$marker['infowindow_content'] .= '<a href="'.base_url('bandingkan/'.$value->id_olahraga.'/0').'" class="btn btn-success btn-sm"><i class="fa fa-exchange"></i> Bandingkan</a>';
			$marker['infowindow_content'] .= '</div>';
		    $marker['infowindow_content'] .= '</div>';
		    $marker['icon'] = base_url('assets/icon/'.$value->icon);
		    $this->googlemaps->add_marker($marker);
		    endforeach;
		    //end perulangan data
			//tampilan data marker map
			$this->googlemaps->initialize($config);
			//menampilkan maker ke map
		    $data = array('title' => 'GIS Tempat Olahraga '.$setting->nama_wilayah,
		    	'title2'=> $setting->nama_wilayah,
		                    'isi'	=>	'v_home',
							'kategori' => $kategori,
		                    'map' =>  $this->googlemaps->create_map()
		);
		    $this->load->view('layout/v_wrapper', $data, FALSE);

		}
		    
	}

	//tampil semua data tempat olahraga dari database Ke tabel
	public function listolahraga()
	{
		$olahraga = $this->m_olahraga->lists();
		$map = $this->googlemaps->create_map();
		$setting = $this->m_setting->list_setting();
		$data = array(
			'title' => 'GIS Tempat Olahraga ' . $setting->nama_wilayah,
			'title2' => $setting->nama_wilayah,
			'isi'	=>	'v_listolahraga',
			'olahraga'	=>	$olahraga,
			'map'		=>	$map
		);
		$this->load->view('layout/v_wrapper', $data, false);
	}

	public function about()
	{
		$map = $this->googlemaps->create_map();
		$setting = $this->m_setting->list_setting();
		$data = array(
			'title' => 'GIS Tempat Olahraga ' . $setting->nama_wilayah,
			'title2' => $setting->nama_wilayah,
			'map'       => $map,
			'isi'       => 'v_about'
		);
		$this->load->view('layout/v_wrapper', $data, false);
	}

	public function lokasi($id_olahraga)
	{
		$olahraga = $this->m_olahraga->detail($id_olahraga);
		$this->load->library("googlemaps");
		$config['center'] = "$olahraga->latitude, $olahraga->longitude";
		$config['zoom'] = "18";
		$this->googlemaps->initialize($config);

		//tampil semua data tempat olahraga dari database 
		$marker = array();
		$marker['animation'] = 'DROP';
		$marker['position'] = "$olahraga->latitude, $olahraga->longitude";
		$marker['infowindow_content'] = '<div class="media" style="width:300px;">';
		$marker['infowindow_content'] .= '<div class="media-left">';
		$marker['infowindow_content'] .= '</div>';
		$marker['infowindow_content'] .= '<div class="media-body">';
		$marker['infowindow_content'] .= '<h5 class="media-heading">' . $olahraga->nama_olahraga . '</h5>';
		$marker['infowindow_content'] .= '<a>' . $olahraga->alamat . '</a><br>';
		$marker['infowindow_content'] .= '<a>' . $olahraga->no_telpon . '</a><br>';
		//$marker['infowindow_content'] .= '<a>' . $olahraga->jam_buka . '</a><br>';
		$marker['infowindow_content'] .= '<a>' . $olahraga->deskripsi . '</a><br>';
		$marker['infowindow_content'] .= '<a>Rp.' . $olahraga->harga . '</a><br>';
		$marker['infowindow_content'] .= '</div>';
		$marker['infowindow_content'] .= '</div>';
		$marker['icon'] = base_url("assets/icon/" . $olahraga->icon);
		$marker['icon_size'] = '48,48';
		$marker['icon_scaledSize'] = '48,48';

		$this->googlemaps->add_marker($marker);
		//end perulangan data
		//tampilan data marker map
		$this->googlemaps->initialize($config);

		$foto = $this->m_gallery->foto($id_olahraga);
		$setting = $this->m_setting->list_setting();
		$data = array(
			'title' => 'GIS Tempat Olahraga ' . $setting->nama_wilayah,
			'title2' => $setting->nama_wilayah,
			'map' => $this->googlemaps->create_map(),
			'isi'       => 'v_lokasi',
			'foto'		=> $foto,
			'olahraga' => $olahraga
		);
		$this->load->view('layout/v_wrapper', $data, false);
	}

	public function bandingkan()
	{
		$map = $this->googlemaps->create_map();
		$setting = $this->m_setting->list_setting();
		$olahraga = $this->m_olahraga->detail($this->uri->segment(2));
		$banding = $this->m_olahraga->detail($this->uri->segment(3));
		$select = $this->db->query("SELECT * from tbl_olahraga where id_kategori = '$olahraga->id_kategori'");

		$data = array(
			'title' 	=> 'GIS Tempat Olahraga ' . $setting->nama_wilayah,
			'title2' 	=> $setting->nama_wilayah,
			'map'       => $map,
			'isi' 		=> 'v_banding',
			'banding' 	=> $banding,
			'select' 	=> $select,
			'olahraga' 	=> $olahraga
		);

		$this->load->view('layout/v_wrapper', $data, false);
	}

	public function add_polyline()
	{
		$setting = $this->m_setting->list_setting();
		//tampilan awal view map
		$this->load->library("googlemaps");
		$config['center'] = "$setting->latitude,$setting->longitude";
		$config['zoom'] = "$setting->zoom";
		$this->googlemaps->initialize($config);
		//tampil semua data sekolah dari database 
		$olahraga = $this->m_olahraga->lists();
		foreach ($olahraga as $key => $value) : //perulangan data
			$marker = array();
			$marker['animation'] = 'DROP';
			$marker['position'] = "$value->latitude, $value->longitude";
			$marker['infowindow_content'] = '<div class="media" style="width:400px;">';
			$marker['infowindow_content'] .= '<div class="media-left">';
			$marker['infowindow_content'] .= '<img src="' . base_url("assets/gambar_olahraga/{$value->gambar_olahraga}") . '" class="media-object" style="width:150px">';
			$marker['infowindow_content'] .= '</div>';
			$marker['infowindow_content'] .= '<div class="media-body">';
			$marker['infowindow_content'] .= '<h4 class="media-heading">' . $value->nama_olahraga . '</h4>';
			$marker['infowindow_content'] .= '<p>Alamat : ' . $value->alamat . '</p>';
			$marker['infowindow_content'] .= '<p>No Telpon : ' . $value->no_telpon . '</p>';
			$marker['infowindow_content'] .= '<p>Jam Buka : '.$value->jam_buka.'</p>';
			$marker['infowindow_content'] .= '<p>Harga : Rp.' . number_format($value->harga) . '</p><br>';
			$marker['infowindow_content'] .= '<a href="' . base_url('home/lokasi/' . $value->id_olahraga) . '" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Detail</a>';
			$marker['infowindow_content'] .= '<button class="btn btn-success btn-sm" onclick="makeRute()"><i class="fa fa-list"></i> Rute</button>';
			$marker['infowindow_content'] .= '<a href="' . base_url('bandingkan/' . $value->id_olahraga . '/0') . '" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Bandingkan</a>';
			$marker['infowindow_content'] .= '</div>';
			$marker['infowindow_content'] .= '</div>';
			$marker['icon'] = base_url('assets/icon/' . $value->icon);
			$this->googlemaps->add_marker($marker);
		endforeach;
		//end perulangan data
		//tampilan data marker map
		$this->googlemaps->initialize($config);
		//menampilkan maker ke map
		$data = array(
			'title' => 'GIS Tempat Olahraga ' . $setting->nama_wilayah,
			'title2' => $setting->nama_wilayah,
			'isi'	=>	'v_home',
			'map' =>  $this->googlemaps->create_map()
		);
		$this->load->view('layout/v_wrapper', $data, FALSE);
	}
}


/* End of file Controllername.php */
