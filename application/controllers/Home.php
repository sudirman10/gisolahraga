<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{


	public function __construct()
	{
		parent::__construct();
		$this->load->library(array("googlemaps"));
		$this->load->model('m_penginapan');
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
		} else {
			$config['center'] = "$setting->latitude,$setting->longitude";
		}

		if (isset($_GET['ownlatitude']) && isset($_GET['ownlongitude']) && isset($_GET['tujuanlatitude']) && isset($_GET['tujuanlongitude'])) {


			
			
			$config['directions'] = TRUE;
			$config['directionsMode'] = "DRIVING";
			$config['directionsStart'] = $_GET['ownlatitude'].','.$_GET['ownlongitude'];
			$config['directionsEnd'] = $_GET['tujuanlatitude'].','.$_GET['tujuanlongitude'];
			$config['directionsDivID'] = 'directionsDiv';
		
		}

		

		    $config['zoom'] = "$setting->zoom";
		    $this->googlemaps->initialize($config);
		    //tampil semua data sekolah dari database 
		    $penginapan = $this->m_penginapan->lists();
		    foreach($penginapan as $key => $value) ://perulangan data
		    $marker = array();
		    $marker['animation'] = 'DROP';
		    $marker['position'] = "$value->latitude, $value->longitude";
		    $marker['infowindow_content'] = '<div class="media" style="width:400px;">';
		    $marker['infowindow_content'] .= '<div class="media-left">';
		    $marker['infowindow_content'] .= '<img src="'.base_url("assets/gambar_penginapan/{$value->gambar_penginapan}").'" class="media-object" style="width:150px">';
		    $marker['infowindow_content'] .= '</div>';
		    $marker['infowindow_content'] .= '<div class="media-body">';
		    $marker['infowindow_content'] .= '<h4 class="media-heading">'.$value->nama_penginapan.'</h4>';
		    $marker['infowindow_content'] .= '<p>Alamat : '.$value->alamat.'</p>';
		    $marker['infowindow_content'] .= '<p>No Telpon : '.$value->no_telpon.'</p>';
		    $marker['infowindow_content'] .= '<p>Harga : Rp.'.number_format($value->harga).'/Bulan</p><br>';
		    $marker['infowindow_content'] .= '<a href="'.base_url('home/lokasi/'.$value->id_penginapan).'" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Detail</a>';
			$marker['infowindow_content'] .= '<button class="btn btn-success btn-sm" onclick="makeRute('.$value->latitude.','.$value->longitude.')"><i class="fa fa-list"></i> Rute</button>';
			$marker['infowindow_content'] .= '<a href="'.base_url('bandingkan/'.$value->id_penginapan.'/0').'" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Bandingkan</a>';
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
		                    'map' =>  $this->googlemaps->create_map()
		);
		    $this->load->view('layout/v_wrapper', $data, FALSE);
	}

	//tampil semua data sekolah dari database Ke tabel
	public function listpenginapan()
	{
		$penginapan = $this->m_penginapan->lists();
		$map = $this->googlemaps->create_map();
		$setting = $this->m_setting->list_setting();
		$data = array(
			'title' => 'GIS Tempat Olahraga ' . $setting->nama_wilayah,
			'title2' => $setting->nama_wilayah,
			'isi'	=>	'v_listpenginapan',
			'penginapan'	=>	$penginapan,
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

	public function lokasi($id_penginapan)
	{
		$penginapan = $this->m_penginapan->detail($id_penginapan);
		$this->load->library("googlemaps");
		$config['center'] = "$penginapan->latitude, $penginapan->longitude";
		$config['zoom'] = "18";
		$this->googlemaps->initialize($config);
		//tampil semua data tempat olahraga dari database 

		$marker = array();
		$marker['animation'] = 'DROP';
		$marker['position'] = "$penginapan->latitude, $penginapan->longitude";
		$marker['infowindow_content'] = '<div class="media" style="width:300px;">';
		$marker['infowindow_content'] .= '<div class="media-left">';
		$marker['infowindow_content'] .= '</div>';
		$marker['infowindow_content'] .= '<div class="media-body">';
		$marker['infowindow_content'] .= '<h5 class="media-heading">' . $penginapan->nama_penginapan . '</h5>';
		$marker['infowindow_content'] .= '<a>' . $penginapan->alamat . '</a><br>';
		$marker['infowindow_content'] .= '<a>' . $penginapan->no_telpon . '</a><br>';
		$marker['infowindow_content'] .= '<a>' . $penginapan->deskripsi . '</a><br>';
		$marker['infowindow_content'] .= '<a>Rp.' . $penginapan->harga . '/Bulan</a><br>';
		$marker['infowindow_content'] .= '</div>';
		$marker['infowindow_content'] .= '</div>';
		$marker['icon'] = base_url("assets/icon/" . $penginapan->icon);
		$marker['icon_size'] = '48,48';
		$marker['icon_scaledSize'] = '48,48';

		$this->googlemaps->add_marker($marker);

		//end perulangan data
		//tampilan data marker map
		$this->googlemaps->initialize($config);

		$foto = $this->m_gallery->foto($id_penginapan);
		$setting = $this->m_setting->list_setting();
		$data = array(
			'title' => 'GIS Tempat Olahraga ' . $setting->nama_wilayah,
			'title2' => $setting->nama_wilayah,
			'map' => $this->googlemaps->create_map(),
			'isi'       => 'v_lokasi',
			'foto'		=> $foto,
			'penginapan' => $penginapan
		);
		$this->load->view('layout/v_wrapper', $data, false);
	}

	public function bandingkan()
	{
		$map = $this->googlemaps->create_map();
		$setting = $this->m_setting->list_setting();
		$penginapan = $this->m_penginapan->detail($this->uri->segment(2));

		$data = array(
			'title' => 'GIS Sarana Olahraga ' . $setting->nama_wilayah,
			'title2' => $setting->nama_wilayah,
			'map'       => $map,
			'isi'       => 'v_banding',



			'penginapan' => $penginapan
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
		$penginapan = $this->m_penginapan->lists();
		foreach ($penginapan as $key => $value) : //perulangan data
			$marker = array();
			$marker['animation'] = 'DROP';
			$marker['position'] = "$value->latitude, $value->longitude";
			$marker['infowindow_content'] = '<div class="media" style="width:400px;">';
			$marker['infowindow_content'] .= '<div class="media-left">';
			$marker['infowindow_content'] .= '<img src="' . base_url("assets/gambar_penginapan/{$value->gambar_penginapan}") . '" class="media-object" style="width:150px">';
			$marker['infowindow_content'] .= '</div>';
			$marker['infowindow_content'] .= '<div class="media-body">';
			$marker['infowindow_content'] .= '<h4 class="media-heading">' . $value->nama_penginapan . '</h4>';
			$marker['infowindow_content'] .= '<p>Alamat : ' . $value->alamat . '</p>';
			$marker['infowindow_content'] .= '<p>No Telpon : ' . $value->no_telpon . '</p>';
			$marker['infowindow_content'] .= '<p>Harga : Rp.' . number_format($value->harga) . '/Bulan</p><br>';
			$marker['infowindow_content'] .= '<a href="' . base_url('home/lokasi/' . $value->id_penginapan) . '" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Detail</a>';
			$marker['infowindow_content'] .= '<button class="btn btn-success btn-sm" onclick="makeRute()"><i class="fa fa-list"></i> Rute</button>';
			$marker['infowindow_content'] .= '<a href="' . base_url('bandingkan/' . $value->id_penginapan . '/0') . '" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Bandingkan</a>';
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
