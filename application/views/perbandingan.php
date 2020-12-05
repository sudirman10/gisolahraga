<?php
//menggabungkan semua bagian layout menjadi satu
//if($this->session->userdata('akses')=='3'){
			require_once('layout/v_head.php');
			require_once('layout/v_header.php');
			require_once('layout/v_nav.php');
			require_once('layout/v_content.php');
			require_once('layout/v_footer.php');
			
//}else{
	//	$this->session->set_flashdata('warning', 'Anda Belum Login');
    //       redirect(base_url('login'),'refresh');
//}
