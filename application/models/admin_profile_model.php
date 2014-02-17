<?php
class Admin_profile_model extends CI_Model{
    public $id;
    public $fname;
    public $lname;
    public $birthday;
    public $occupation;
    public $email;
    public $mobile;
    public $present_address;
    public $permanent_address;
    public $type;
    public $password;
    public $image_thurmnail;
    public $image_avater;    
    
    public function insert_admin() {
        $data = array(
            'fname' => $this->fname,
            'lname' => $this->lname,
            'birthday' => $this->birthday,
            'occupation' => $this->occupation,
            'email' => $this->email,
            'mobile' => $this->mobile,
            'present_address' => $this->present_address,
            'permanent_address' => $this->permanent_address,
            'type' => $this->type,
            'password' => $this->password,
            'image_avater' => $this->image_avater,
            'image_thurmnail' => $this->image_thurmnail            
        );
        $this->db->insert('admin_user', $data);
    }
    
    public function get_admin_type() {        
        $query = $this->db->get('admin_type');
        return $query->result();
    }
    
    
    
    public function checkEmail() {
        $this->db->where('email', $this->email); 
        $query = $this->db->get('admin_user');
        if ($query->num_rows() > 0){
            return true;
        }else{
            return false;
        }
    }
   
}
