<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_penginapan extends CI_Model {

	public function lists()
	{
		$this->db->select('*');
		$this->db->from('tbl_penginapan');
		$this->db->join('tbl_kategori','tbl_kategori.id_kategori=tbl_penginapan.id_kategori','LEFT');
		$this->db->order_by('id_penginapan','desc');
		$query=$this->db->get();
		return $query->result();
	}	

	//add
     public function add($data)
     {
       $this->db->insert('tbl_penginapan',$data);
     }

     public function detail($id_penginapan)
     {
     	$this->db->select('*');
        $this->db->from('tbl_penginapan');
        $this->db->join('tbl_kategori', 'tbl_kategori.id_kategori = tbl_penginapan.id_kategori', 'left');
        $this->db->where('id_penginapan', $id_penginapan);
        $query=$this->db->get();
        return $query->row();
     }

     //edit
     public function edit($data)
     {
       $this->db->where('id_penginapan',$data['id_penginapan']);
       $this->db->update('tbl_penginapan',$data);
     }

     //hapus data sekolah
	public function delete($data)
	{
		$this->db->where('id_penginapan', $data['id_penginapan']);
		$this->db->delete('tbl_penginapan',$data);
	}

}

/* End of file M_penginapan.php */
/* Location: ./application/models/M_penginapan.php */