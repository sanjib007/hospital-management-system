<?php

class User extends CI_Controller{
    public function __construct() {
        parent::__construct();
        $this->load->model('login_model');
    }
    public function index(){
        $this->login_model->id = $this->session->userdata('id');
        $data['info'] = $this->login_model->getAUserInfo();
        $this->load->view('profile',$data);
    }
    public function profile_edit(){
        $this->login_model->id = $this->session->userdata('id');
        $data['info'] = $this->login_model->getAUserInfo();
        $this->load->view('edit_profile',$data);
    }
}
