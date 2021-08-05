<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_olahraga extends CI_Model {

	public function lists()
	{
		$this->db->select('*');
		$this->db->from('tbl_olahraga');
		$this->db->join('tbl_kategori','tbl_kategori.id_kategori=tbl_olahraga.id_kategori','LEFT');
		$this->db->order_by('id_olahraga','desc');
		$query=$this->db->get();
		return $query->result();
	}	

	//add
     public function add($data)
     {
       $this->db->insert('tbl_olahraga',$data);
     }

     public function detail($id_olahraga)
     {
     	$this->db->select('*');
        $this->db->from('tbl_olahraga');
        $this->db->join('tbl_kategori', 'tbl_kategori.id_kategori = tbl_olahraga.id_kategori', 'left');
        $this->db->where('id_olahraga', $id_olahraga);
        $query=$this->db->get();
        return $query->row();
     }

		 public function filter($id_kategori)
     {
     	$this->db->select('*');
        $this->db->from('tbl_olahraga');
        $this->db->join('tbl_kategori', 'tbl_kategori.id_kategori = tbl_olahraga.id_kategori', 'left');
        $this->db->where('tbl_olahraga.id_kategori', $id_kategori);
        $query=$this->db->get();
        return $query->row();
     }

     //edit
     public function edit($data)
     {
       $this->db->where('id_olahraga',$data['id_olahraga']);
       $this->db->update('tbl_olahraga',$data);
     }

     //hapus data tempat olahraga
	public function delete($data)
	{
		$this->db->where('id_olahraga', $data['id_olahraga']);
		$this->db->delete('tbl_olahraga',$data);
	}

}

/* End of file M_olahraga.php */
/* Location: ./application/models/M_olahraga.php */
