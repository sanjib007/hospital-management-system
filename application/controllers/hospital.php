<?php
class Hospital extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function error() {
        $this->load->view('404');
    }

    public function index() {
        if($this->session->userdata('email')){
            $this->load->view('main_page');
        }else{
            $this->load->view('login');
        }
        
    }

}
