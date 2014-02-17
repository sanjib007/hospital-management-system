<?php
class Userinfo_model extends CI_Model {
    
    public function get_user_list() {
        $query = $this->db->get('admin_user');
        return $query->result();
    }
}