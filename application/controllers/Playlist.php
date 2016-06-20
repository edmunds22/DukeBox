<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Playlist extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->view('welcome_message');
	}

	public function getPlaylist($id)
	{

		$this->load->model('playlist_model');

		$playlist_info = $this->playlist_model->getPlaylist($id);

		//print_r();die();

		echo json_encode($playlist_info); 
	}

	public function getLivePlaylist(){


		$this->load->model('playlist_model');

		$playlist_info = $this->playlist_model->getPlaylist('live'); 

		//print_r();die();

		echo json_encode($playlist_info); 


	}
}
