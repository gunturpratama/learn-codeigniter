<?php 

Class Mahasiswa_model extends CI_Model {


	public function getAllMahasiswa(){
		return $this->db->get('mahasiswa')->result_array();
	}
	public function tambahDataMahasiswa(){
		$data = [
			"nama" => $this->input->post('nama',TRUE),
			"nrp" => $this->input->post('nrp',TRUE),
			"email" => $this->input->post('email',TRUE),
			"jurusan" => $this->input->post('jurusan',TRUE),
		];
		$this->db->set($data);
		$this->db->insert('mahasiswa');
	}

	public function ubahDataMahasiswa(){
		$data = [
			"nama" => $this->input->post('nama',TRUE),
			"nrp" => $this->input->post('nrp',TRUE),
			"email" => $this->input->post('email',TRUE),
			"jurusan" => $this->input->post('jurusan',TRUE),
		];
		$this->db->where('id',$this->input->post('id'));
		$this->db->update('mahasiswa',$data);
	}
	public function hapusDataMahasiswa($id){
		//$this->db->where('id',$id);
		$this->db->delete('mahasiswa',['id' => $id]);
	}
	public function getMahasiswaById($id){
		return $this->db->get_where('mahasiswa',[
			'id' => $id,
		])->row_array();
	}

	public function cariDataMahasiswa(){
		$key = $this->input->post('keyword',TRUE);
		$this->db->like('nama',$key);
		$this->db->or_like('jurusan',$key);
		$this->db->or_like('nrp',$key);
		$this->db->or_like('email',$key);
		return $this->db->get('mahasiswa')->result_array();
	}
}
