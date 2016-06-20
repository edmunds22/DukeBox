<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Artist extends CI_Controller {

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

	public function get()
	{

		$this->load->model('artist_model');

		$artist_info = $this->artist_model->getArtists();
 
		//print_r($artist_info);die();

		$artists = ['artists' => $artist_info];

		echo json_encode($artists); 
	}

	public function getLivePlaylist(){


		$this->load->model('playlist_model');

		$playlist_info = $this->playlist_model->getPlaylist('live'); 

		//print_r();die();

		echo json_encode($playlist_info); 


	}

	public function getArtistInfo($id){

		$this->load->model('artist_model');

		$artist_info = $this->artist_model->getArtistInfo($id);
 
		//print_r($artist_info);die();

		$artistInfo = ['artistInfo' => $artist_info];

		echo json_encode($artistInfo); die();

		echo '
{
"artistInfo": 
  {
    "name" : "Artist 6",
    "albumCount" : 7,
	"albums" : [
		{
			"title" : "testest",
			"albumId" : 234234,
			"year" : 2014,
			"trackCount" : 11,
			"tracks" : [
				{
					"title" : "track 1 title",
					"length" : 2.32
				},
				{
					"title" : "trackk2",
					"length" : 3.09
				}
			]
		},
		{
			"title" : "anderem",
			"albumId" : 345345,
			"year" : 2012,
			"trackCount" : 6,
			"tracks" : [
				{
					"title" : "track 52 title",
					"length" : 2.32
				},
				{
					"title" : "trac25252",
					"length" : 3.09
				}
			]
		}
	],
    "miscRecCount" : 24
  }

}
		';
		die();

	}
}
