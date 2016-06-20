<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class      Artist_model extends CI_Model {

        public function __construct() 
        {
                $this->load->database();
        }


        public function getArtists($id=null){

                $sql_where = '';

                if($id <> null){
                
                        $sql_where = 'WHERE art.art_id = ?';

                }

                $meta = $this->db->query('SELECT *, 
                	art_detail(art.art_id, \'cds\') as \'albums\', 
                	art_detail(art.art_id, \'misc_trk\') as \'misc_rec\' 
                        FROM art
                        '.$sql_where.'
                        ORDER BY name
                        ', [$id]); 
                return $meta->result_array();

        }

        public function getArtistInfo($id){

                $meta = $this->getArtists($id);
                $this->db->query("SET @@group_concat_max_len = 2048;");
                //echo 'test';die(); 
                $albums = $this->db->query("
                       
                        select a.*, (

                                        SELECT
                                        GROUP_CONCAT(lib.trk_id, '>>>>', lib.title, '>>>>', lib.length_sec separator '----NXT_TRK----')
                                        FROM
                                        lib
                                        WHERE album = a.alb_id
                                        -- WHERE art_id is not null 
                                        -- AND album = a.alb_id


                        ) as 'tracks'

                        from alb a
                        where a.artist_id = ?

                        ", [$id]); 
                $albums = $albums->result_array();



                for($i=0;$i<count($albums);$i++){

                       $alb_tracks = explode('----NXT_TRK----', $albums[$i]['tracks']);

                        //echo 'alb: '.$albums[$i]['title'].'<br>';
                       
                        
                        

                       foreach($alb_tracks as $alb_trk){

                               $tracks = explode('>>>>', $alb_trk);

                                
                               $albums[$i]['tracks_arr'][] = array(
                                        'id' => @$tracks[0],
                                        'title' => @$tracks[1],
                                        'length' => @$tracks[2]
                                );

                                
                       }

                        //print_r($albums[$i]['tracks_arr']);
                       $albums[$i]['tracks'] = $albums[$i]['tracks_arr'];
                       unset($albums[$i]['tracks_arr']);
                       //echo '<br><br>';


                }
//die();

                $artist_info = array(

                        'id' => $meta[0]['art_id'],
                        'name' => $meta[0]['name'],
                        'albumCount' => $meta[0]['albums'],
                        'miscRecCount' => $meta[0]['misc_rec'],
                        'albums' => $albums

                );


                //print_r($artist_info);die();
                return $artist_info;
        }

        
}