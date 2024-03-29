<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
        $this->load->library(array("googlemaps"));
		$this->load->model("m_gis");
        $this->load->model('m_olahraga');
        $this->load->model('m_setting');
    }
    
    public function index()
    {
        $setting=$this->m_setting->list_setting();
            //tampilan awal view map
        $this->load->library("googlemaps");
        $config['center'] = "$setting->latitude,$setting->longitude";
        $config['zoom'] = "$setting->zoom";
        $this->googlemaps->initialize($config);
        //tampil semua data tempat olahraga dari database 
        $olahraga = $this->m_olahraga->lists();
        foreach($olahraga as $key => $value) ://perulangan data
        $marker = array();
        $marker['animation'] = 'DROP';
        $marker['position'] = "$value->latitude, $value->longitude";
        $marker['infowindow_content'] = '<div class="media" style="width:400px;">';
        $marker['infowindow_content'] .= '<div class="media-left">';
        $marker['infowindow_content'] .= '<img src="'.base_url("assets/gambar_olahraga/{$value->gambar_olahraga}").'" class="media-object" style="width:150px">';
        $marker['infowindow_content'] .= '</div>';
        $marker['infowindow_content'] .= '<div class="media-body">';
        $marker['infowindow_content'] .= '<h4 class="media-heading">'.$value->nama_olahraga.'</h4>';
        $marker['infowindow_content'] .= '<p>Alamat : '.$value->alamat.'</p>';
        $marker['infowindow_content'] .= '<p>No Telpon : '.$value->no_telpon.'</p>';
        $marker['infowindow_content'] .= '<p>Harga : Rp.'.$value->harga.'</p><br>';
        $marker['infowindow_content'] .= '<a href="'.base_url('home/lokasi/'.$value->id_olahraga).'" class="btn btn-success btn-sm"><i class="fa fa-list"></i> Detail</a>';
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
                        'title2'=>'Pemetaan',
                        'isi'   =>  'admin/v_home',
                        'map' =>  $this->googlemaps->create_map()
    );
        $this->load->view('admin/layout/v_wrapper', $data, FALSE);
    }

    public function listolahraga()
    {
        $olahraga = $this->m_gis->tampildata();
        $map=$this->googlemaps->create_map();
        $setting=$this->m_setting->list_setting();
        $data = array('title' => 'GIS Tempat Olahraga'.$setting->nama_wilayah,
                        'isi'   =>  'v_list',                 
                        'olahraga'    =>  $olahraga,
                        'map'       =>  $map
                    );
        $this->load->view('layout/v_wrapper2', $data,false);
    }

    
}

/* End of file Admin.php */

