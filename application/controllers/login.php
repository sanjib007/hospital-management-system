<?php

class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('login_model');
    }

    public function index() {
        $this->load->view('login');
    }

    public function loginChecker() {
        $this->login_model->email = $this->input->post("email");
        $this->login_model->password = $this->input->post("password");
        $error = "";
        if ($info = $this->login_model->getAAdmin()) {
            $error = FALSE;
            $newdata = array(
                'email' => $info->email,
                'id' => $info->id,
                'avater' => $info->image_avater,
                'type' => $info->type,
                'logged_in' => TRUE
            );

            $this->session->set_userdata($newdata);
        } else {
            $error = TRUE;
        }
        $msg = array("error" => $error);
        echo json_encode($msg);
    }

    public function logout() {
        $this->session->unset_userdata();
        $this->session->sess_destroy();
        redirect('/login/', 'refresh');
    }

}
