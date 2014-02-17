<?php
class Userinfo extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('userinfo_model');
    }

    public function index() {        
        $data['userlist'] = $this->userinfo_model->get_user_list();
        $this->load->view('admin_view/show_user', $data);        
    }
}
