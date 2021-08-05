<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_gis extends CI_Model {

    
    public function __construct()
    {
        parent::__construct();
        //Do your magic here
        $this->load->database();
    }

    //menampilka seluruh data olahraga
    public function tampildata()
	{
		$this->db->select('*');
		$this->db->from('tbl_olahraga');
		$query=$this->db->get();
		return $query->result();
	}

    //tambah data olahraga
     public function tambah($data)
     {
       $this->db->insert('tbl_olahraga',$data);
     }

      //hapus data olahraga
     public function delete($data)
     {
       $this->db->where('id',$data['id']);
       $this->db->delete('tbl_olahraga',$data);
     }

     //detail olahraga
    public function detail($id)
    {
        $this->db->select('*');
        $this->db->from('tbl_olahraga');
        $this->db->where('id', $id);
        $query=$this->db->get();
        return $query->row();
    }

    //merudab data olahraga
    public function update($data)
    {
        $this->db->where('id', $data['id']);
        $this->db->update('tbl_olahraga',$data);
    }

}

/* End of file M_gis.php */

