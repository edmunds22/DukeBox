<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Playlist_model extends CI_Model {

        public function __construct()
        {
                $this->load->database();
        }


        public function getPlaylist($id){

                if($id == 'live'){

                        $meta = array(
                                        'list_id' => 'Live',
                                        'name' => 'Live Playlist'
                        ); 


                        $tracks = $this->db->query('
                                SELECT a.trk_id, \'live\' as list_id, b.title FROM live_tracks a 
                                JOIN lib b on a.trk_id = b.trk_id
                        ', [$id]);
                                

                }else{

                        $meta = $this->db->query('SELECT * FROM list WHERE list_id = ?', array($id)); 
                        $meta = $meta->row_array();

                        $tracks = $this->db->query('
                                SELECT a.trk_id, a.list_id, b.title FROM list_tracks a 
                                JOIN lib b on a.trk_id = b.trk_id
                                WHERE a.list_id = ?
                        ', [$id]);

                }

        	//$tracks = $tracks->row_array();

 
        	$playlist = [
				'playlist' => [
					'id' => $id, 
					'title' => $meta['name'],
					'trackCount' => $tracks->num_rows(),
					'tracks' => $tracks->result_array()
				]
			];

        	return $playlist;
        }

        
}