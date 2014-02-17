<?php

class Login_model extends CI_Model {

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
    public $status;
    public $join_date;
    public $image_thurmnail;
    public $image_avater;

    public function getAAdmin() {
        $query = $this->db->get_where('admin_user', array('email' => $this->email, 'password' => $this->password));
        if ($query->num_rows() > 0) {
            return $query->row();
        } else {
            return false;
        }
    }

    public function getAUserInfo() {
        $this->db->where('id', $this->id);
        $query = $this->db->get('admin_user');
        return $query->row();
    }

    public function checkEmail() {
        $this->db->where('id !=', $this->session->userdata('id'));
        $this->db->where('email', $this->email);
        $query = $this->db->get('admin_user');
        if ($query->num_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }

    public function updateBasic() {
        $data = array(
            'fname' => $this->fname,
            'lname' => $this->lname,
            'birthday' => $this->birthday,
            'occupation' => $this->occupation,
            'email' => $this->email,
            'mobile' => $this->mobile,
            'present_address' => $this->present_address,
            'permanent_address' => $this->permanent_address
        );

        $this->db->where('id', $this->session->userdata('id'));
        $this->db->update('admin_user', $data);
    }
    public function checkPssword(){
        $this->db->where('id', $this->session->userdata('id'));
        $this->db->where('password', $this->password);
        $query = $this->db->get('admin_user');
        if ($query->num_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }
    public function updatePassword() {
        $data = array(
            'password' => $this->password
        );

        $this->db->where('id', $this->session->userdata('id'));
        $this->db->update('admin_user', $data);
    }
    public function updateImage(){
       $data = array(
            'image_thurmnail' => $this->image_thurmnail,
           'image_avater' => $this->image_avater
        );

        $this->db->where('id', $this->session->userdata('id'));
        $this->db->update('admin_user', $data); 
    }

}
