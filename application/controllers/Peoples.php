<?php 

Class Peoples extends CI_Controller {

	// public function __construct()
	// {
	// 	parent::__construct();
	// 	$this->load->model('Mahasiswa_model');
	// 	$this->load->helper('form');
	// 	$this->load->library('form_validation');
	// }

	public function index()
	{
		$data['title'] = 'List Of Peoples';
		$this->load->model('Peoples_model','peoples');
		// Load library
		$this->load->library('pagination');

		// Get Data keyword
		if ($this->input->post('submit')) {
			$data['key'] = $this->input->post('key');
			$this->session->set_userdata('keyword',$data['key']);
		} else {
			$data['key'] = $this->session->userdata('keyword');
		}
		// base url
		$this->db->like('name',$data['key']);
		$this->db->from('peoples');
		$config['total_rows'] = $this->db->count_all_results();
		$data['total_rows'] = $config['total_rows'];
		$config['per_page'] = 8;
		
		// initialize config
		$this->pagination->initialize($config);
		$data['start'] = $this->uri->segment(3);
		$data['peoples'] = $this->peoples->getPeoples($config['per_page'],$data['start'],$data['key']);
		$this->load->view('templates/header',$data);
		$this->load->view('peoples/index',$data);
		$this->load->view('templates/footer');
	}

}
